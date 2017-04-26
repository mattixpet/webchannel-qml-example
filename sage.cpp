/*
Copyright 2016 Matthias Petursson. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

File author/s:
    Matthias Petursson <oldschool01123@gmail.com>
*/

#include "sage.h"

Sage::Sage(QObject *parent)
    : QObject(parent),
      m_answerToLife(42)
{ }

int Sage::answerToLife() const
{
    return m_answerToLife;
}

void Sage::changeAnswerToLife()
{
    m_answerToLife = (int) (m_answerToLife * 8.5f) % 43;
    emit answerToLifeChanged(m_answerToLife);
}
