<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Error del sistema</title>
		<link rel="stylesheet" href="<c:url value="/css/estilos.css"/>">
		<style>
			body {
				font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
				margin: 0;
				padding: 2rem;
				background: #f5f7fb;
				color: #1f2937;
			}
			.contenedor {
				max-width: 680px;
				margin: 0 auto;
				background: #ffffff;
				border: 1px solid #e5e7eb;
				border-radius: 10px;
				padding: 1.5rem;
				box-shadow: 0 8px 20px rgba(31, 41, 55, 0.08);
			}
			.codigo {
				font-size: 2rem;
				font-weight: 700;
				color: #b91c1c;
				margin: 0 0 .5rem;
			}
			.detalle {
				background: #f9fafb;
				border: 1px solid #e5e7eb;
				border-radius: 8px;
				padding: .75rem;
				overflow-x: auto;
				font-family: Consolas, "Courier New", monospace;
				font-size: .9rem;
			}
			.acciones {
				margin-top: 1.25rem;
			}
			a {
				color: #1d4ed8;
				text-decoration: none;
				font-weight: 600;
			}
			a:hover {
				text-decoration: underline;
			}
		</style>
	</head>
	<body>
		<div class="contenedor">
			<h1>Ocurrió un error</h1>
			<p class="codigo">
				Código: ${requestScope['jakarta.servlet.error.status_code']}
			</p>
			<p>
				${requestScope['jakarta.servlet.error.message']}
			</p>

			<c:if test="${not empty pageContext.exception}">
				<h3>Detalle técnico</h3>
				<div class="detalle">
					<c:out value="${pageContext.exception}"/>
				</div>
			</c:if>

			<div class="acciones">
				<a href="<c:url value='/productos'/>">Volver al listado de productos</a>
			</div>
		</div>
	</body>
</html>
