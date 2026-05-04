FROM frappe/bench:latest

USER root
COPY . /tmp/bench-src

# Replace bench package in the base image with your forked source
RUN pip uninstall -y frappe-bench || true \
 && pip install --no-cache-dir /tmp/bench-src \
 && rm -rf /tmp/bench-src

USER frappe
