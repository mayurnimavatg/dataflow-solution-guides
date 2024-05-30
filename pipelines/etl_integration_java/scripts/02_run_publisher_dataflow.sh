./gradlew run -Pargs="
  --pipeline=PUBSUB_TO_SPANNER \
  --streaming \
  --enableStreamingEngine \
  --autoscalingAlgorithm=THROUGHPUT_BASED \
  --runner=DataflowRunner \
  --project=$PROJECT \
  --tempLocation=$TEMP_LOCATION \
  --region=$REGION \
  --serviceAccount=$SERVICE_ACCOUNT \
  --subnetwork=$NETWORK \
  --maxNumWorkers=$MAX_DATAFLOW_WORKERS \
  --experiments=enable_data_sampling;use_network_tags=ssh;dataflow \
  --usePublicIps=false \
  --pubsubTopic=$TOPIC \
  --spannerInstance=$SPANNER_INSTANCE \
  --spannerDatabase=$SPANNER_DATABASE \
  --spannerTable=$SPANNER_TABLE"