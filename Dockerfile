FROM applariat/mapr-base:6.0.0_4.0.0
#Starting from mapr base services image

ARG artifact_root="."
#Additional build args from AppLariat component configuration will be inserted dynamically

#Copy files into place
COPY $artifact_root/mapr-job.sh $MAPR_CONTAINER_DIR/mapr-job.sh
COPY $artifact_root/code/ $MAPR_CONTAINER_DIR/code/
RUN chmod +x $MAPR_CONTAINER_DIR/code/*.sh $MAPR_CONTAINER_DIR/mapr-job.sh 

EXPOSE 22

WORKDIR $MAPR_CONTAINER_DIR

ENTRYPOINT ["./entrypoint.sh"]

CMD ["/opt/mapr/docker/mapr-job.sh"]
