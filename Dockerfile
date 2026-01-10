FROM debian:bookworm-slim

# Install texlive with all needed packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-base \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-luatex \
    texlive-xetex \
    texlive-pictures \
    texlive-plain-generic \
    texlive-humanities \
    texlive-lang-arabic \
    fonts-noto \
    fonts-noto-cjk \
    fonts-noto-cjk-extra \
    fonts-noto-core \
    fonts-noto-extra \
    fonts-noto-ui-core \
    && rm -rf /var/lib/apt/lists/*

# Install tipa for IPA support
RUN apt-get update && apt-get install -y --no-install-recommends \
    tipa \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

# Default command
CMD ["bash"]
