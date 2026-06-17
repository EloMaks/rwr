<div align="center">
  <h1>🥽 RWR - Symulacja Rzeczywistości Wirtualnej</h1>
  <p><i>Eksperymentalne środowisko VR z zaawansowaną lokomocją zbudowane w Godot 4</i></p>
</div>

---

## 📖 Cel projektu
Repozytorium zawiera dokumentację oraz kod źródłowy projektu rozwijanego w ramach przedmiotu **Media Wszechogarniające i Wirtualna Rzeczywistość**. Głównym założeniem było stworzenie od podstaw stabilnego środowiska testowego, umożliwiającego interakcję w przestrzeni 3D za pomocą standardu WebXR.

## 🚀 Zaimplementowane mechaniki
Projekt w toku rozwoju wzbogacił się o następujące moduły:
* **Lokomocja (Płynny ruch):** Sterowanie za pomocą lewego kontrolera z rygorystyczną blokadą osi Y, zapobiegającą "pływaniu" kamery w pionie.
* **Obrót skokowy (Snap Turn):** Implementacja obrotu o 45 stopni na prawym kontrolerze, minimalizująca ryzyko choroby symulacyjnej (cybersickness).
* **Śledzenie i orientacja przestrzenna:** Zaimplementowane modele 3D dłoni z prawidłowo wyliczoną rotacją na osi -Z, odzwierciedlającą naturalne położenie rąk użytkownika.
* **Teleportacja:** Mechanizm szybkiego przemieszczania się z wykorzystaniem promienia celowniczego (Raycast).

## 💻 Tech Stack
Środowisko zostało zbudowane z wykorzystaniem nowoczesnych narzędzi ułatwiających implementację VR w przeglądarkach:
* **Silnik główny:** Godot Engine 4.x
* **Język logiki:** GDScript
* **Standard VR:** OpenXR z eksportem do WebXR

## ⚙️ Instrukcja uruchomienia (WebXR)
1. Załóż gogle VR (np. Meta Quest).
2. Otwórz wbudowaną przeglądarkę internetową i wejdź w link wygenerowany przez GitHub Pages.
3. Kliknij przycisk **"Enter VR"** na dole ekranu.
4. Użyj lewego drążka do poruszania się, a prawego do obracania kamery.
