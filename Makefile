PYTHON := python

# Define the scripts
DATA_TRAINING := src/components/model_trainer.py

# Default target
all: preprocess	

# Target to run model training
preprocess: ensure_artifacts_dir
	$(PYTHON) $(DATA_TRAINING)

ensure_artifacts_dir:
	if not exist artifacts mkdir artifacts

# Clean target (optional)
clean:
	if exist *.pyc del /Q *.pyc
	if exist __pycache__ rmdir /S /Q __pycache__

	# -del /Q *.pyc
	# -rmdir /S /Q __pycache__

.PHONY: all preprocess clean ensure_artifacts_dir
