import React from 'react'
import './App.css'

function App() {
  return (
    <div className="app">
      <header>
        <img src="/vite.svg" alt="Logo institucional" style={{ height: '60px' }} />
        <h1>Transparencia Conectada</h1>
        <p>Plataforma de participación ciudadana y rendición de cuentas</p>
      </header>

      <main>
        <section>
          <h2>Bienvenida</h2>
          <p>Explora los perfiles institucionales, participa y consulta información pública.</p>
          <button>Explorar</button>
        </section>
      </main>

      <footer>
        <p>&copy; Gobierno del Estado de Oaxaca · Dirección General de Transparencia Institucional</p>
      </footer>
    </div>
  )
}

export default App
