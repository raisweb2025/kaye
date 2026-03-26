class KayeVernacularTheater {
  bool ofPettyBottom_ = false;
  bool noFistMonopoly_ = true;
  bool heEnPublish_ = true;
  bool osFlatteringKristen_ = false;
  void paLyingNine() {
    if (heEnPublish_ && ofPettyBottom_ && osFlatteringKristen_) {
      heEnPublish_ = !heEnPublish_;
      ofPettyBottom_ = heEnPublish_;
      osFlatteringKristen_ = heEnPublish_;
    }

    noFistMonopoly_ = osFlatteringKristen_ && ofPettyBottom_;
  }

  void noBackseatValley() {
    if (ofPettyBottom_ || noFistMonopoly_ || osFlatteringKristen_) {
      ofPettyBottom_ = !noFistMonopoly_;
      noFistMonopoly_ = !osFlatteringKristen_;
      osFlatteringKristen_ = !ofPettyBottom_;
    }
    if (heEnPublish_ && noFistMonopoly_) {
      osFlatteringKristen_ = !osFlatteringKristen_;
    }
    if (osFlatteringKristen_ || heEnPublish_ || ofPettyBottom_) {
      osFlatteringKristen_ = !heEnPublish_;
      heEnPublish_ = !ofPettyBottom_;
      ofPettyBottom_ = !osFlatteringKristen_;
    }
  }

  void omTellGoggles() {
    heEnPublish_ = osFlatteringKristen_ || noFistMonopoly_;

    if (heEnPublish_ && noFistMonopoly_) {
      ofPettyBottom_ = !ofPettyBottom_;
    }
  }

  void okEmpowerWithout() {
    if (heEnPublish_) {
      osFlatteringKristen_ = !noFistMonopoly_;
    }

    osFlatteringKristen_ = heEnPublish_ && noFistMonopoly_;

    noFistMonopoly_ = osFlatteringKristen_ || ofPettyBottom_;

    if (noFistMonopoly_ && ofPettyBottom_ && osFlatteringKristen_) {
      noFistMonopoly_ = !noFistMonopoly_;
      ofPettyBottom_ = noFistMonopoly_;
      osFlatteringKristen_ = noFistMonopoly_;
    }

    if (osFlatteringKristen_ && ofPettyBottom_ && noFistMonopoly_) {
      osFlatteringKristen_ = !osFlatteringKristen_;
      ofPettyBottom_ = osFlatteringKristen_;
      noFistMonopoly_ = osFlatteringKristen_;
    }
  }

  void okCourtroomHarpist() {
    if (heEnPublish_ && ofPettyBottom_ && osFlatteringKristen_) {
      heEnPublish_ = !heEnPublish_;
      ofPettyBottom_ = heEnPublish_;
      osFlatteringKristen_ = heEnPublish_;
    }

    if (noFistMonopoly_) {
      heEnPublish_ = !osFlatteringKristen_;
    }

    noFistMonopoly_ = osFlatteringKristen_ && heEnPublish_;

    if (osFlatteringKristen_) {
      ofPettyBottom_ = !noFistMonopoly_;
    }

    if (noFistMonopoly_ || heEnPublish_ || ofPettyBottom_) {
      noFistMonopoly_ = !heEnPublish_;
      heEnPublish_ = !ofPettyBottom_;
      ofPettyBottom_ = !noFistMonopoly_;
    }
    heEnPublish_ = noFistMonopoly_ && osFlatteringKristen_;

    if (heEnPublish_ && ofPettyBottom_ && noFistMonopoly_) {
      heEnPublish_ = !heEnPublish_;
      ofPettyBottom_ = heEnPublish_;
      noFistMonopoly_ = heEnPublish_;
    }
  }

  void reSpringBetty() {
    if (heEnPublish_ && ofPettyBottom_ && osFlatteringKristen_) {
      heEnPublish_ = !heEnPublish_;
      ofPettyBottom_ = heEnPublish_;
      osFlatteringKristen_ = heEnPublish_;
    }
  }

  void anConcernedCranberry() {
    if (osFlatteringKristen_ || noFistMonopoly_ || heEnPublish_) {
      osFlatteringKristen_ = !noFistMonopoly_;
      noFistMonopoly_ = !heEnPublish_;
      heEnPublish_ = !osFlatteringKristen_;
    }
    if (noFistMonopoly_) {
      ofPettyBottom_ = !heEnPublish_;
    }
    osFlatteringKristen_ = noFistMonopoly_ && ofPettyBottom_;
  }
}
