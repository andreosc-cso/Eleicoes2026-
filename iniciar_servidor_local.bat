@echo off
title Servidor Web Local - Portal Eleicoes RJ 2026
echo ========================================================
echo   Iniciando Servidor Web Local para o Portal Eleicoes
echo ========================================================
echo.
echo O site ficara acessivel no seu navegador e na rede local.
echo Pressione Ctrl+C para encerrar quando quiser.
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$listener = New-Object System.Net.HttpListener; ^
   $port = 8080; ^
   $listener.Prefixes.Add(\"http://localhost:$port/\"); ^
   try { $listener.Start() } catch { Write-Host 'Falha ao iniciar listener. Abrindo arquivo HTML diretamente...'; Start-Process 'index.html'; exit }; ^
   Write-Host \"Servidor ativo em: http://localhost:$port/\"; ^
   Start-Process \"http://localhost:$port/\"; ^
   $baseDir = Get-Location; ^
   while ($listener.IsListening) { ^
     $ctx = $listener.GetContext(); ^
     $req = $ctx.Request; ^
     $resp = $ctx.Response; ^
     $urlPath = $req.Url.LocalPath.TrimStart('/'); ^
     if ([string]::IsNullOrEmpty($urlPath)) { $urlPath = 'index.html' }; ^
     $filePath = Join-Path $baseDir $urlPath; ^
     if (Test-Path $filePath) { ^
       $bytes = [System.IO.File]::ReadAllBytes($filePath); ^
       if ($filePath.EndsWith('.html')) { $resp.ContentType = 'text/html; charset=utf-8' } ^
       elseif ($filePath.EndsWith('.js')) { $resp.ContentType = 'application/javascript; charset=utf-8' } ^
       elseif ($filePath.EndsWith('.css')) { $resp.ContentType = 'text/css; charset=utf-8' }; ^
       $resp.ContentLength64 = $bytes.Length; ^
       $resp.OutputStream.Write($bytes, 0, $bytes.Length); ^
     } else { ^
       $resp.StatusCode = 404; ^
     }; ^
     $resp.OutputStream.Close(); ^
   }"
pause
