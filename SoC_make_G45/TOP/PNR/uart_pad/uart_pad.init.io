(globals
    version = 3
    io_order = default
)
(iopad
    (left
	(inst  name="u_pad_vddior_w"	cell="PADVDDIOR" offset=444  )
	(inst  name="u_pad_vdd_w"	cell="PADVDD"    offset=644  )
	(inst  name="u_pad_uart_rx"	cell="PADDI"     offset=844  )
	(inst  name="u_pad_vss_w"	cell="PADVSS"    offset=1044 )
	(inst  name="u_pad_vssior_w"	cell="PADVSSIOR" offset=1244 )
    )
    (topleft
	(inst name="CORNER_TL" cell="padIORINGCORNER")
    )
    (top
	(inst  name="u_pad_vddior_n"	cell="PADVDDIOR" offset=544  )
	(inst  name="u_pad_vdd_n"	cell="PADVDD"    offset=744  )
	(inst  name="u_pad_vss_n"	cell="PADVSS"    offset=944  )
	(inst  name="u_pad_vssior_n"	cell="PADVSSIOR" offset=1144 )
    )
    (topright
	(inst name="CORNER_TR" cell="padIORINGCORNER")
    )
    (right
	(inst  name="u_pad_vddior_e"	cell="PADVDDIOR" offset=444  )
	(inst  name="u_pad_vdd_e"	cell="PADVDD"    offset=644  )
	(inst  name="u_pad_uart_tx"	cell="PADDO"     offset=844  )
	(inst  name="u_pad_vss_e"	cell="PADVSS"    offset=1044 )
	(inst  name="u_pad_vssior_e"	cell="PADVSSIOR" offset=1244 )
    )
    (bottomright
	(inst name="CORNER_BR" cell="padIORINGCORNER")
    )
    (bottom
	(inst  name="u_pad_vddior_s"	cell="PADVDDIOR" offset=544  )
	(inst  name="u_pad_vdd_s"	cell="PADVDD"    offset=744  )
	(inst  name="u_pad_vss_s"	cell="PADVSS"    offset=944  )
	(inst  name="u_pad_vssior_s"	cell="PADVSSIOR" offset=1144 )
    )
    (bottomleft
	(inst name="CORNER_BL" cell="padIORINGCORNER")
    )
)
