.PHONY: install format train evalinstall:	pip install --upgrade pip	pip install -r requirements.txtformat:	python -m black .	/usr/bin/env python3 -m black .train:	python train.pyeval:	echo "## Model Metrics" > report.md	cat ./Results/metrics.txt >> report.md	echo "\n## Confusion Matrix Plot" >> report.md	echo "![Confusion Matrix](./Results/model_results.png)" >> report.md
install:
	pip install --upgrade pip
	pip install -r requirements.txt
format:
	/usr/bin/env python3 -m black .
train:
	python train.py
eval:
	echo "## Model Metrics" > report.md
	cat ./Results/metrics.txt >> report.md
	echo "\n## Confusion Matrix Plot" >> report.md
	echo "![Confusion Matrix](./Results/model_results.png)" >> report.md
	cml comment create report.md
