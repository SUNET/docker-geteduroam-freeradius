FROM freeradius/freeradius-server:latest
RUN rm -rf \
	/etc/raddb/sites-enabled/* \
    /etc/raddb/mods-enabled/* \
    /etc/raddb/certs/*
RUN ln -s /etc/raddb/mods-available/always /etc/raddb/mods-enabled/always
RUN ln -s /etc/raddb/mods-available/detail.log /etc/raddb/mods-enabled/detail.log

COPY raddb/ /etc/raddb/
