// Función para redirigir desde index.html a verificar.html
function redirectToVerify() {
    // Verificamos si la variable de sesión 'verificado' existe y tiene el valor 'true'
    if (sessionStorage.getItem('verificado') !== 'true') {
        // Guardamos el estado de verificación en la variable de sesión
        sessionStorage.setItem('verificado', 'true');
        // Redirigimos al usuario a verificar.html
        window.location.href = 'verificar.html';
    }
}

// Función para redirigir desde verificar.html a index.html
function redirectToIndex() {
    // Redirigimos al usuario a index.html
    window.location.href = 'index.html';
}