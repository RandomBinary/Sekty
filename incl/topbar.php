<table border="0" class="topbar">
    <tbody><tr>
        <!-- Informacje o użytkowniku -->
        <td class="user">
            <table>
                <td>
                    <?php echo "<img src=\"" . $user['avatar'] . "\" alt=\"Twój avatar.\" class=\"avatar\">"; ?>
                </td>
                <Td>
                    <?php echo "<strong>" . $user['nick'] . "</strong>"; ?><br>
                    Cycki: 5
                </Td>
            </table>
        </td>
        
        <!-- Menu -->
        <td class="menu">
            <a href="logout.php"><img src="img/logout.gif" alt="Wyloguj się"></a>
        </Td>
    </tr></tbody>
</table>