# Projekt VR - RWR

Projekt zaliczeniowy stworzony w ramach przedmiotu **Media Wszechogarniające i Wirtualna Rzeczywistość**. Jest to podstawowe środowisko testowe zbudowane w silniku Godot 4, zoptymalizowane pod kątem działania w przeglądarce dzięki standardowi WebXR.

## Zaimplementowane funkcjonalności

* **Lokomocja:** Płynne poruszanie się po płaszczyźnie przypisane do lewego drążka (ruch w osi Y został zablokowany).
* **Obrót (Snap Turn):** Skokowy obrót kamery o 45 stopni za pomocą prawego drążka.
* **Teleportacja:** System szybkiego przemieszczania się z wykorzystaniem promienia celowniczego (Raycast).
* **Modele dłoni:** Podpięte modele 3D śledzące ruchy kontrolerów (poprawiona rotacja o 180 stopni względem osi -Z, aby palce wskazywały poprawny kierunek).

## Technologie

* Silnik: Godot Engine 4
* Język skryptowy: GDScript
* API: WebXR / OpenXR

## Uruchomienie

1. Otwórz link z GitHub Pages w przeglądarce gogli VR.
2. Kliknij przycisk **Enter VR**.
3. Lewy kontroler służy do chodzenia, prawy do obracania się i teleportacji.
