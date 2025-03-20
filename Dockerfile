FROM python:3.12

# Set environment variables
ENV POETRY_HOME="/opt/poetry" \
    POETRY_VIRTUALENVS_CREATE=false \
    POETRY_NO_INTERACTION=1

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 - && \
    ln -s $POETRY_HOME/bin/poetry /usr/local/bin/poetry
# RUN pip install pipx
# RUN pipx install poetry

# Set working directory
WORKDIR /app

# Copy pyproject.toml and poetry.lock
COPY pyproject.toml poetry.lock ./

# Install dependencies
COPY . /app
RUN poetry install --no-root

# Expose port
EXPOSE 8080

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
