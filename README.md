# EEG Seizure Detection Using Random Forest and Verilog RTL

## 1. Project Overview

This project implements an EEG-based seizure detection system using a **Random Forest machine learning classifier** and converts the trained model into **Verilog RTL** for hardware-oriented evaluation using Xilinx Vivado.

The project combines software-based machine learning with digital hardware design. EEG signal data is processed in Python, relevant features are selected, and a Random Forest classifier predicts whether a sample belongs to the seizure or non-seizure class. The trained classifier is then represented as RTL logic and evaluated through simulation and synthesis.

The main objective is to explore how a machine learning model can be translated into digital hardware for potential real-time EEG classification.

> **Note:** This is a research and educational prototype. It is not a clinically validated seizure detection device.

## 2. Objectives

- Develop a Random Forest classifier for EEG seizure detection.
- Preprocess EEG dataset features and select the most relevant features.
- Evaluate classification performance using standard machine learning metrics.
- Convert the trained decision trees into Verilog RTL.
- Verify RTL functionality using a Verilog testbench.
- Simulate and synthesize the design in Xilinx Vivado.
- Analyze hardware resource utilization and estimated power consumption.

## 3. System Architecture

The project follows this workflow:

```text
EEG Dataset (CSV)
        |
        v
Data Loading and Preprocessing
        |
        v
Feature Selection
        |
        v
Random Forest Training
        |
        v
Model Evaluation
        |
        v
Trained Model Export
        |
        v
Decision Tree to Verilog RTL
        |
        v
Verilog Testbench Verification
        |
        v
Vivado Behavioral Simulation
        |
        v
RTL Synthesis and Hardware Analysis
```

## 4. Dataset

The project uses an EEG dataset obtained from Kaggle.

**Dataset:** EEG Dataset

**Source:** https://www.kaggle.com/datasets/subirbiswas19/eeg-dataset

The dataset contains EEG samples represented by multiple numerical features and a target label.

| Target label | Meaning |
|---|---|
| `0` | Non-seizure |
| `1` | Seizure |

The dataset contains a large number of input features, so feature selection is used to reduce the dimensionality before model training.

**Important:** Verify the exact number of samples, features, and class distribution against the dataset version used in your final experiment.

## 5. Technologies and Tools

| Tool / Technology | Purpose |
|---|---|
| Python | Data processing and model development |
| Google Colab / Jupyter Notebook | Model training and evaluation |
| NumPy and pandas | Numerical computation and data handling |
| scikit-learn | Feature selection, Random Forest training, and evaluation |
| Joblib / JSON | Model and parameter export |
| Verilog HDL | Hardware description of the classifier |
| Xilinx Vivado | RTL simulation, synthesis, and design analysis |

## 6. Methodology

### Step 1: Data Loading

The EEG dataset is loaded from a CSV file using pandas. The feature columns are separated from the target label.

### Step 2: Data Preprocessing

The data is checked for missing values, incorrect data types, and inconsistencies. The input features and target labels are prepared for machine learning.

A training and validation split is used to evaluate the classifier on samples not used for fitting the model.

### Step 3: Feature Selection

Feature selection reduces the number of inputs that need to be processed by the classifier.

The project workflow uses `SelectKBest` with the ANOVA F-test (`f_classif`) to select 16 features.

This reduces the model input from the original high-dimensional EEG representation to a smaller set of selected features.

### Step 4: Random Forest Training

Random Forest is an ensemble learning algorithm that combines predictions from multiple decision trees.

Each tree evaluates a sequence of feature comparisons. The tree outputs are combined to estimate the probability that an EEG sample belongs to the seizure class.

The model is trained using the selected EEG features.

### Step 5: Model Evaluation

The classifier is evaluated using metrics such as:

- Accuracy
- Precision
- Recall
- Balanced accuracy
- ROC-AUC
- Precision-recall AUC
- Confusion matrix

Recall for the seizure class is particularly important because missed seizure events may be more consequential than false alarms.

### Step 6: Model Export

The trained classifier and the required feature-selection and decision-threshold information are exported for use in the RTL-generation workflow.

Example project artifacts include:

```text
random_forest_eeg.pkl
random_forest_export.json
rf_eeg.v
tb_rf_eeg.v
```

These names represent the intended workflow; actual filenames may differ in your implementation.

### Step 7: Verilog RTL Generation

The trained Random Forest is represented using Verilog decision logic.

The RTL implements feature comparisons, decision-tree traversal, and combination of tree outputs. The exact implementation depends on the model configuration and the RTL-generation script.

The discussed fixed-point implementation uses 16 selected features represented as signed 16-bit Q8.8 values.

For Q8.8 representation:

\[
x_{\mathrm{fixed}} \approx \operatorname{round}(x \times 256)
\]

The corresponding real-valued input is approximately:

\[
x \approx \frac{x_{\mathrm{fixed}}}{256}
\]

The RTL comparison thresholds and probability calculations must use the same quantization conventions as the reference implementation.

**Input requirement:** The RTL receives the selected features, not the entire raw EEG feature vector. Raw EEG preprocessing and feature selection must therefore be performed upstream unless they are separately implemented in hardware.

### Step 8: RTL Verification

A Verilog testbench supplies test inputs to the generated RTL and checks its predictions.

The verification process should include:

1. Compile the RTL and testbench.
2. Apply representative seizure and non-seizure feature vectors.
3. Compare RTL predictions with the Python reference model.
4. Check for mismatches.
5. Test edge cases, including values close to decision thresholds.

Passing a limited number of test vectors is useful but does not prove equivalence for every possible input. The Python reference and RTL must use consistent feature ordering, fixed-point conversion, comparison rules, and probability thresholds.

### Step 9: Vivado Simulation and Synthesis

The RTL is imported into Xilinx Vivado.

The main steps are:

1. Add `rf_eeg.v` as a design source.
2. Add `tb_rf_eeg.v` as a simulation source.
3. Set the testbench as the simulation top.
4. Run behavioral simulation.
5. Inspect prediction outputs and mismatches.
6. Run synthesis.
7. Review LUT, register, and other resource utilization reports.
8. Review the power report and its warnings.

No physical FPGA board is required for behavioral simulation or synthesis.

## 7. Results

The following results were reported for the presentation version of the project. They should be reproduced from the final saved model and reports before being treated as final results.

### Machine Learning Results

| Metric | Reported value |
|---|---:|
| Number of decision trees | 25 |
| Maximum tree depth | 3 |
| Selected features | 16 |
| Validation accuracy | 78.75% |
| Balanced accuracy | Approximately 76.93% |
| ROC-AUC | 0.8618 |
| Precision-recall AUC | 0.5416 |
| Reported prediction time | 0.0137 s |
| Reported training time | 0.20 s |

The reported confusion matrix was:

```text
                 Predicted
                 Non-seizure  Seizure
Actual non-seizure    1167       303
Actual seizure          55       160
```

The results indicate that the model detects a proportion of seizure samples but also produces false positives. The relatively low seizure-class precision means further evaluation and optimization are necessary.

The reported prediction time should be interpreted according to the timing method and batch size used in the original experiment.

### RTL Verification

The project presentation showed 20 test samples with no displayed expected-versus-actual mismatches. This is preliminary verification, not exhaustive equivalence testing.

### Hardware Results

Vivado reports were used to inspect resource utilization and estimated power. Power estimates must be interpreted alongside the report's confidence level, switching-activity assumptions, clock constraints, and design configuration.

A report containing invalid switching-activity warnings or low confidence should not be treated as a reliable measurement of actual FPGA power.

## 8. Limitations

- The model's performance depends on the dataset and its class distribution.
- EEG samples from the same recording or patient may be correlated. Where patient or recording identifiers are available, group-based data splitting should be considered to reduce data leakage.
- Feature selection is part of the inference pipeline and must be reproduced consistently.
- Fixed-point quantization can change predictions near decision boundaries.
- RTL simulation does not establish clinical effectiveness.
- Synthesis-based power is an estimate, not a measurement from physical hardware.
- A practical real-time system would also need to address EEG acquisition, signal preprocessing, latency, and integration with the target hardware.

## 9. Future Improvements

- Evaluate the model using patient-wise or recording-wise train/validation/test splits.
- Tune the Random Forest and decision threshold using validation data.
- Improve recall and precision for the seizure class.
- Add automated Python-versus-RTL comparison across a large set of test vectors.
- Investigate fixed-point precision and decision-tree simplification.
- Reduce hardware resource usage through logic optimization.
- Use realistic switching activity and correct timing constraints for power analysis.
- Explore implementation on an FPGA board after simulation and synthesis verification.
- Investigate real-time EEG preprocessing and streaming interfaces.

## 10. Repository Structure

A suggested repository structure is:

```text
EEG-Seizure-Detection/
├── README.md
├── data/
│   └── README.md
├── notebooks/
│   └── eeg_random_forest.ipynb
├── model/
│   ├── random_forest_eeg.pkl
│   └── random_forest_export.json
├── rtl/
│   └── rf_eeg.v
├── testbench/
│   └── tb_rf_eeg.v
├── scripts/
│   ├── train_model.py
│   └── export_to_verilog.py
└── reports/
    └── vivado_results/
```

This is a suggested layout; include only files that actually exist in your repository. Avoid committing large datasets or generated model files unless needed. Follow the dataset's license and access conditions.

## 11. How to Run the Project

### Python Model

1. Download the dataset from the source above.
2. Open the notebook in Google Colab or Jupyter.
3. Install the required Python libraries.
4. Load and preprocess the dataset.
5. Perform feature selection.
6. Train and evaluate the Random Forest model.
7. Export the model parameters needed by the RTL-generation process.

Example dependency installation:

```bash
pip install numpy pandas scikit-learn joblib matplotlib
```

### Verilog RTL

1. Generate or obtain the RTL file from the model-export workflow.
2. Open Xilinx Vivado.
3. Create or open a project.
4. Add the RTL and testbench files.
5. Run behavioral simulation.
6. Check prediction outputs against the Python reference.
7. Run synthesis and review utilization and power reports.

The exact commands and scripts depend on the filenames and Vivado version used in your implementation.

## 12. Conclusion

This project demonstrates a machine-learning-to-hardware workflow for EEG seizure classification. A Random Forest model is trained on EEG features, reduced through feature selection, and represented as Verilog RTL for simulation and synthesis in Xilinx Vivado.

The work provides a foundation for exploring hardware-efficient machine learning in digital VLSI systems. Further improvements in validation methodology, RTL equivalence checking, resource optimization, and realistic power analysis are required before considering a practical real-time implementation.

## 13. Disclaimer

This project is intended for educational and research purposes only. It is not a medical device and must not be used to diagnose seizures, guide treatment, or replace professional medical evaluation.
