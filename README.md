# Rat, Fish or Frog? – iOS App com IA para Classificação de Imagens

## Sobre o projeto

Este é um app iOS desenvolvido por eu, Isabela Hissa Pinto, em colaboração com Dayo Leal, Camila Parolin, Matheus Motta, Lucca Pivoto e Kleber Gadelha, cujo objetivo é aplicar **inteligência artificial para classificar imagens como "rato", "peixe" ou "sapo"**.  
Mesmo que a imagem enviada não pertença a nenhuma dessas categorias, o modelo sempre tentará encaixá-la em uma das três. O resultado? Um experimento divertido, inesperado e tecnicamente instigante.

A proposta surgiu como um exercício de integração entre **CoreML** e **SwiftUI**, mas também explora o comportamento de modelos de machine learning ao lidar com entradas fora do seu escopo original.

## Funcionalidades

- Upload de qualquer imagem da galeria do usuário.
- Classificação automática como *rat*, *fish* ou *frog* usando um modelo de IA treinado com dados reais.
- Interface visual inspirada na estética dos anos 2000/2010 para um toque nostálgico e descontraído.
- Feedback visual imediato com ícone, rótulo e reações divertidas.

## Tecnologias utilizadas

- **SwiftUI**: Para o desenvolvimento da interface do usuário de forma moderna, declarativa e responsiva.
- **CoreML**: Framework da Apple para integrar modelos de machine learning diretamente no app iOS.
- **Create ML**: Utilizado para treinar o modelo de classificação a partir de datasets.
- **Kaggle**: Fonte dos datasets de imagens usados para treinar o modelo de classificação entre ratos, peixes e sapos.
- **Xcode**: Ambiente de desenvolvimento integrado (IDE) para iOS.

## Como funciona a IA

O modelo de machine learning foi treinado utilizando imagens rotuladas das três classes: *rat*, *fish* e *frog*. As imagens foram divididas em conjuntos de treino e teste, normalizadas e processadas para melhorar a performance do classificador.

O modelo foi exportado no formato `.mlmodel` e integrado ao projeto via CoreML, permitindo inferência offline no próprio dispositivo iOS. Isso garante rapidez e privacidade para o usuário.

## Por que esse projeto?

Além do aprendizado técnico, a intenção era criar algo:
- Divertido de usar (e compartilhar),
- Simples de experimentar,
- Capaz de mostrar como **modelos de IA interpretam o mundo com dados limitados**.

O resultado é um app que mistura **tecnologia, humor e nostalgia**, funcionando como uma mini-demostração do potencial (e dos limites) da IA em aplicações do dia a dia.

## Como rodar o projeto

1. Clone o repositório:
   ```bash
   git clone 
        https://github.com/hissapinto/RatFishFrog.git
   ```
2. Abra o projeto no Xcode.
3. Certifique-se de ter um dispositivo iOS real ou simulador rodando.
4. Build & Run.

## Capturas de tela

![rat_fish_frog 001](https://github.com/user-attachments/assets/74cbba56-ad17-4fd4-9bf2-0a5b8f3febe5)

## Créditos

Desenvolvido por:
- Isabela Hissa Pinto - https://github.com/hissapinto
- Dayo Leal - https://github.com/dayoleal
- Camila Parolin - https://github.com/cparolin
- Matheus Motta - https://github.com/matheusmotta16
- Lucca Pivoto - https://github.com/LuccaPV
- Kleber Gadelha - https://github.com/Kleber-gadelha

  
![IMG_5314](https://github.com/user-attachments/assets/5003e2c0-cae3-4135-8e77-6a5d5b6099fc)
