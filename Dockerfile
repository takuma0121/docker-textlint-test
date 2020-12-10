FROM node:15.3.0-buster

RUN npm install \\
    textlint \\
    textlint-rule-prh \\
    textlint-rule-preset-japanese \\
    textlint-rule-max-ten \\
    textlint-rule-spellcheck-tech-word \\
    textlint-rule-no-mix-dearu-desumasu --global

WORKDIR /document

COPY .textlintrc /document

CMD ["/bin/bash"]
