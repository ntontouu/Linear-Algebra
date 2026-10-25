# Linear Algebra - Matrix Operations & LU Factorization (Octave/MATLAB)

## 🔍 Overview
This repository contains a collection of custom matrix manipulation and linear algebra algorithms implemented in **Octave/MATLAB** as part of the Linear Algebra coursework for the Department of Informatics and Telecommunications at the University of Ioannina. 

The implementation focuses on numerical linear algebra techniques, building core mathematical operations from scratch rather than relying solely on built-in high-level solver functions.

---

## ⚙️ Core Features & Implemented Functions

* **Matrix Validation & Helper Utilities:**
  * isSquared(x): Checks if a matrix is square.
  * isTriangleUp(x): Validates if a matrix is upper triangular.
  * ADDROW(x, R1, R2, k): Performs row operations (adds a scalar multiple of a row to another).
  * DIVROW(x, R1, y): Scales a matrix row by a scalar.
  * swapRows(x, i, j): Swaps two matrix rows.
  * isDiagonialZero(x) & emoveDiagonialZero(x): Detects and handles zero elements on the main diagonal using row pivoting.

* **Advanced Matrix Solvers & Factorization:**
  * computeInverseMatrix(A): Computes the inverse of a square matrix using Gauss-Jordan elimination and pivoting.
  * LUfactorizationWithPivoting(x): Performs $ decomposition with partial pivoting ( = LU$).
  * SolForwardLU(L, b) & SolBackwardLU(U, y): Forward and backward substitution methods to solve linear systems ( = b$).

---

## 📊 Test Datasets & Execution
The scripts include predefined test matrices (such as the  \times 10$ test matrix, custom test systems, and validation arrays) to evaluate algorithmic accuracy and stability.

---
**Author:** 
* Μαρία - Αλεξάνδρα Ντόντου (AM: 2799)
