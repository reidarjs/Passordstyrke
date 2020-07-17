# Passordstyrke
Program som gir en kvantitativ vurdering av styrken på et gitt passord.

For å komme frem til denne vurderingen har programmet trent opp en
Markov-modell som inneholder sannsynligheter for hva det neste tegnet
i et gitt passord (mest sannsynlig) vil være, basert på en gitt passordliste.

Dette brukes til å gi en poengsum for hvor uvanlig/"sterkt" passordet kan sies å være.

Passordlista brukt for å generere modellen model2019.mat besto
av et 6-sifret antall unike passord.

Programmet ble skrevet som del av faget IMT4113 Introduction to Cyber and Information Security Technology.
