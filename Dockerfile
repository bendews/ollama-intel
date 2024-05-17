FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.1.0-SNAPSHOT
ENV DEVICE
COPY ./run.sh .
RUN chmod +x ./run.sh
ENTRYPOINT ["./run.sh"]
CMD ["serve"]
