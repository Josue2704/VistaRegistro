// src/app/registro/registro.component.ts

import { Component } from '@angular/core';
import { ApiService, Asistente } from '../services/api.service';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent {
  nombre = '';
  email = '';
  evento_id: number | null = null;
  qrCodeBase64: string | null = null;

  constructor(private apiService: ApiService) {}

  // Función que se llama al enviar el formulario
  registrarAsistente() {
    if (this.nombre && this.email && this.evento_id !== null) {
      const asistente: Asistente = {
        nombre: this.nombre,
        email: this.email,
        evento_id: this.evento_id,
      };
  
      this.apiService.registrarAsistente(asistente).subscribe(
        (response) => {
          const reader = new FileReader();
          reader.onload = () => {
            this.qrCodeBase64 = reader.result as string;
          };
          reader.readAsDataURL(response);
          alert('Asistente registrado con éxito. Aquí está su QR.');
        },
        (error) => {
          console.error('Error:', error);
          alert('Hubo un error al registrar al asistente.');
        }
      );
    } else {
      alert('Por favor completa todos los campos.');
    }
  }
}