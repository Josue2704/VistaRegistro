// src/app/api.service.ts

import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

// Interfaz que representa un asistente
export interface Asistente {
  nombre: string;
  email: string;
  evento_id: number;
}

// Servicio Angular
@Injectable({
  providedIn: 'root',
})
export class ApiService {
  private apiUrl = 'http://localhost:8000/asistentes/'; // Asegúrate de que la URL esté correcta

  constructor(private http: HttpClient) {}

  registrarAsistente(asistente: Asistente): Observable<Blob> {
    const headers = new HttpHeaders({ 'Content-Type': 'application/json' });
    return this.http.post(this.apiUrl, asistente, {
      headers,
      responseType: 'blob'
    });
  }
}