FROM intelanalytics/ipex-llm-inference-cpp-xpu:2.2.0-SNAPSHOT
ENV DEVICE "iGPU"
COPY ./run.sh .
RUN chmod +x ./run.sh
ENTRYPOINT ["./run.sh"]
CMD ["serve"]
