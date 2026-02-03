<div align="center">

<a href="https://www.lib.ncsu.edu/" aria-label="nc state university libraries logo"><img src="assets/libraries-logo.png" width="300" alt="NC State University Libraries Logo" /></a>

<h2>Run Locally (Python/Jupyter)</h2>

</div>

## Micromamba environment (recommended)

1. Create and activate the environment:
```bash
micromamba create -y -f config/environment.yml
micromamba activate intro-to-prog-py
```

2. Launch Jupyter and run the notebooks:
```bash
jupyter notebook
# or
jupyter lab
```

3. Execute notebooks headlessly (optional):
```bash
python -m nbconvert --to notebook --execute workshops/fundamentals/fundamentals.ipynb --output executed_basic.ipynb
python -m nbconvert --to notebook --execute workshops/loops-and-functions/loops-and-functions.ipynb --output executed_control.ipynb
```

## Python .venv alternative

1. Create and activate a virtual environment in this folder:
```bash
python3 -m venv .venv
source .venv/bin/activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run notebooks:
```bash
jupyter notebook
```

## Notes
- Python 3.10–3.12 is supported.
- If you add packages, update both `config/environment.yml` and `requirements.txt`.
- The notebooks include small plots, data structures, control flow, and file I/O examples.
