

proc generate {drv_handle} {
	::hsi::utils::define_include_file $drv_handle "xparameters.h" "connect_mailbox" "NUM_INSTANCES" "C_BASEADDR" "C_HIGHADDR" "DEVICE_ID" "C_S00_AXI_BASEADDR" "C_S00_AXI_HIGHADDR" 
}
