
Disassembly of section .text:

c0001500 <main>:
c0001500:	55                   	push   %ebp
c0001501:	89 e5                	mov    %esp,%ebp
c0001503:	83 e4 f0             	and    $0xfffffff0,%esp
c0001506:	83 ec 10             	sub    $0x10,%esp
c0001509:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
c0001510:	e8 4c 1f 00 00       	call   c0003461 <set_cursor>
c0001515:	e8 cc 1f 00 00       	call   c00034e6 <int_disable>
c000151a:	e8 1a 04 00 00       	call   c0001939 <init_int>
c000151f:	c7 04 24 a4 5f 00 c0 	movl   $0xc0005fa4,(%esp)
c0001526:	e8 5a 1f 00 00       	call   c0003485 <put_str>
c000152b:	e8 a0 2c 00 00       	call   c00041d0 <init_pool>
c0001530:	c7 04 24 b0 5f 00 c0 	movl   $0xc0005fb0,(%esp)
c0001537:	e8 49 1f 00 00       	call   c0003485 <put_str>
c000153c:	e8 c0 32 00 00       	call   c0004801 <init_thread_list>
c0001541:	c7 04 24 bc 5f 00 c0 	movl   $0xc0005fbc,(%esp)
c0001548:	e8 38 1f 00 00       	call   c0003485 <put_str>
c000154d:	e8 41 3b 00 00       	call   c0005093 <init_console>
c0001552:	c7 04 24 ca 5f 00 c0 	movl   $0xc0005fca,(%esp)
c0001559:	e8 27 1f 00 00       	call   c0003485 <put_str>
c000155e:	e8 eb 3b 00 00       	call   c000514e <init_keyboard>
c0001563:	c7 04 24 d9 5f 00 c0 	movl   $0xc0005fd9,(%esp)
c000156a:	e8 16 1f 00 00       	call   c0003485 <put_str>
c000156f:	e8 c9 41 00 00       	call   c000573d <init_proc_data>
c0001574:	c7 04 24 e9 5f 00 c0 	movl   $0xc0005fe9,(%esp)
c000157b:	e8 27 3b 00 00       	call   c00050a7 <console_put_str>
c0001580:	c7 04 24 a0 95 00 c0 	movl   $0xc00095a0,(%esp)
c0001587:	e8 e5 29 00 00       	call   c0003f71 <mem_decs_init>
c000158c:	c7 04 24 f5 5f 00 c0 	movl   $0xc0005ff5,(%esp)
c0001593:	e8 0f 3b 00 00       	call   c00050a7 <console_put_str>
c0001598:	e8 35 1f 00 00       	call   c00034d2 <int_enable>
c000159d:	c7 05 30 96 00 c0 10 	movl   $0x10,0xc0009630
c00015a4:	00 00 00 
c00015a7:	a1 30 96 00 c0       	mov    0xc0009630,%eax
c00015ac:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00015b0:	c7 44 24 08 ce 15 00 	movl   $0xc00015ce,0x8(%esp)
c00015b7:	c0 
c00015b8:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
c00015bf:	00 
c00015c0:	c7 04 24 00 60 00 c0 	movl   $0xc0006000,(%esp)
c00015c7:	e8 26 43 00 00       	call   c00058f2 <proc_start>
c00015cc:	eb fe                	jmp    c00015cc <main+0xcc>

c00015ce <print>:
c00015ce:	55                   	push   %ebp
c00015cf:	89 e5                	mov    %esp,%ebp
c00015d1:	83 ec 28             	sub    $0x28,%esp
c00015d4:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c00015db:	e8 aa 49 00 00       	call   c0005f8a <malloc>
c00015e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00015e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00015e6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00015ea:	c7 04 24 05 60 00 c0 	movl   $0xc0006005,(%esp)
c00015f1:	e8 e6 45 00 00       	call   c0005bdc <printf>
c00015f6:	eb fe                	jmp    c00015f6 <print+0x28>

c00015f8 <write_port>:
c00015f8:	55                   	push   %ebp
c00015f9:	89 e5                	mov    %esp,%ebp
c00015fb:	83 ec 04             	sub    $0x4,%esp
c00015fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0001601:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0001605:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c0001609:	8b 45 0c             	mov    0xc(%ebp),%eax
c000160c:	ee                   	out    %al,(%dx)
c000160d:	c9                   	leave  
c000160e:	c3                   	ret    

c000160f <gernal_handle>:
c000160f:	55                   	push   %ebp
c0001610:	89 e5                	mov    %esp,%ebp
c0001612:	83 ec 18             	sub    $0x18,%esp
c0001615:	fa                   	cli    
c0001616:	8b 45 08             	mov    0x8(%ebp),%eax
c0001619:	8b 04 85 60 96 00 c0 	mov    -0x3fff69a0(,%eax,4),%eax
c0001620:	89 04 24             	mov    %eax,(%esp)
c0001623:	e8 5d 1e 00 00       	call   c0003485 <put_str>
c0001628:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c000162f:	e8 cc 1c 00 00       	call   c0003300 <put_char>
c0001634:	eb fe                	jmp    c0001634 <gernal_handle+0x25>

c0001636 <handle_clock_intr>:
c0001636:	55                   	push   %ebp
c0001637:	89 e5                	mov    %esp,%ebp
c0001639:	83 ec 28             	sub    $0x28,%esp
c000163c:	e8 a5 1e 00 00       	call   c00034e6 <int_disable>
c0001641:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001644:	e8 e8 2d 00 00       	call   c0004431 <get_running>
c0001649:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000164c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000164f:	8b 40 2c             	mov    0x2c(%eax),%eax
c0001652:	8d 50 ff             	lea    -0x1(%eax),%edx
c0001655:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001658:	89 50 2c             	mov    %edx,0x2c(%eax)
c000165b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000165e:	8b 40 34             	mov    0x34(%eax),%eax
c0001661:	8d 50 01             	lea    0x1(%eax),%edx
c0001664:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001667:	89 50 34             	mov    %edx,0x34(%eax)
c000166a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000166d:	8b 40 2c             	mov    0x2c(%eax),%eax
c0001670:	85 c0                	test   %eax,%eax
c0001672:	75 11                	jne    c0001685 <handle_clock_intr+0x4f>
c0001674:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001677:	8b 50 30             	mov    0x30(%eax),%edx
c000167a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000167d:	89 50 2c             	mov    %edx,0x2c(%eax)
c0001680:	e8 c1 2d 00 00       	call   c0004446 <schedule>
c0001685:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001688:	89 04 24             	mov    %eax,(%esp)
c000168b:	e8 6a 1e 00 00       	call   c00034fa <set_int_status>
c0001690:	c9                   	leave  
c0001691:	c3                   	ret    

c0001692 <idt_table_init>:
c0001692:	55                   	push   %ebp
c0001693:	89 e5                	mov    %esp,%ebp
c0001695:	83 ec 10             	sub    $0x10,%esp
c0001698:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c000169f:	eb 20                	jmp    c00016c1 <idt_table_init+0x2f>
c00016a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00016a4:	c7 04 85 a0 9c 00 c0 	movl   $0xc000160f,-0x3fff6360(,%eax,4)
c00016ab:	0f 16 00 c0 
c00016af:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00016b2:	c7 04 85 60 96 00 c0 	movl   $0xc0006018,-0x3fff69a0(,%eax,4)
c00016b9:	18 60 00 c0 
c00016bd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c00016c1:	81 7d fc 81 00 00 00 	cmpl   $0x81,-0x4(%ebp)
c00016c8:	7e d7                	jle    c00016a1 <idt_table_init+0xf>
c00016ca:	c7 05 20 9d 00 c0 36 	movl   $0xc0001636,0xc0009d20
c00016d1:	16 00 c0 
c00016d4:	c7 05 24 9d 00 c0 1b 	movl   $0xc000521b,0xc0009d24
c00016db:	52 00 c0 
c00016de:	c7 05 60 96 00 c0 23 	movl   $0xc0006023,0xc0009660
c00016e5:	60 00 c0 
c00016e8:	c7 05 64 96 00 c0 34 	movl   $0xc0006034,0xc0009664
c00016ef:	60 00 c0 
c00016f2:	c7 05 6c 96 00 c0 3e 	movl   $0xc000603e,0xc000966c
c00016f9:	60 00 c0 
c00016fc:	c7 05 70 96 00 c0 4e 	movl   $0xc000604e,0xc0009670
c0001703:	60 00 c0 
c0001706:	c7 05 74 96 00 c0 5b 	movl   $0xc000605b,0xc0009674
c000170d:	60 00 c0 
c0001710:	c7 05 78 96 00 c0 74 	movl   $0xc0006074,0xc0009678
c0001717:	60 00 c0 
c000171a:	c7 05 7c 96 00 c0 87 	movl   $0xc0006087,0xc000967c
c0001721:	60 00 c0 
c0001724:	c7 05 80 96 00 c0 a0 	movl   $0xc00060a0,0xc0009680
c000172b:	60 00 c0 
c000172e:	c7 05 88 96 00 c0 b1 	movl   $0xc00060b1,0xc0009688
c0001735:	60 00 c0 
c0001738:	c7 05 8c 96 00 c0 c1 	movl   $0xc00060c1,0xc000968c
c000173f:	60 00 c0 
c0001742:	c7 05 90 96 00 c0 d9 	movl   $0xc00060d9,0xc0009690
c0001749:	60 00 c0 
c000174c:	c7 05 94 96 00 c0 f1 	movl   $0xc00060f1,0xc0009694
c0001753:	60 00 c0 
c0001756:	c7 05 98 96 00 c0 08 	movl   $0xc0006108,0xc0009698
c000175d:	61 00 c0 
c0001760:	c7 05 a0 96 00 c0 18 	movl   $0xc0006118,0xc00096a0
c0001767:	61 00 c0 
c000176a:	c7 05 a4 96 00 c0 46 	movl   $0xc0006146,0xc00096a4
c0001771:	61 00 c0 
c0001774:	c7 05 a8 96 00 c0 5a 	movl   $0xc000615a,0xc00096a8
c000177b:	61 00 c0 
c000177e:	c7 05 ac 96 00 c0 6c 	movl   $0xc000616c,0xc00096ac
c0001785:	61 00 c0 
c0001788:	c7 05 b0 96 00 c0 8e 	movl   $0xc000618e,0xc00096b0
c000178f:	61 00 c0 
c0001792:	90                   	nop
c0001793:	c9                   	leave  
c0001794:	c3                   	ret    

c0001795 <make_idt_entry>:
c0001795:	55                   	push   %ebp
c0001796:	89 e5                	mov    %esp,%ebp
c0001798:	8b 45 0c             	mov    0xc(%ebp),%eax
c000179b:	c1 e8 10             	shr    $0x10,%eax
c000179e:	89 c2                	mov    %eax,%edx
c00017a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00017a3:	66 89 50 06          	mov    %dx,0x6(%eax)
c00017a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00017aa:	c6 40 05 ee          	movb   $0xee,0x5(%eax)
c00017ae:	8b 45 08             	mov    0x8(%ebp),%eax
c00017b1:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00017b5:	8b 45 08             	mov    0x8(%ebp),%eax
c00017b8:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c00017be:	8b 45 0c             	mov    0xc(%ebp),%eax
c00017c1:	89 c2                	mov    %eax,%edx
c00017c3:	8b 45 08             	mov    0x8(%ebp),%eax
c00017c6:	66 89 10             	mov    %dx,(%eax)
c00017c9:	90                   	nop
c00017ca:	5d                   	pop    %ebp
c00017cb:	c3                   	ret    

c00017cc <init_int_des>:
c00017cc:	55                   	push   %ebp
c00017cd:	89 e5                	mov    %esp,%ebp
c00017cf:	83 ec 18             	sub    $0x18,%esp
c00017d2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00017d9:	eb 26                	jmp    c0001801 <init_int_des+0x35>
c00017db:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00017de:	8b 04 85 00 90 00 c0 	mov    -0x3fff7000(,%eax,4),%eax
c00017e5:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00017e8:	c1 e2 03             	shl    $0x3,%edx
c00017eb:	81 c2 80 98 00 c0    	add    $0xc0009880,%edx
c00017f1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00017f5:	89 14 24             	mov    %edx,(%esp)
c00017f8:	e8 98 ff ff ff       	call   c0001795 <make_idt_entry>
c00017fd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001801:	81 7d fc 81 00 00 00 	cmpl   $0x81,-0x4(%ebp)
c0001808:	7e d1                	jle    c00017db <init_int_des+0xf>
c000180a:	90                   	nop
c000180b:	c9                   	leave  
c000180c:	c3                   	ret    

c000180d <init_pic>:
c000180d:	55                   	push   %ebp
c000180e:	89 e5                	mov    %esp,%ebp
c0001810:	83 ec 08             	sub    $0x8,%esp
c0001813:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c000181a:	00 
c000181b:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0001822:	e8 d1 fd ff ff       	call   c00015f8 <write_port>
c0001827:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c000182e:	00 
c000182f:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0001836:	e8 bd fd ff ff       	call   c00015f8 <write_port>
c000183b:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0001842:	00 
c0001843:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c000184a:	e8 a9 fd ff ff       	call   c00015f8 <write_port>
c000184f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0001856:	00 
c0001857:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c000185e:	e8 95 fd ff ff       	call   c00015f8 <write_port>
c0001863:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c000186a:	00 
c000186b:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c0001872:	e8 81 fd ff ff       	call   c00015f8 <write_port>
c0001877:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
c000187e:	00 
c000187f:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c0001886:	e8 6d fd ff ff       	call   c00015f8 <write_port>
c000188b:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
c0001892:	00 
c0001893:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c000189a:	e8 59 fd ff ff       	call   c00015f8 <write_port>
c000189f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00018a6:	00 
c00018a7:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c00018ae:	e8 45 fd ff ff       	call   c00015f8 <write_port>
c00018b3:	c7 44 24 04 fc 00 00 	movl   $0xfc,0x4(%esp)
c00018ba:	00 
c00018bb:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c00018c2:	e8 31 fd ff ff       	call   c00015f8 <write_port>
c00018c7:	c7 44 24 04 ff 00 00 	movl   $0xff,0x4(%esp)
c00018ce:	00 
c00018cf:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c00018d6:	e8 1d fd ff ff       	call   c00015f8 <write_port>
c00018db:	90                   	nop
c00018dc:	c9                   	leave  
c00018dd:	c3                   	ret    

c00018de <init_timer>:
c00018de:	55                   	push   %ebp
c00018df:	89 e5                	mov    %esp,%ebp
c00018e1:	83 ec 1c             	sub    $0x1c,%esp
c00018e4:	8b 45 08             	mov    0x8(%ebp),%eax
c00018e7:	88 45 ec             	mov    %al,-0x14(%ebp)
c00018ea:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c00018ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00018f2:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
c00018f9:	e8 fa fc ff ff       	call   c00015f8 <write_port>
c00018fe:	66 c7 45 fe 9b 2e    	movw   $0x2e9b,-0x2(%ebp)
c0001904:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c0001908:	0f b6 c0             	movzbl %al,%eax
c000190b:	89 44 24 04          	mov    %eax,0x4(%esp)
c000190f:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c0001916:	e8 dd fc ff ff       	call   c00015f8 <write_port>
c000191b:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c000191f:	66 c1 e8 08          	shr    $0x8,%ax
c0001923:	0f b6 c0             	movzbl %al,%eax
c0001926:	89 44 24 04          	mov    %eax,0x4(%esp)
c000192a:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c0001931:	e8 c2 fc ff ff       	call   c00015f8 <write_port>
c0001936:	90                   	nop
c0001937:	c9                   	leave  
c0001938:	c3                   	ret    

c0001939 <init_int>:
c0001939:	55                   	push   %ebp
c000193a:	89 e5                	mov    %esp,%ebp
c000193c:	56                   	push   %esi
c000193d:	53                   	push   %ebx
c000193e:	83 ec 20             	sub    $0x20,%esp
c0001941:	e8 a2 14 00 00       	call   c0002de8 <int_entry_fill>
c0001946:	e8 81 fe ff ff       	call   c00017cc <init_int_des>
c000194b:	e8 bd fe ff ff       	call   c000180d <init_pic>
c0001950:	e8 3d fd ff ff       	call   c0001692 <idt_table_init>
c0001955:	e8 31 42 00 00       	call   c0005b8b <syscall_table_init>
c000195a:	c7 04 24 34 00 00 00 	movl   $0x34,(%esp)
c0001961:	e8 78 ff ff ff       	call   c00018de <init_timer>
c0001966:	b8 80 98 00 c0       	mov    $0xc0009880,%eax
c000196b:	ba 00 00 00 00       	mov    $0x0,%edx
c0001970:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c0001974:	c1 e0 10             	shl    $0x10,%eax
c0001977:	89 c1                	mov    %eax,%ecx
c0001979:	81 c9 07 04 00 00    	or     $0x407,%ecx
c000197f:	89 cb                	mov    %ecx,%ebx
c0001981:	89 d0                	mov    %edx,%eax
c0001983:	80 cc 00             	or     $0x0,%ah
c0001986:	89 c6                	mov    %eax,%esi
c0001988:	89 5d f0             	mov    %ebx,-0x10(%ebp)
c000198b:	89 75 f4             	mov    %esi,-0xc(%ebp)
c000198e:	0f 01 5d f0          	lidtl  -0x10(%ebp)
c0001992:	90                   	nop
c0001993:	83 c4 20             	add    $0x20,%esp
c0001996:	5b                   	pop    %ebx
c0001997:	5e                   	pop    %esi
c0001998:	5d                   	pop    %ebp
c0001999:	c3                   	ret    
c000199a:	66 90                	xchg   %ax,%ax
c000199c:	66 90                	xchg   %ax,%ax
c000199e:	66 90                	xchg   %ax,%ax

c00019a0 <int128_entry>:
c00019a0:	fa                   	cli    
c00019a1:	6a 00                	push   $0x0
c00019a3:	60                   	pusha  
c00019a4:	1e                   	push   %ds
c00019a5:	06                   	push   %es
c00019a6:	0f a0                	push   %fs
c00019a8:	0f a8                	push   %gs
c00019aa:	66 b8 10 00          	mov    $0x10,%ax
c00019ae:	8e d8                	mov    %eax,%ds
c00019b0:	8e c0                	mov    %eax,%es
c00019b2:	8e e0                	mov    %eax,%fs
c00019b4:	b0 20                	mov    $0x20,%al
c00019b6:	e6 20                	out    %al,$0x20
c00019b8:	e6 a0                	out    %al,$0xa0
c00019ba:	68 80 00 00 00       	push   $0x80
c00019bf:	8b 5c 24 44          	mov    0x44(%esp),%ebx
c00019c3:	ff 73 0c             	pushl  0xc(%ebx)
c00019c6:	ff 73 08             	pushl  0x8(%ebx)
c00019c9:	ff 73 04             	pushl  0x4(%ebx)
c00019cc:	8b 33                	mov    (%ebx),%esi
c00019ce:	c1 e6 02             	shl    $0x2,%esi
c00019d1:	fb                   	sti    
c00019d2:	ff 96 40 a0 00 c0    	call   *-0x3fff5fc0(%esi)
c00019d8:	83 c4 0c             	add    $0xc,%esp
c00019db:	89 44 24 30          	mov    %eax,0x30(%esp)
c00019df:	eb 00                	jmp    c00019e1 <exit_int>

c00019e1 <exit_int>:
c00019e1:	83 c4 04             	add    $0x4,%esp
c00019e4:	58                   	pop    %eax
c00019e5:	8e e8                	mov    %eax,%gs
c00019e7:	58                   	pop    %eax
c00019e8:	8e e0                	mov    %eax,%fs
c00019ea:	58                   	pop    %eax
c00019eb:	8e c0                	mov    %eax,%es
c00019ed:	58                   	pop    %eax
c00019ee:	8e d8                	mov    %eax,%ds
c00019f0:	61                   	popa   
c00019f1:	83 c4 04             	add    $0x4,%esp
c00019f4:	cf                   	iret   

c00019f5 <int0_entry>:
c00019f5:	fa                   	cli    
c00019f6:	6a 00                	push   $0x0
c00019f8:	60                   	pusha  
c00019f9:	1e                   	push   %ds
c00019fa:	06                   	push   %es
c00019fb:	0f a0                	push   %fs
c00019fd:	0f a8                	push   %gs
c00019ff:	66 b8 10 00          	mov    $0x10,%ax
c0001a03:	8e d8                	mov    %eax,%ds
c0001a05:	8e c0                	mov    %eax,%es
c0001a07:	8e e0                	mov    %eax,%fs
c0001a09:	b0 20                	mov    $0x20,%al
c0001a0b:	e6 20                	out    %al,$0x20
c0001a0d:	e6 a0                	out    %al,$0xa0
c0001a0f:	6a 00                	push   $0x0
c0001a11:	fb                   	sti    
c0001a12:	ff 15 a0 9c 00 c0    	call   *0xc0009ca0
c0001a18:	eb c7                	jmp    c00019e1 <exit_int>

c0001a1a <int1_entry>:
c0001a1a:	fa                   	cli    
c0001a1b:	6a 00                	push   $0x0
c0001a1d:	60                   	pusha  
c0001a1e:	1e                   	push   %ds
c0001a1f:	06                   	push   %es
c0001a20:	0f a0                	push   %fs
c0001a22:	0f a8                	push   %gs
c0001a24:	66 b8 10 00          	mov    $0x10,%ax
c0001a28:	8e d8                	mov    %eax,%ds
c0001a2a:	8e c0                	mov    %eax,%es
c0001a2c:	8e e0                	mov    %eax,%fs
c0001a2e:	b0 20                	mov    $0x20,%al
c0001a30:	e6 20                	out    %al,$0x20
c0001a32:	e6 a0                	out    %al,$0xa0
c0001a34:	6a 01                	push   $0x1
c0001a36:	fb                   	sti    
c0001a37:	ff 15 a4 9c 00 c0    	call   *0xc0009ca4
c0001a3d:	eb a2                	jmp    c00019e1 <exit_int>

c0001a3f <int2_entry>:
c0001a3f:	fa                   	cli    
c0001a40:	6a 00                	push   $0x0
c0001a42:	60                   	pusha  
c0001a43:	1e                   	push   %ds
c0001a44:	06                   	push   %es
c0001a45:	0f a0                	push   %fs
c0001a47:	0f a8                	push   %gs
c0001a49:	66 b8 10 00          	mov    $0x10,%ax
c0001a4d:	8e d8                	mov    %eax,%ds
c0001a4f:	8e c0                	mov    %eax,%es
c0001a51:	8e e0                	mov    %eax,%fs
c0001a53:	b0 20                	mov    $0x20,%al
c0001a55:	e6 20                	out    %al,$0x20
c0001a57:	e6 a0                	out    %al,$0xa0
c0001a59:	6a 02                	push   $0x2
c0001a5b:	fb                   	sti    
c0001a5c:	ff 15 a8 9c 00 c0    	call   *0xc0009ca8
c0001a62:	e9 7a ff ff ff       	jmp    c00019e1 <exit_int>

c0001a67 <int3_entry>:
c0001a67:	fa                   	cli    
c0001a68:	6a 00                	push   $0x0
c0001a6a:	60                   	pusha  
c0001a6b:	1e                   	push   %ds
c0001a6c:	06                   	push   %es
c0001a6d:	0f a0                	push   %fs
c0001a6f:	0f a8                	push   %gs
c0001a71:	66 b8 10 00          	mov    $0x10,%ax
c0001a75:	8e d8                	mov    %eax,%ds
c0001a77:	8e c0                	mov    %eax,%es
c0001a79:	8e e0                	mov    %eax,%fs
c0001a7b:	b0 20                	mov    $0x20,%al
c0001a7d:	e6 20                	out    %al,$0x20
c0001a7f:	e6 a0                	out    %al,$0xa0
c0001a81:	6a 03                	push   $0x3
c0001a83:	fb                   	sti    
c0001a84:	ff 15 ac 9c 00 c0    	call   *0xc0009cac
c0001a8a:	e9 52 ff ff ff       	jmp    c00019e1 <exit_int>

c0001a8f <int4_entry>:
c0001a8f:	fa                   	cli    
c0001a90:	6a 00                	push   $0x0
c0001a92:	60                   	pusha  
c0001a93:	1e                   	push   %ds
c0001a94:	06                   	push   %es
c0001a95:	0f a0                	push   %fs
c0001a97:	0f a8                	push   %gs
c0001a99:	66 b8 10 00          	mov    $0x10,%ax
c0001a9d:	8e d8                	mov    %eax,%ds
c0001a9f:	8e c0                	mov    %eax,%es
c0001aa1:	8e e0                	mov    %eax,%fs
c0001aa3:	b0 20                	mov    $0x20,%al
c0001aa5:	e6 20                	out    %al,$0x20
c0001aa7:	e6 a0                	out    %al,$0xa0
c0001aa9:	6a 04                	push   $0x4
c0001aab:	fb                   	sti    
c0001aac:	ff 15 b0 9c 00 c0    	call   *0xc0009cb0
c0001ab2:	e9 2a ff ff ff       	jmp    c00019e1 <exit_int>

c0001ab7 <int5_entry>:
c0001ab7:	fa                   	cli    
c0001ab8:	6a 00                	push   $0x0
c0001aba:	60                   	pusha  
c0001abb:	1e                   	push   %ds
c0001abc:	06                   	push   %es
c0001abd:	0f a0                	push   %fs
c0001abf:	0f a8                	push   %gs
c0001ac1:	66 b8 10 00          	mov    $0x10,%ax
c0001ac5:	8e d8                	mov    %eax,%ds
c0001ac7:	8e c0                	mov    %eax,%es
c0001ac9:	8e e0                	mov    %eax,%fs
c0001acb:	b0 20                	mov    $0x20,%al
c0001acd:	e6 20                	out    %al,$0x20
c0001acf:	e6 a0                	out    %al,$0xa0
c0001ad1:	6a 05                	push   $0x5
c0001ad3:	fb                   	sti    
c0001ad4:	ff 15 b4 9c 00 c0    	call   *0xc0009cb4
c0001ada:	e9 02 ff ff ff       	jmp    c00019e1 <exit_int>

c0001adf <int6_entry>:
c0001adf:	fa                   	cli    
c0001ae0:	6a 00                	push   $0x0
c0001ae2:	60                   	pusha  
c0001ae3:	1e                   	push   %ds
c0001ae4:	06                   	push   %es
c0001ae5:	0f a0                	push   %fs
c0001ae7:	0f a8                	push   %gs
c0001ae9:	66 b8 10 00          	mov    $0x10,%ax
c0001aed:	8e d8                	mov    %eax,%ds
c0001aef:	8e c0                	mov    %eax,%es
c0001af1:	8e e0                	mov    %eax,%fs
c0001af3:	b0 20                	mov    $0x20,%al
c0001af5:	e6 20                	out    %al,$0x20
c0001af7:	e6 a0                	out    %al,$0xa0
c0001af9:	6a 06                	push   $0x6
c0001afb:	fb                   	sti    
c0001afc:	ff 15 b8 9c 00 c0    	call   *0xc0009cb8
c0001b02:	e9 da fe ff ff       	jmp    c00019e1 <exit_int>

c0001b07 <int7_entry>:
c0001b07:	fa                   	cli    
c0001b08:	6a 00                	push   $0x0
c0001b0a:	60                   	pusha  
c0001b0b:	1e                   	push   %ds
c0001b0c:	06                   	push   %es
c0001b0d:	0f a0                	push   %fs
c0001b0f:	0f a8                	push   %gs
c0001b11:	66 b8 10 00          	mov    $0x10,%ax
c0001b15:	8e d8                	mov    %eax,%ds
c0001b17:	8e c0                	mov    %eax,%es
c0001b19:	8e e0                	mov    %eax,%fs
c0001b1b:	b0 20                	mov    $0x20,%al
c0001b1d:	e6 20                	out    %al,$0x20
c0001b1f:	e6 a0                	out    %al,$0xa0
c0001b21:	6a 07                	push   $0x7
c0001b23:	fb                   	sti    
c0001b24:	ff 15 bc 9c 00 c0    	call   *0xc0009cbc
c0001b2a:	e9 b2 fe ff ff       	jmp    c00019e1 <exit_int>

c0001b2f <int8_entry>:
c0001b2f:	fa                   	cli    
c0001b30:	90                   	nop
c0001b31:	60                   	pusha  
c0001b32:	1e                   	push   %ds
c0001b33:	06                   	push   %es
c0001b34:	0f a0                	push   %fs
c0001b36:	0f a8                	push   %gs
c0001b38:	66 b8 10 00          	mov    $0x10,%ax
c0001b3c:	8e d8                	mov    %eax,%ds
c0001b3e:	8e c0                	mov    %eax,%es
c0001b40:	8e e0                	mov    %eax,%fs
c0001b42:	b0 20                	mov    $0x20,%al
c0001b44:	e6 20                	out    %al,$0x20
c0001b46:	e6 a0                	out    %al,$0xa0
c0001b48:	6a 08                	push   $0x8
c0001b4a:	fb                   	sti    
c0001b4b:	ff 15 c0 9c 00 c0    	call   *0xc0009cc0
c0001b51:	e9 8b fe ff ff       	jmp    c00019e1 <exit_int>

c0001b56 <int9_entry>:
c0001b56:	fa                   	cli    
c0001b57:	6a 00                	push   $0x0
c0001b59:	60                   	pusha  
c0001b5a:	1e                   	push   %ds
c0001b5b:	06                   	push   %es
c0001b5c:	0f a0                	push   %fs
c0001b5e:	0f a8                	push   %gs
c0001b60:	66 b8 10 00          	mov    $0x10,%ax
c0001b64:	8e d8                	mov    %eax,%ds
c0001b66:	8e c0                	mov    %eax,%es
c0001b68:	8e e0                	mov    %eax,%fs
c0001b6a:	b0 20                	mov    $0x20,%al
c0001b6c:	e6 20                	out    %al,$0x20
c0001b6e:	e6 a0                	out    %al,$0xa0
c0001b70:	6a 09                	push   $0x9
c0001b72:	fb                   	sti    
c0001b73:	ff 15 c4 9c 00 c0    	call   *0xc0009cc4
c0001b79:	e9 63 fe ff ff       	jmp    c00019e1 <exit_int>

c0001b7e <int10_entry>:
c0001b7e:	fa                   	cli    
c0001b7f:	90                   	nop
c0001b80:	60                   	pusha  
c0001b81:	1e                   	push   %ds
c0001b82:	06                   	push   %es
c0001b83:	0f a0                	push   %fs
c0001b85:	0f a8                	push   %gs
c0001b87:	66 b8 10 00          	mov    $0x10,%ax
c0001b8b:	8e d8                	mov    %eax,%ds
c0001b8d:	8e c0                	mov    %eax,%es
c0001b8f:	8e e0                	mov    %eax,%fs
c0001b91:	b0 20                	mov    $0x20,%al
c0001b93:	e6 20                	out    %al,$0x20
c0001b95:	e6 a0                	out    %al,$0xa0
c0001b97:	6a 0a                	push   $0xa
c0001b99:	fb                   	sti    
c0001b9a:	ff 15 c8 9c 00 c0    	call   *0xc0009cc8
c0001ba0:	e9 3c fe ff ff       	jmp    c00019e1 <exit_int>

c0001ba5 <int11_entry>:
c0001ba5:	fa                   	cli    
c0001ba6:	90                   	nop
c0001ba7:	60                   	pusha  
c0001ba8:	1e                   	push   %ds
c0001ba9:	06                   	push   %es
c0001baa:	0f a0                	push   %fs
c0001bac:	0f a8                	push   %gs
c0001bae:	66 b8 10 00          	mov    $0x10,%ax
c0001bb2:	8e d8                	mov    %eax,%ds
c0001bb4:	8e c0                	mov    %eax,%es
c0001bb6:	8e e0                	mov    %eax,%fs
c0001bb8:	b0 20                	mov    $0x20,%al
c0001bba:	e6 20                	out    %al,$0x20
c0001bbc:	e6 a0                	out    %al,$0xa0
c0001bbe:	6a 0b                	push   $0xb
c0001bc0:	fb                   	sti    
c0001bc1:	ff 15 cc 9c 00 c0    	call   *0xc0009ccc
c0001bc7:	e9 15 fe ff ff       	jmp    c00019e1 <exit_int>

c0001bcc <int12_entry>:
c0001bcc:	fa                   	cli    
c0001bcd:	90                   	nop
c0001bce:	60                   	pusha  
c0001bcf:	1e                   	push   %ds
c0001bd0:	06                   	push   %es
c0001bd1:	0f a0                	push   %fs
c0001bd3:	0f a8                	push   %gs
c0001bd5:	66 b8 10 00          	mov    $0x10,%ax
c0001bd9:	8e d8                	mov    %eax,%ds
c0001bdb:	8e c0                	mov    %eax,%es
c0001bdd:	8e e0                	mov    %eax,%fs
c0001bdf:	b0 20                	mov    $0x20,%al
c0001be1:	e6 20                	out    %al,$0x20
c0001be3:	e6 a0                	out    %al,$0xa0
c0001be5:	6a 0c                	push   $0xc
c0001be7:	fb                   	sti    
c0001be8:	ff 15 d0 9c 00 c0    	call   *0xc0009cd0
c0001bee:	e9 ee fd ff ff       	jmp    c00019e1 <exit_int>

c0001bf3 <int13_entry>:
c0001bf3:	fa                   	cli    
c0001bf4:	90                   	nop
c0001bf5:	60                   	pusha  
c0001bf6:	1e                   	push   %ds
c0001bf7:	06                   	push   %es
c0001bf8:	0f a0                	push   %fs
c0001bfa:	0f a8                	push   %gs
c0001bfc:	66 b8 10 00          	mov    $0x10,%ax
c0001c00:	8e d8                	mov    %eax,%ds
c0001c02:	8e c0                	mov    %eax,%es
c0001c04:	8e e0                	mov    %eax,%fs
c0001c06:	b0 20                	mov    $0x20,%al
c0001c08:	e6 20                	out    %al,$0x20
c0001c0a:	e6 a0                	out    %al,$0xa0
c0001c0c:	6a 0d                	push   $0xd
c0001c0e:	fb                   	sti    
c0001c0f:	ff 15 d4 9c 00 c0    	call   *0xc0009cd4
c0001c15:	e9 c7 fd ff ff       	jmp    c00019e1 <exit_int>

c0001c1a <int14_entry>:
c0001c1a:	fa                   	cli    
c0001c1b:	90                   	nop
c0001c1c:	60                   	pusha  
c0001c1d:	1e                   	push   %ds
c0001c1e:	06                   	push   %es
c0001c1f:	0f a0                	push   %fs
c0001c21:	0f a8                	push   %gs
c0001c23:	66 b8 10 00          	mov    $0x10,%ax
c0001c27:	8e d8                	mov    %eax,%ds
c0001c29:	8e c0                	mov    %eax,%es
c0001c2b:	8e e0                	mov    %eax,%fs
c0001c2d:	b0 20                	mov    $0x20,%al
c0001c2f:	e6 20                	out    %al,$0x20
c0001c31:	e6 a0                	out    %al,$0xa0
c0001c33:	6a 0e                	push   $0xe
c0001c35:	fb                   	sti    
c0001c36:	ff 15 d8 9c 00 c0    	call   *0xc0009cd8
c0001c3c:	e9 a0 fd ff ff       	jmp    c00019e1 <exit_int>

c0001c41 <int15_entry>:
c0001c41:	fa                   	cli    
c0001c42:	6a 00                	push   $0x0
c0001c44:	60                   	pusha  
c0001c45:	1e                   	push   %ds
c0001c46:	06                   	push   %es
c0001c47:	0f a0                	push   %fs
c0001c49:	0f a8                	push   %gs
c0001c4b:	66 b8 10 00          	mov    $0x10,%ax
c0001c4f:	8e d8                	mov    %eax,%ds
c0001c51:	8e c0                	mov    %eax,%es
c0001c53:	8e e0                	mov    %eax,%fs
c0001c55:	b0 20                	mov    $0x20,%al
c0001c57:	e6 20                	out    %al,$0x20
c0001c59:	e6 a0                	out    %al,$0xa0
c0001c5b:	6a 0f                	push   $0xf
c0001c5d:	fb                   	sti    
c0001c5e:	ff 15 dc 9c 00 c0    	call   *0xc0009cdc
c0001c64:	e9 78 fd ff ff       	jmp    c00019e1 <exit_int>

c0001c69 <int16_entry>:
c0001c69:	fa                   	cli    
c0001c6a:	6a 00                	push   $0x0
c0001c6c:	60                   	pusha  
c0001c6d:	1e                   	push   %ds
c0001c6e:	06                   	push   %es
c0001c6f:	0f a0                	push   %fs
c0001c71:	0f a8                	push   %gs
c0001c73:	66 b8 10 00          	mov    $0x10,%ax
c0001c77:	8e d8                	mov    %eax,%ds
c0001c79:	8e c0                	mov    %eax,%es
c0001c7b:	8e e0                	mov    %eax,%fs
c0001c7d:	b0 20                	mov    $0x20,%al
c0001c7f:	e6 20                	out    %al,$0x20
c0001c81:	e6 a0                	out    %al,$0xa0
c0001c83:	6a 10                	push   $0x10
c0001c85:	fb                   	sti    
c0001c86:	ff 15 e0 9c 00 c0    	call   *0xc0009ce0
c0001c8c:	e9 50 fd ff ff       	jmp    c00019e1 <exit_int>

c0001c91 <int17_entry>:
c0001c91:	fa                   	cli    
c0001c92:	90                   	nop
c0001c93:	60                   	pusha  
c0001c94:	1e                   	push   %ds
c0001c95:	06                   	push   %es
c0001c96:	0f a0                	push   %fs
c0001c98:	0f a8                	push   %gs
c0001c9a:	66 b8 10 00          	mov    $0x10,%ax
c0001c9e:	8e d8                	mov    %eax,%ds
c0001ca0:	8e c0                	mov    %eax,%es
c0001ca2:	8e e0                	mov    %eax,%fs
c0001ca4:	b0 20                	mov    $0x20,%al
c0001ca6:	e6 20                	out    %al,$0x20
c0001ca8:	e6 a0                	out    %al,$0xa0
c0001caa:	6a 11                	push   $0x11
c0001cac:	fb                   	sti    
c0001cad:	ff 15 e4 9c 00 c0    	call   *0xc0009ce4
c0001cb3:	e9 29 fd ff ff       	jmp    c00019e1 <exit_int>

c0001cb8 <int18_entry>:
c0001cb8:	fa                   	cli    
c0001cb9:	6a 00                	push   $0x0
c0001cbb:	60                   	pusha  
c0001cbc:	1e                   	push   %ds
c0001cbd:	06                   	push   %es
c0001cbe:	0f a0                	push   %fs
c0001cc0:	0f a8                	push   %gs
c0001cc2:	66 b8 10 00          	mov    $0x10,%ax
c0001cc6:	8e d8                	mov    %eax,%ds
c0001cc8:	8e c0                	mov    %eax,%es
c0001cca:	8e e0                	mov    %eax,%fs
c0001ccc:	b0 20                	mov    $0x20,%al
c0001cce:	e6 20                	out    %al,$0x20
c0001cd0:	e6 a0                	out    %al,$0xa0
c0001cd2:	6a 12                	push   $0x12
c0001cd4:	fb                   	sti    
c0001cd5:	ff 15 e8 9c 00 c0    	call   *0xc0009ce8
c0001cdb:	e9 01 fd ff ff       	jmp    c00019e1 <exit_int>

c0001ce0 <int19_entry>:
c0001ce0:	fa                   	cli    
c0001ce1:	6a 00                	push   $0x0
c0001ce3:	60                   	pusha  
c0001ce4:	1e                   	push   %ds
c0001ce5:	06                   	push   %es
c0001ce6:	0f a0                	push   %fs
c0001ce8:	0f a8                	push   %gs
c0001cea:	66 b8 10 00          	mov    $0x10,%ax
c0001cee:	8e d8                	mov    %eax,%ds
c0001cf0:	8e c0                	mov    %eax,%es
c0001cf2:	8e e0                	mov    %eax,%fs
c0001cf4:	b0 20                	mov    $0x20,%al
c0001cf6:	e6 20                	out    %al,$0x20
c0001cf8:	e6 a0                	out    %al,$0xa0
c0001cfa:	6a 13                	push   $0x13
c0001cfc:	fb                   	sti    
c0001cfd:	ff 15 ec 9c 00 c0    	call   *0xc0009cec
c0001d03:	e9 d9 fc ff ff       	jmp    c00019e1 <exit_int>

c0001d08 <int20_entry>:
c0001d08:	fa                   	cli    
c0001d09:	6a 00                	push   $0x0
c0001d0b:	60                   	pusha  
c0001d0c:	1e                   	push   %ds
c0001d0d:	06                   	push   %es
c0001d0e:	0f a0                	push   %fs
c0001d10:	0f a8                	push   %gs
c0001d12:	66 b8 10 00          	mov    $0x10,%ax
c0001d16:	8e d8                	mov    %eax,%ds
c0001d18:	8e c0                	mov    %eax,%es
c0001d1a:	8e e0                	mov    %eax,%fs
c0001d1c:	b0 20                	mov    $0x20,%al
c0001d1e:	e6 20                	out    %al,$0x20
c0001d20:	e6 a0                	out    %al,$0xa0
c0001d22:	6a 14                	push   $0x14
c0001d24:	fb                   	sti    
c0001d25:	ff 15 f0 9c 00 c0    	call   *0xc0009cf0
c0001d2b:	e9 b1 fc ff ff       	jmp    c00019e1 <exit_int>

c0001d30 <int21_entry>:
c0001d30:	fa                   	cli    
c0001d31:	6a 00                	push   $0x0
c0001d33:	60                   	pusha  
c0001d34:	1e                   	push   %ds
c0001d35:	06                   	push   %es
c0001d36:	0f a0                	push   %fs
c0001d38:	0f a8                	push   %gs
c0001d3a:	66 b8 10 00          	mov    $0x10,%ax
c0001d3e:	8e d8                	mov    %eax,%ds
c0001d40:	8e c0                	mov    %eax,%es
c0001d42:	8e e0                	mov    %eax,%fs
c0001d44:	b0 20                	mov    $0x20,%al
c0001d46:	e6 20                	out    %al,$0x20
c0001d48:	e6 a0                	out    %al,$0xa0
c0001d4a:	6a 15                	push   $0x15
c0001d4c:	fb                   	sti    
c0001d4d:	ff 15 f4 9c 00 c0    	call   *0xc0009cf4
c0001d53:	e9 89 fc ff ff       	jmp    c00019e1 <exit_int>

c0001d58 <int22_entry>:
c0001d58:	fa                   	cli    
c0001d59:	6a 00                	push   $0x0
c0001d5b:	60                   	pusha  
c0001d5c:	1e                   	push   %ds
c0001d5d:	06                   	push   %es
c0001d5e:	0f a0                	push   %fs
c0001d60:	0f a8                	push   %gs
c0001d62:	66 b8 10 00          	mov    $0x10,%ax
c0001d66:	8e d8                	mov    %eax,%ds
c0001d68:	8e c0                	mov    %eax,%es
c0001d6a:	8e e0                	mov    %eax,%fs
c0001d6c:	b0 20                	mov    $0x20,%al
c0001d6e:	e6 20                	out    %al,$0x20
c0001d70:	e6 a0                	out    %al,$0xa0
c0001d72:	6a 16                	push   $0x16
c0001d74:	fb                   	sti    
c0001d75:	ff 15 f8 9c 00 c0    	call   *0xc0009cf8
c0001d7b:	e9 61 fc ff ff       	jmp    c00019e1 <exit_int>

c0001d80 <int23_entry>:
c0001d80:	fa                   	cli    
c0001d81:	6a 00                	push   $0x0
c0001d83:	60                   	pusha  
c0001d84:	1e                   	push   %ds
c0001d85:	06                   	push   %es
c0001d86:	0f a0                	push   %fs
c0001d88:	0f a8                	push   %gs
c0001d8a:	66 b8 10 00          	mov    $0x10,%ax
c0001d8e:	8e d8                	mov    %eax,%ds
c0001d90:	8e c0                	mov    %eax,%es
c0001d92:	8e e0                	mov    %eax,%fs
c0001d94:	b0 20                	mov    $0x20,%al
c0001d96:	e6 20                	out    %al,$0x20
c0001d98:	e6 a0                	out    %al,$0xa0
c0001d9a:	6a 17                	push   $0x17
c0001d9c:	fb                   	sti    
c0001d9d:	ff 15 fc 9c 00 c0    	call   *0xc0009cfc
c0001da3:	e9 39 fc ff ff       	jmp    c00019e1 <exit_int>

c0001da8 <int24_entry>:
c0001da8:	fa                   	cli    
c0001da9:	6a 00                	push   $0x0
c0001dab:	60                   	pusha  
c0001dac:	1e                   	push   %ds
c0001dad:	06                   	push   %es
c0001dae:	0f a0                	push   %fs
c0001db0:	0f a8                	push   %gs
c0001db2:	66 b8 10 00          	mov    $0x10,%ax
c0001db6:	8e d8                	mov    %eax,%ds
c0001db8:	8e c0                	mov    %eax,%es
c0001dba:	8e e0                	mov    %eax,%fs
c0001dbc:	b0 20                	mov    $0x20,%al
c0001dbe:	e6 20                	out    %al,$0x20
c0001dc0:	e6 a0                	out    %al,$0xa0
c0001dc2:	6a 18                	push   $0x18
c0001dc4:	fb                   	sti    
c0001dc5:	ff 15 00 9d 00 c0    	call   *0xc0009d00
c0001dcb:	e9 11 fc ff ff       	jmp    c00019e1 <exit_int>

c0001dd0 <int25_entry>:
c0001dd0:	fa                   	cli    
c0001dd1:	6a 00                	push   $0x0
c0001dd3:	60                   	pusha  
c0001dd4:	1e                   	push   %ds
c0001dd5:	06                   	push   %es
c0001dd6:	0f a0                	push   %fs
c0001dd8:	0f a8                	push   %gs
c0001dda:	66 b8 10 00          	mov    $0x10,%ax
c0001dde:	8e d8                	mov    %eax,%ds
c0001de0:	8e c0                	mov    %eax,%es
c0001de2:	8e e0                	mov    %eax,%fs
c0001de4:	b0 20                	mov    $0x20,%al
c0001de6:	e6 20                	out    %al,$0x20
c0001de8:	e6 a0                	out    %al,$0xa0
c0001dea:	6a 19                	push   $0x19
c0001dec:	fb                   	sti    
c0001ded:	ff 15 04 9d 00 c0    	call   *0xc0009d04
c0001df3:	e9 e9 fb ff ff       	jmp    c00019e1 <exit_int>

c0001df8 <int26_entry>:
c0001df8:	fa                   	cli    
c0001df9:	6a 00                	push   $0x0
c0001dfb:	60                   	pusha  
c0001dfc:	1e                   	push   %ds
c0001dfd:	06                   	push   %es
c0001dfe:	0f a0                	push   %fs
c0001e00:	0f a8                	push   %gs
c0001e02:	66 b8 10 00          	mov    $0x10,%ax
c0001e06:	8e d8                	mov    %eax,%ds
c0001e08:	8e c0                	mov    %eax,%es
c0001e0a:	8e e0                	mov    %eax,%fs
c0001e0c:	b0 20                	mov    $0x20,%al
c0001e0e:	e6 20                	out    %al,$0x20
c0001e10:	e6 a0                	out    %al,$0xa0
c0001e12:	6a 1a                	push   $0x1a
c0001e14:	fb                   	sti    
c0001e15:	ff 15 08 9d 00 c0    	call   *0xc0009d08
c0001e1b:	e9 c1 fb ff ff       	jmp    c00019e1 <exit_int>

c0001e20 <int27_entry>:
c0001e20:	fa                   	cli    
c0001e21:	6a 00                	push   $0x0
c0001e23:	60                   	pusha  
c0001e24:	1e                   	push   %ds
c0001e25:	06                   	push   %es
c0001e26:	0f a0                	push   %fs
c0001e28:	0f a8                	push   %gs
c0001e2a:	66 b8 10 00          	mov    $0x10,%ax
c0001e2e:	8e d8                	mov    %eax,%ds
c0001e30:	8e c0                	mov    %eax,%es
c0001e32:	8e e0                	mov    %eax,%fs
c0001e34:	b0 20                	mov    $0x20,%al
c0001e36:	e6 20                	out    %al,$0x20
c0001e38:	e6 a0                	out    %al,$0xa0
c0001e3a:	6a 1b                	push   $0x1b
c0001e3c:	fb                   	sti    
c0001e3d:	ff 15 0c 9d 00 c0    	call   *0xc0009d0c
c0001e43:	e9 99 fb ff ff       	jmp    c00019e1 <exit_int>

c0001e48 <int28_entry>:
c0001e48:	fa                   	cli    
c0001e49:	6a 00                	push   $0x0
c0001e4b:	60                   	pusha  
c0001e4c:	1e                   	push   %ds
c0001e4d:	06                   	push   %es
c0001e4e:	0f a0                	push   %fs
c0001e50:	0f a8                	push   %gs
c0001e52:	66 b8 10 00          	mov    $0x10,%ax
c0001e56:	8e d8                	mov    %eax,%ds
c0001e58:	8e c0                	mov    %eax,%es
c0001e5a:	8e e0                	mov    %eax,%fs
c0001e5c:	b0 20                	mov    $0x20,%al
c0001e5e:	e6 20                	out    %al,$0x20
c0001e60:	e6 a0                	out    %al,$0xa0
c0001e62:	6a 1c                	push   $0x1c
c0001e64:	fb                   	sti    
c0001e65:	ff 15 10 9d 00 c0    	call   *0xc0009d10
c0001e6b:	e9 71 fb ff ff       	jmp    c00019e1 <exit_int>

c0001e70 <int29_entry>:
c0001e70:	fa                   	cli    
c0001e71:	6a 00                	push   $0x0
c0001e73:	60                   	pusha  
c0001e74:	1e                   	push   %ds
c0001e75:	06                   	push   %es
c0001e76:	0f a0                	push   %fs
c0001e78:	0f a8                	push   %gs
c0001e7a:	66 b8 10 00          	mov    $0x10,%ax
c0001e7e:	8e d8                	mov    %eax,%ds
c0001e80:	8e c0                	mov    %eax,%es
c0001e82:	8e e0                	mov    %eax,%fs
c0001e84:	b0 20                	mov    $0x20,%al
c0001e86:	e6 20                	out    %al,$0x20
c0001e88:	e6 a0                	out    %al,$0xa0
c0001e8a:	6a 1d                	push   $0x1d
c0001e8c:	fb                   	sti    
c0001e8d:	ff 15 14 9d 00 c0    	call   *0xc0009d14
c0001e93:	e9 49 fb ff ff       	jmp    c00019e1 <exit_int>

c0001e98 <int30_entry>:
c0001e98:	fa                   	cli    
c0001e99:	6a 00                	push   $0x0
c0001e9b:	60                   	pusha  
c0001e9c:	1e                   	push   %ds
c0001e9d:	06                   	push   %es
c0001e9e:	0f a0                	push   %fs
c0001ea0:	0f a8                	push   %gs
c0001ea2:	66 b8 10 00          	mov    $0x10,%ax
c0001ea6:	8e d8                	mov    %eax,%ds
c0001ea8:	8e c0                	mov    %eax,%es
c0001eaa:	8e e0                	mov    %eax,%fs
c0001eac:	b0 20                	mov    $0x20,%al
c0001eae:	e6 20                	out    %al,$0x20
c0001eb0:	e6 a0                	out    %al,$0xa0
c0001eb2:	6a 1e                	push   $0x1e
c0001eb4:	fb                   	sti    
c0001eb5:	ff 15 18 9d 00 c0    	call   *0xc0009d18
c0001ebb:	e9 21 fb ff ff       	jmp    c00019e1 <exit_int>

c0001ec0 <int31_entry>:
c0001ec0:	fa                   	cli    
c0001ec1:	6a 00                	push   $0x0
c0001ec3:	60                   	pusha  
c0001ec4:	1e                   	push   %ds
c0001ec5:	06                   	push   %es
c0001ec6:	0f a0                	push   %fs
c0001ec8:	0f a8                	push   %gs
c0001eca:	66 b8 10 00          	mov    $0x10,%ax
c0001ece:	8e d8                	mov    %eax,%ds
c0001ed0:	8e c0                	mov    %eax,%es
c0001ed2:	8e e0                	mov    %eax,%fs
c0001ed4:	b0 20                	mov    $0x20,%al
c0001ed6:	e6 20                	out    %al,$0x20
c0001ed8:	e6 a0                	out    %al,$0xa0
c0001eda:	6a 1f                	push   $0x1f
c0001edc:	fb                   	sti    
c0001edd:	ff 15 1c 9d 00 c0    	call   *0xc0009d1c
c0001ee3:	e9 f9 fa ff ff       	jmp    c00019e1 <exit_int>

c0001ee8 <int32_entry>:
c0001ee8:	fa                   	cli    
c0001ee9:	6a 00                	push   $0x0
c0001eeb:	60                   	pusha  
c0001eec:	1e                   	push   %ds
c0001eed:	06                   	push   %es
c0001eee:	0f a0                	push   %fs
c0001ef0:	0f a8                	push   %gs
c0001ef2:	66 b8 10 00          	mov    $0x10,%ax
c0001ef6:	8e d8                	mov    %eax,%ds
c0001ef8:	8e c0                	mov    %eax,%es
c0001efa:	8e e0                	mov    %eax,%fs
c0001efc:	b0 20                	mov    $0x20,%al
c0001efe:	e6 20                	out    %al,$0x20
c0001f00:	e6 a0                	out    %al,$0xa0
c0001f02:	6a 20                	push   $0x20
c0001f04:	fb                   	sti    
c0001f05:	ff 15 20 9d 00 c0    	call   *0xc0009d20
c0001f0b:	e9 d1 fa ff ff       	jmp    c00019e1 <exit_int>

c0001f10 <int33_entry>:
c0001f10:	fa                   	cli    
c0001f11:	6a 00                	push   $0x0
c0001f13:	60                   	pusha  
c0001f14:	1e                   	push   %ds
c0001f15:	06                   	push   %es
c0001f16:	0f a0                	push   %fs
c0001f18:	0f a8                	push   %gs
c0001f1a:	66 b8 10 00          	mov    $0x10,%ax
c0001f1e:	8e d8                	mov    %eax,%ds
c0001f20:	8e c0                	mov    %eax,%es
c0001f22:	8e e0                	mov    %eax,%fs
c0001f24:	b0 20                	mov    $0x20,%al
c0001f26:	e6 20                	out    %al,$0x20
c0001f28:	e6 a0                	out    %al,$0xa0
c0001f2a:	6a 21                	push   $0x21
c0001f2c:	fb                   	sti    
c0001f2d:	ff 15 24 9d 00 c0    	call   *0xc0009d24
c0001f33:	e9 a9 fa ff ff       	jmp    c00019e1 <exit_int>

c0001f38 <int34_entry>:
c0001f38:	fa                   	cli    
c0001f39:	6a 00                	push   $0x0
c0001f3b:	60                   	pusha  
c0001f3c:	1e                   	push   %ds
c0001f3d:	06                   	push   %es
c0001f3e:	0f a0                	push   %fs
c0001f40:	0f a8                	push   %gs
c0001f42:	66 b8 10 00          	mov    $0x10,%ax
c0001f46:	8e d8                	mov    %eax,%ds
c0001f48:	8e c0                	mov    %eax,%es
c0001f4a:	8e e0                	mov    %eax,%fs
c0001f4c:	b0 20                	mov    $0x20,%al
c0001f4e:	e6 20                	out    %al,$0x20
c0001f50:	e6 a0                	out    %al,$0xa0
c0001f52:	6a 22                	push   $0x22
c0001f54:	fb                   	sti    
c0001f55:	ff 15 28 9d 00 c0    	call   *0xc0009d28
c0001f5b:	e9 81 fa ff ff       	jmp    c00019e1 <exit_int>

c0001f60 <int35_entry>:
c0001f60:	fa                   	cli    
c0001f61:	6a 00                	push   $0x0
c0001f63:	60                   	pusha  
c0001f64:	1e                   	push   %ds
c0001f65:	06                   	push   %es
c0001f66:	0f a0                	push   %fs
c0001f68:	0f a8                	push   %gs
c0001f6a:	66 b8 10 00          	mov    $0x10,%ax
c0001f6e:	8e d8                	mov    %eax,%ds
c0001f70:	8e c0                	mov    %eax,%es
c0001f72:	8e e0                	mov    %eax,%fs
c0001f74:	b0 20                	mov    $0x20,%al
c0001f76:	e6 20                	out    %al,$0x20
c0001f78:	e6 a0                	out    %al,$0xa0
c0001f7a:	6a 23                	push   $0x23
c0001f7c:	fb                   	sti    
c0001f7d:	ff 15 2c 9d 00 c0    	call   *0xc0009d2c
c0001f83:	e9 59 fa ff ff       	jmp    c00019e1 <exit_int>

c0001f88 <int36_entry>:
c0001f88:	fa                   	cli    
c0001f89:	6a 00                	push   $0x0
c0001f8b:	60                   	pusha  
c0001f8c:	1e                   	push   %ds
c0001f8d:	06                   	push   %es
c0001f8e:	0f a0                	push   %fs
c0001f90:	0f a8                	push   %gs
c0001f92:	66 b8 10 00          	mov    $0x10,%ax
c0001f96:	8e d8                	mov    %eax,%ds
c0001f98:	8e c0                	mov    %eax,%es
c0001f9a:	8e e0                	mov    %eax,%fs
c0001f9c:	b0 20                	mov    $0x20,%al
c0001f9e:	e6 20                	out    %al,$0x20
c0001fa0:	e6 a0                	out    %al,$0xa0
c0001fa2:	6a 24                	push   $0x24
c0001fa4:	fb                   	sti    
c0001fa5:	ff 15 30 9d 00 c0    	call   *0xc0009d30
c0001fab:	e9 31 fa ff ff       	jmp    c00019e1 <exit_int>

c0001fb0 <int37_entry>:
c0001fb0:	fa                   	cli    
c0001fb1:	6a 00                	push   $0x0
c0001fb3:	60                   	pusha  
c0001fb4:	1e                   	push   %ds
c0001fb5:	06                   	push   %es
c0001fb6:	0f a0                	push   %fs
c0001fb8:	0f a8                	push   %gs
c0001fba:	66 b8 10 00          	mov    $0x10,%ax
c0001fbe:	8e d8                	mov    %eax,%ds
c0001fc0:	8e c0                	mov    %eax,%es
c0001fc2:	8e e0                	mov    %eax,%fs
c0001fc4:	b0 20                	mov    $0x20,%al
c0001fc6:	e6 20                	out    %al,$0x20
c0001fc8:	e6 a0                	out    %al,$0xa0
c0001fca:	6a 25                	push   $0x25
c0001fcc:	fb                   	sti    
c0001fcd:	ff 15 34 9d 00 c0    	call   *0xc0009d34
c0001fd3:	e9 09 fa ff ff       	jmp    c00019e1 <exit_int>

c0001fd8 <int38_entry>:
c0001fd8:	fa                   	cli    
c0001fd9:	6a 00                	push   $0x0
c0001fdb:	60                   	pusha  
c0001fdc:	1e                   	push   %ds
c0001fdd:	06                   	push   %es
c0001fde:	0f a0                	push   %fs
c0001fe0:	0f a8                	push   %gs
c0001fe2:	66 b8 10 00          	mov    $0x10,%ax
c0001fe6:	8e d8                	mov    %eax,%ds
c0001fe8:	8e c0                	mov    %eax,%es
c0001fea:	8e e0                	mov    %eax,%fs
c0001fec:	b0 20                	mov    $0x20,%al
c0001fee:	e6 20                	out    %al,$0x20
c0001ff0:	e6 a0                	out    %al,$0xa0
c0001ff2:	6a 26                	push   $0x26
c0001ff4:	fb                   	sti    
c0001ff5:	ff 15 38 9d 00 c0    	call   *0xc0009d38
c0001ffb:	e9 e1 f9 ff ff       	jmp    c00019e1 <exit_int>

c0002000 <int39_entry>:
c0002000:	fa                   	cli    
c0002001:	6a 00                	push   $0x0
c0002003:	60                   	pusha  
c0002004:	1e                   	push   %ds
c0002005:	06                   	push   %es
c0002006:	0f a0                	push   %fs
c0002008:	0f a8                	push   %gs
c000200a:	66 b8 10 00          	mov    $0x10,%ax
c000200e:	8e d8                	mov    %eax,%ds
c0002010:	8e c0                	mov    %eax,%es
c0002012:	8e e0                	mov    %eax,%fs
c0002014:	b0 20                	mov    $0x20,%al
c0002016:	e6 20                	out    %al,$0x20
c0002018:	e6 a0                	out    %al,$0xa0
c000201a:	6a 27                	push   $0x27
c000201c:	fb                   	sti    
c000201d:	ff 15 3c 9d 00 c0    	call   *0xc0009d3c
c0002023:	e9 b9 f9 ff ff       	jmp    c00019e1 <exit_int>

c0002028 <int40_entry>:
c0002028:	fa                   	cli    
c0002029:	6a 00                	push   $0x0
c000202b:	60                   	pusha  
c000202c:	1e                   	push   %ds
c000202d:	06                   	push   %es
c000202e:	0f a0                	push   %fs
c0002030:	0f a8                	push   %gs
c0002032:	66 b8 10 00          	mov    $0x10,%ax
c0002036:	8e d8                	mov    %eax,%ds
c0002038:	8e c0                	mov    %eax,%es
c000203a:	8e e0                	mov    %eax,%fs
c000203c:	b0 20                	mov    $0x20,%al
c000203e:	e6 20                	out    %al,$0x20
c0002040:	e6 a0                	out    %al,$0xa0
c0002042:	6a 28                	push   $0x28
c0002044:	fb                   	sti    
c0002045:	ff 15 40 9d 00 c0    	call   *0xc0009d40
c000204b:	e9 91 f9 ff ff       	jmp    c00019e1 <exit_int>

c0002050 <int41_entry>:
c0002050:	fa                   	cli    
c0002051:	6a 00                	push   $0x0
c0002053:	60                   	pusha  
c0002054:	1e                   	push   %ds
c0002055:	06                   	push   %es
c0002056:	0f a0                	push   %fs
c0002058:	0f a8                	push   %gs
c000205a:	66 b8 10 00          	mov    $0x10,%ax
c000205e:	8e d8                	mov    %eax,%ds
c0002060:	8e c0                	mov    %eax,%es
c0002062:	8e e0                	mov    %eax,%fs
c0002064:	b0 20                	mov    $0x20,%al
c0002066:	e6 20                	out    %al,$0x20
c0002068:	e6 a0                	out    %al,$0xa0
c000206a:	6a 29                	push   $0x29
c000206c:	fb                   	sti    
c000206d:	ff 15 44 9d 00 c0    	call   *0xc0009d44
c0002073:	e9 69 f9 ff ff       	jmp    c00019e1 <exit_int>

c0002078 <int42_entry>:
c0002078:	fa                   	cli    
c0002079:	6a 00                	push   $0x0
c000207b:	60                   	pusha  
c000207c:	1e                   	push   %ds
c000207d:	06                   	push   %es
c000207e:	0f a0                	push   %fs
c0002080:	0f a8                	push   %gs
c0002082:	66 b8 10 00          	mov    $0x10,%ax
c0002086:	8e d8                	mov    %eax,%ds
c0002088:	8e c0                	mov    %eax,%es
c000208a:	8e e0                	mov    %eax,%fs
c000208c:	b0 20                	mov    $0x20,%al
c000208e:	e6 20                	out    %al,$0x20
c0002090:	e6 a0                	out    %al,$0xa0
c0002092:	6a 2a                	push   $0x2a
c0002094:	fb                   	sti    
c0002095:	ff 15 48 9d 00 c0    	call   *0xc0009d48
c000209b:	e9 41 f9 ff ff       	jmp    c00019e1 <exit_int>

c00020a0 <int43_entry>:
c00020a0:	fa                   	cli    
c00020a1:	6a 00                	push   $0x0
c00020a3:	60                   	pusha  
c00020a4:	1e                   	push   %ds
c00020a5:	06                   	push   %es
c00020a6:	0f a0                	push   %fs
c00020a8:	0f a8                	push   %gs
c00020aa:	66 b8 10 00          	mov    $0x10,%ax
c00020ae:	8e d8                	mov    %eax,%ds
c00020b0:	8e c0                	mov    %eax,%es
c00020b2:	8e e0                	mov    %eax,%fs
c00020b4:	b0 20                	mov    $0x20,%al
c00020b6:	e6 20                	out    %al,$0x20
c00020b8:	e6 a0                	out    %al,$0xa0
c00020ba:	6a 2b                	push   $0x2b
c00020bc:	fb                   	sti    
c00020bd:	ff 15 4c 9d 00 c0    	call   *0xc0009d4c
c00020c3:	e9 19 f9 ff ff       	jmp    c00019e1 <exit_int>

c00020c8 <int44_entry>:
c00020c8:	fa                   	cli    
c00020c9:	6a 00                	push   $0x0
c00020cb:	60                   	pusha  
c00020cc:	1e                   	push   %ds
c00020cd:	06                   	push   %es
c00020ce:	0f a0                	push   %fs
c00020d0:	0f a8                	push   %gs
c00020d2:	66 b8 10 00          	mov    $0x10,%ax
c00020d6:	8e d8                	mov    %eax,%ds
c00020d8:	8e c0                	mov    %eax,%es
c00020da:	8e e0                	mov    %eax,%fs
c00020dc:	b0 20                	mov    $0x20,%al
c00020de:	e6 20                	out    %al,$0x20
c00020e0:	e6 a0                	out    %al,$0xa0
c00020e2:	6a 2c                	push   $0x2c
c00020e4:	fb                   	sti    
c00020e5:	ff 15 50 9d 00 c0    	call   *0xc0009d50
c00020eb:	e9 f1 f8 ff ff       	jmp    c00019e1 <exit_int>

c00020f0 <int45_entry>:
c00020f0:	fa                   	cli    
c00020f1:	6a 00                	push   $0x0
c00020f3:	60                   	pusha  
c00020f4:	1e                   	push   %ds
c00020f5:	06                   	push   %es
c00020f6:	0f a0                	push   %fs
c00020f8:	0f a8                	push   %gs
c00020fa:	66 b8 10 00          	mov    $0x10,%ax
c00020fe:	8e d8                	mov    %eax,%ds
c0002100:	8e c0                	mov    %eax,%es
c0002102:	8e e0                	mov    %eax,%fs
c0002104:	b0 20                	mov    $0x20,%al
c0002106:	e6 20                	out    %al,$0x20
c0002108:	e6 a0                	out    %al,$0xa0
c000210a:	6a 2d                	push   $0x2d
c000210c:	fb                   	sti    
c000210d:	ff 15 54 9d 00 c0    	call   *0xc0009d54
c0002113:	e9 c9 f8 ff ff       	jmp    c00019e1 <exit_int>

c0002118 <int46_entry>:
c0002118:	fa                   	cli    
c0002119:	6a 00                	push   $0x0
c000211b:	60                   	pusha  
c000211c:	1e                   	push   %ds
c000211d:	06                   	push   %es
c000211e:	0f a0                	push   %fs
c0002120:	0f a8                	push   %gs
c0002122:	66 b8 10 00          	mov    $0x10,%ax
c0002126:	8e d8                	mov    %eax,%ds
c0002128:	8e c0                	mov    %eax,%es
c000212a:	8e e0                	mov    %eax,%fs
c000212c:	b0 20                	mov    $0x20,%al
c000212e:	e6 20                	out    %al,$0x20
c0002130:	e6 a0                	out    %al,$0xa0
c0002132:	6a 2e                	push   $0x2e
c0002134:	fb                   	sti    
c0002135:	ff 15 58 9d 00 c0    	call   *0xc0009d58
c000213b:	e9 a1 f8 ff ff       	jmp    c00019e1 <exit_int>

c0002140 <int47_entry>:
c0002140:	fa                   	cli    
c0002141:	6a 00                	push   $0x0
c0002143:	60                   	pusha  
c0002144:	1e                   	push   %ds
c0002145:	06                   	push   %es
c0002146:	0f a0                	push   %fs
c0002148:	0f a8                	push   %gs
c000214a:	66 b8 10 00          	mov    $0x10,%ax
c000214e:	8e d8                	mov    %eax,%ds
c0002150:	8e c0                	mov    %eax,%es
c0002152:	8e e0                	mov    %eax,%fs
c0002154:	b0 20                	mov    $0x20,%al
c0002156:	e6 20                	out    %al,$0x20
c0002158:	e6 a0                	out    %al,$0xa0
c000215a:	6a 2f                	push   $0x2f
c000215c:	fb                   	sti    
c000215d:	ff 15 5c 9d 00 c0    	call   *0xc0009d5c
c0002163:	e9 79 f8 ff ff       	jmp    c00019e1 <exit_int>

c0002168 <int48_entry>:
c0002168:	fa                   	cli    
c0002169:	6a 00                	push   $0x0
c000216b:	60                   	pusha  
c000216c:	1e                   	push   %ds
c000216d:	06                   	push   %es
c000216e:	0f a0                	push   %fs
c0002170:	0f a8                	push   %gs
c0002172:	66 b8 10 00          	mov    $0x10,%ax
c0002176:	8e d8                	mov    %eax,%ds
c0002178:	8e c0                	mov    %eax,%es
c000217a:	8e e0                	mov    %eax,%fs
c000217c:	b0 20                	mov    $0x20,%al
c000217e:	e6 20                	out    %al,$0x20
c0002180:	e6 a0                	out    %al,$0xa0
c0002182:	6a 30                	push   $0x30
c0002184:	fb                   	sti    
c0002185:	ff 15 60 9d 00 c0    	call   *0xc0009d60
c000218b:	e9 51 f8 ff ff       	jmp    c00019e1 <exit_int>

c0002190 <int49_entry>:
c0002190:	fa                   	cli    
c0002191:	6a 00                	push   $0x0
c0002193:	60                   	pusha  
c0002194:	1e                   	push   %ds
c0002195:	06                   	push   %es
c0002196:	0f a0                	push   %fs
c0002198:	0f a8                	push   %gs
c000219a:	66 b8 10 00          	mov    $0x10,%ax
c000219e:	8e d8                	mov    %eax,%ds
c00021a0:	8e c0                	mov    %eax,%es
c00021a2:	8e e0                	mov    %eax,%fs
c00021a4:	b0 20                	mov    $0x20,%al
c00021a6:	e6 20                	out    %al,$0x20
c00021a8:	e6 a0                	out    %al,$0xa0
c00021aa:	6a 31                	push   $0x31
c00021ac:	fb                   	sti    
c00021ad:	ff 15 64 9d 00 c0    	call   *0xc0009d64
c00021b3:	e9 29 f8 ff ff       	jmp    c00019e1 <exit_int>

c00021b8 <int50_entry>:
c00021b8:	fa                   	cli    
c00021b9:	6a 00                	push   $0x0
c00021bb:	60                   	pusha  
c00021bc:	1e                   	push   %ds
c00021bd:	06                   	push   %es
c00021be:	0f a0                	push   %fs
c00021c0:	0f a8                	push   %gs
c00021c2:	66 b8 10 00          	mov    $0x10,%ax
c00021c6:	8e d8                	mov    %eax,%ds
c00021c8:	8e c0                	mov    %eax,%es
c00021ca:	8e e0                	mov    %eax,%fs
c00021cc:	b0 20                	mov    $0x20,%al
c00021ce:	e6 20                	out    %al,$0x20
c00021d0:	e6 a0                	out    %al,$0xa0
c00021d2:	6a 32                	push   $0x32
c00021d4:	fb                   	sti    
c00021d5:	ff 15 68 9d 00 c0    	call   *0xc0009d68
c00021db:	e9 01 f8 ff ff       	jmp    c00019e1 <exit_int>

c00021e0 <int51_entry>:
c00021e0:	fa                   	cli    
c00021e1:	6a 00                	push   $0x0
c00021e3:	60                   	pusha  
c00021e4:	1e                   	push   %ds
c00021e5:	06                   	push   %es
c00021e6:	0f a0                	push   %fs
c00021e8:	0f a8                	push   %gs
c00021ea:	66 b8 10 00          	mov    $0x10,%ax
c00021ee:	8e d8                	mov    %eax,%ds
c00021f0:	8e c0                	mov    %eax,%es
c00021f2:	8e e0                	mov    %eax,%fs
c00021f4:	b0 20                	mov    $0x20,%al
c00021f6:	e6 20                	out    %al,$0x20
c00021f8:	e6 a0                	out    %al,$0xa0
c00021fa:	6a 33                	push   $0x33
c00021fc:	fb                   	sti    
c00021fd:	ff 15 6c 9d 00 c0    	call   *0xc0009d6c
c0002203:	e9 d9 f7 ff ff       	jmp    c00019e1 <exit_int>

c0002208 <int52_entry>:
c0002208:	fa                   	cli    
c0002209:	6a 00                	push   $0x0
c000220b:	60                   	pusha  
c000220c:	1e                   	push   %ds
c000220d:	06                   	push   %es
c000220e:	0f a0                	push   %fs
c0002210:	0f a8                	push   %gs
c0002212:	66 b8 10 00          	mov    $0x10,%ax
c0002216:	8e d8                	mov    %eax,%ds
c0002218:	8e c0                	mov    %eax,%es
c000221a:	8e e0                	mov    %eax,%fs
c000221c:	b0 20                	mov    $0x20,%al
c000221e:	e6 20                	out    %al,$0x20
c0002220:	e6 a0                	out    %al,$0xa0
c0002222:	6a 34                	push   $0x34
c0002224:	fb                   	sti    
c0002225:	ff 15 70 9d 00 c0    	call   *0xc0009d70
c000222b:	e9 b1 f7 ff ff       	jmp    c00019e1 <exit_int>

c0002230 <int53_entry>:
c0002230:	fa                   	cli    
c0002231:	6a 00                	push   $0x0
c0002233:	60                   	pusha  
c0002234:	1e                   	push   %ds
c0002235:	06                   	push   %es
c0002236:	0f a0                	push   %fs
c0002238:	0f a8                	push   %gs
c000223a:	66 b8 10 00          	mov    $0x10,%ax
c000223e:	8e d8                	mov    %eax,%ds
c0002240:	8e c0                	mov    %eax,%es
c0002242:	8e e0                	mov    %eax,%fs
c0002244:	b0 20                	mov    $0x20,%al
c0002246:	e6 20                	out    %al,$0x20
c0002248:	e6 a0                	out    %al,$0xa0
c000224a:	6a 35                	push   $0x35
c000224c:	fb                   	sti    
c000224d:	ff 15 74 9d 00 c0    	call   *0xc0009d74
c0002253:	e9 89 f7 ff ff       	jmp    c00019e1 <exit_int>

c0002258 <int54_entry>:
c0002258:	fa                   	cli    
c0002259:	6a 00                	push   $0x0
c000225b:	60                   	pusha  
c000225c:	1e                   	push   %ds
c000225d:	06                   	push   %es
c000225e:	0f a0                	push   %fs
c0002260:	0f a8                	push   %gs
c0002262:	66 b8 10 00          	mov    $0x10,%ax
c0002266:	8e d8                	mov    %eax,%ds
c0002268:	8e c0                	mov    %eax,%es
c000226a:	8e e0                	mov    %eax,%fs
c000226c:	b0 20                	mov    $0x20,%al
c000226e:	e6 20                	out    %al,$0x20
c0002270:	e6 a0                	out    %al,$0xa0
c0002272:	6a 36                	push   $0x36
c0002274:	fb                   	sti    
c0002275:	ff 15 78 9d 00 c0    	call   *0xc0009d78
c000227b:	e9 61 f7 ff ff       	jmp    c00019e1 <exit_int>

c0002280 <int55_entry>:
c0002280:	fa                   	cli    
c0002281:	6a 00                	push   $0x0
c0002283:	60                   	pusha  
c0002284:	1e                   	push   %ds
c0002285:	06                   	push   %es
c0002286:	0f a0                	push   %fs
c0002288:	0f a8                	push   %gs
c000228a:	66 b8 10 00          	mov    $0x10,%ax
c000228e:	8e d8                	mov    %eax,%ds
c0002290:	8e c0                	mov    %eax,%es
c0002292:	8e e0                	mov    %eax,%fs
c0002294:	b0 20                	mov    $0x20,%al
c0002296:	e6 20                	out    %al,$0x20
c0002298:	e6 a0                	out    %al,$0xa0
c000229a:	6a 37                	push   $0x37
c000229c:	fb                   	sti    
c000229d:	ff 15 7c 9d 00 c0    	call   *0xc0009d7c
c00022a3:	e9 39 f7 ff ff       	jmp    c00019e1 <exit_int>

c00022a8 <int56_entry>:
c00022a8:	fa                   	cli    
c00022a9:	6a 00                	push   $0x0
c00022ab:	60                   	pusha  
c00022ac:	1e                   	push   %ds
c00022ad:	06                   	push   %es
c00022ae:	0f a0                	push   %fs
c00022b0:	0f a8                	push   %gs
c00022b2:	66 b8 10 00          	mov    $0x10,%ax
c00022b6:	8e d8                	mov    %eax,%ds
c00022b8:	8e c0                	mov    %eax,%es
c00022ba:	8e e0                	mov    %eax,%fs
c00022bc:	b0 20                	mov    $0x20,%al
c00022be:	e6 20                	out    %al,$0x20
c00022c0:	e6 a0                	out    %al,$0xa0
c00022c2:	6a 38                	push   $0x38
c00022c4:	fb                   	sti    
c00022c5:	ff 15 80 9d 00 c0    	call   *0xc0009d80
c00022cb:	e9 11 f7 ff ff       	jmp    c00019e1 <exit_int>

c00022d0 <int57_entry>:
c00022d0:	fa                   	cli    
c00022d1:	6a 00                	push   $0x0
c00022d3:	60                   	pusha  
c00022d4:	1e                   	push   %ds
c00022d5:	06                   	push   %es
c00022d6:	0f a0                	push   %fs
c00022d8:	0f a8                	push   %gs
c00022da:	66 b8 10 00          	mov    $0x10,%ax
c00022de:	8e d8                	mov    %eax,%ds
c00022e0:	8e c0                	mov    %eax,%es
c00022e2:	8e e0                	mov    %eax,%fs
c00022e4:	b0 20                	mov    $0x20,%al
c00022e6:	e6 20                	out    %al,$0x20
c00022e8:	e6 a0                	out    %al,$0xa0
c00022ea:	6a 39                	push   $0x39
c00022ec:	fb                   	sti    
c00022ed:	ff 15 84 9d 00 c0    	call   *0xc0009d84
c00022f3:	e9 e9 f6 ff ff       	jmp    c00019e1 <exit_int>

c00022f8 <int58_entry>:
c00022f8:	fa                   	cli    
c00022f9:	6a 00                	push   $0x0
c00022fb:	60                   	pusha  
c00022fc:	1e                   	push   %ds
c00022fd:	06                   	push   %es
c00022fe:	0f a0                	push   %fs
c0002300:	0f a8                	push   %gs
c0002302:	66 b8 10 00          	mov    $0x10,%ax
c0002306:	8e d8                	mov    %eax,%ds
c0002308:	8e c0                	mov    %eax,%es
c000230a:	8e e0                	mov    %eax,%fs
c000230c:	b0 20                	mov    $0x20,%al
c000230e:	e6 20                	out    %al,$0x20
c0002310:	e6 a0                	out    %al,$0xa0
c0002312:	6a 3a                	push   $0x3a
c0002314:	fb                   	sti    
c0002315:	ff 15 88 9d 00 c0    	call   *0xc0009d88
c000231b:	e9 c1 f6 ff ff       	jmp    c00019e1 <exit_int>

c0002320 <int59_entry>:
c0002320:	fa                   	cli    
c0002321:	6a 00                	push   $0x0
c0002323:	60                   	pusha  
c0002324:	1e                   	push   %ds
c0002325:	06                   	push   %es
c0002326:	0f a0                	push   %fs
c0002328:	0f a8                	push   %gs
c000232a:	66 b8 10 00          	mov    $0x10,%ax
c000232e:	8e d8                	mov    %eax,%ds
c0002330:	8e c0                	mov    %eax,%es
c0002332:	8e e0                	mov    %eax,%fs
c0002334:	b0 20                	mov    $0x20,%al
c0002336:	e6 20                	out    %al,$0x20
c0002338:	e6 a0                	out    %al,$0xa0
c000233a:	6a 3b                	push   $0x3b
c000233c:	fb                   	sti    
c000233d:	ff 15 8c 9d 00 c0    	call   *0xc0009d8c
c0002343:	e9 99 f6 ff ff       	jmp    c00019e1 <exit_int>

c0002348 <int60_entry>:
c0002348:	fa                   	cli    
c0002349:	6a 00                	push   $0x0
c000234b:	60                   	pusha  
c000234c:	1e                   	push   %ds
c000234d:	06                   	push   %es
c000234e:	0f a0                	push   %fs
c0002350:	0f a8                	push   %gs
c0002352:	66 b8 10 00          	mov    $0x10,%ax
c0002356:	8e d8                	mov    %eax,%ds
c0002358:	8e c0                	mov    %eax,%es
c000235a:	8e e0                	mov    %eax,%fs
c000235c:	b0 20                	mov    $0x20,%al
c000235e:	e6 20                	out    %al,$0x20
c0002360:	e6 a0                	out    %al,$0xa0
c0002362:	6a 3c                	push   $0x3c
c0002364:	fb                   	sti    
c0002365:	ff 15 90 9d 00 c0    	call   *0xc0009d90
c000236b:	e9 71 f6 ff ff       	jmp    c00019e1 <exit_int>

c0002370 <int61_entry>:
c0002370:	fa                   	cli    
c0002371:	6a 00                	push   $0x0
c0002373:	60                   	pusha  
c0002374:	1e                   	push   %ds
c0002375:	06                   	push   %es
c0002376:	0f a0                	push   %fs
c0002378:	0f a8                	push   %gs
c000237a:	66 b8 10 00          	mov    $0x10,%ax
c000237e:	8e d8                	mov    %eax,%ds
c0002380:	8e c0                	mov    %eax,%es
c0002382:	8e e0                	mov    %eax,%fs
c0002384:	b0 20                	mov    $0x20,%al
c0002386:	e6 20                	out    %al,$0x20
c0002388:	e6 a0                	out    %al,$0xa0
c000238a:	6a 3d                	push   $0x3d
c000238c:	fb                   	sti    
c000238d:	ff 15 94 9d 00 c0    	call   *0xc0009d94
c0002393:	e9 49 f6 ff ff       	jmp    c00019e1 <exit_int>

c0002398 <int62_entry>:
c0002398:	fa                   	cli    
c0002399:	6a 00                	push   $0x0
c000239b:	60                   	pusha  
c000239c:	1e                   	push   %ds
c000239d:	06                   	push   %es
c000239e:	0f a0                	push   %fs
c00023a0:	0f a8                	push   %gs
c00023a2:	66 b8 10 00          	mov    $0x10,%ax
c00023a6:	8e d8                	mov    %eax,%ds
c00023a8:	8e c0                	mov    %eax,%es
c00023aa:	8e e0                	mov    %eax,%fs
c00023ac:	b0 20                	mov    $0x20,%al
c00023ae:	e6 20                	out    %al,$0x20
c00023b0:	e6 a0                	out    %al,$0xa0
c00023b2:	6a 3e                	push   $0x3e
c00023b4:	fb                   	sti    
c00023b5:	ff 15 98 9d 00 c0    	call   *0xc0009d98
c00023bb:	e9 21 f6 ff ff       	jmp    c00019e1 <exit_int>

c00023c0 <int63_entry>:
c00023c0:	fa                   	cli    
c00023c1:	6a 00                	push   $0x0
c00023c3:	60                   	pusha  
c00023c4:	1e                   	push   %ds
c00023c5:	06                   	push   %es
c00023c6:	0f a0                	push   %fs
c00023c8:	0f a8                	push   %gs
c00023ca:	66 b8 10 00          	mov    $0x10,%ax
c00023ce:	8e d8                	mov    %eax,%ds
c00023d0:	8e c0                	mov    %eax,%es
c00023d2:	8e e0                	mov    %eax,%fs
c00023d4:	b0 20                	mov    $0x20,%al
c00023d6:	e6 20                	out    %al,$0x20
c00023d8:	e6 a0                	out    %al,$0xa0
c00023da:	6a 3f                	push   $0x3f
c00023dc:	fb                   	sti    
c00023dd:	ff 15 9c 9d 00 c0    	call   *0xc0009d9c
c00023e3:	e9 f9 f5 ff ff       	jmp    c00019e1 <exit_int>

c00023e8 <int64_entry>:
c00023e8:	fa                   	cli    
c00023e9:	6a 00                	push   $0x0
c00023eb:	60                   	pusha  
c00023ec:	1e                   	push   %ds
c00023ed:	06                   	push   %es
c00023ee:	0f a0                	push   %fs
c00023f0:	0f a8                	push   %gs
c00023f2:	66 b8 10 00          	mov    $0x10,%ax
c00023f6:	8e d8                	mov    %eax,%ds
c00023f8:	8e c0                	mov    %eax,%es
c00023fa:	8e e0                	mov    %eax,%fs
c00023fc:	b0 20                	mov    $0x20,%al
c00023fe:	e6 20                	out    %al,$0x20
c0002400:	e6 a0                	out    %al,$0xa0
c0002402:	6a 40                	push   $0x40
c0002404:	fb                   	sti    
c0002405:	ff 15 a0 9d 00 c0    	call   *0xc0009da0
c000240b:	e9 d1 f5 ff ff       	jmp    c00019e1 <exit_int>

c0002410 <int65_entry>:
c0002410:	fa                   	cli    
c0002411:	6a 00                	push   $0x0
c0002413:	60                   	pusha  
c0002414:	1e                   	push   %ds
c0002415:	06                   	push   %es
c0002416:	0f a0                	push   %fs
c0002418:	0f a8                	push   %gs
c000241a:	66 b8 10 00          	mov    $0x10,%ax
c000241e:	8e d8                	mov    %eax,%ds
c0002420:	8e c0                	mov    %eax,%es
c0002422:	8e e0                	mov    %eax,%fs
c0002424:	b0 20                	mov    $0x20,%al
c0002426:	e6 20                	out    %al,$0x20
c0002428:	e6 a0                	out    %al,$0xa0
c000242a:	6a 41                	push   $0x41
c000242c:	fb                   	sti    
c000242d:	ff 15 a4 9d 00 c0    	call   *0xc0009da4
c0002433:	e9 a9 f5 ff ff       	jmp    c00019e1 <exit_int>

c0002438 <int66_entry>:
c0002438:	fa                   	cli    
c0002439:	6a 00                	push   $0x0
c000243b:	60                   	pusha  
c000243c:	1e                   	push   %ds
c000243d:	06                   	push   %es
c000243e:	0f a0                	push   %fs
c0002440:	0f a8                	push   %gs
c0002442:	66 b8 10 00          	mov    $0x10,%ax
c0002446:	8e d8                	mov    %eax,%ds
c0002448:	8e c0                	mov    %eax,%es
c000244a:	8e e0                	mov    %eax,%fs
c000244c:	b0 20                	mov    $0x20,%al
c000244e:	e6 20                	out    %al,$0x20
c0002450:	e6 a0                	out    %al,$0xa0
c0002452:	6a 42                	push   $0x42
c0002454:	fb                   	sti    
c0002455:	ff 15 a8 9d 00 c0    	call   *0xc0009da8
c000245b:	e9 81 f5 ff ff       	jmp    c00019e1 <exit_int>

c0002460 <int67_entry>:
c0002460:	fa                   	cli    
c0002461:	6a 00                	push   $0x0
c0002463:	60                   	pusha  
c0002464:	1e                   	push   %ds
c0002465:	06                   	push   %es
c0002466:	0f a0                	push   %fs
c0002468:	0f a8                	push   %gs
c000246a:	66 b8 10 00          	mov    $0x10,%ax
c000246e:	8e d8                	mov    %eax,%ds
c0002470:	8e c0                	mov    %eax,%es
c0002472:	8e e0                	mov    %eax,%fs
c0002474:	b0 20                	mov    $0x20,%al
c0002476:	e6 20                	out    %al,$0x20
c0002478:	e6 a0                	out    %al,$0xa0
c000247a:	6a 43                	push   $0x43
c000247c:	fb                   	sti    
c000247d:	ff 15 ac 9d 00 c0    	call   *0xc0009dac
c0002483:	e9 59 f5 ff ff       	jmp    c00019e1 <exit_int>

c0002488 <int68_entry>:
c0002488:	fa                   	cli    
c0002489:	6a 00                	push   $0x0
c000248b:	60                   	pusha  
c000248c:	1e                   	push   %ds
c000248d:	06                   	push   %es
c000248e:	0f a0                	push   %fs
c0002490:	0f a8                	push   %gs
c0002492:	66 b8 10 00          	mov    $0x10,%ax
c0002496:	8e d8                	mov    %eax,%ds
c0002498:	8e c0                	mov    %eax,%es
c000249a:	8e e0                	mov    %eax,%fs
c000249c:	b0 20                	mov    $0x20,%al
c000249e:	e6 20                	out    %al,$0x20
c00024a0:	e6 a0                	out    %al,$0xa0
c00024a2:	6a 44                	push   $0x44
c00024a4:	fb                   	sti    
c00024a5:	ff 15 b0 9d 00 c0    	call   *0xc0009db0
c00024ab:	e9 31 f5 ff ff       	jmp    c00019e1 <exit_int>

c00024b0 <int69_entry>:
c00024b0:	fa                   	cli    
c00024b1:	6a 00                	push   $0x0
c00024b3:	60                   	pusha  
c00024b4:	1e                   	push   %ds
c00024b5:	06                   	push   %es
c00024b6:	0f a0                	push   %fs
c00024b8:	0f a8                	push   %gs
c00024ba:	66 b8 10 00          	mov    $0x10,%ax
c00024be:	8e d8                	mov    %eax,%ds
c00024c0:	8e c0                	mov    %eax,%es
c00024c2:	8e e0                	mov    %eax,%fs
c00024c4:	b0 20                	mov    $0x20,%al
c00024c6:	e6 20                	out    %al,$0x20
c00024c8:	e6 a0                	out    %al,$0xa0
c00024ca:	6a 45                	push   $0x45
c00024cc:	fb                   	sti    
c00024cd:	ff 15 b4 9d 00 c0    	call   *0xc0009db4
c00024d3:	e9 09 f5 ff ff       	jmp    c00019e1 <exit_int>

c00024d8 <int70_entry>:
c00024d8:	fa                   	cli    
c00024d9:	6a 00                	push   $0x0
c00024db:	60                   	pusha  
c00024dc:	1e                   	push   %ds
c00024dd:	06                   	push   %es
c00024de:	0f a0                	push   %fs
c00024e0:	0f a8                	push   %gs
c00024e2:	66 b8 10 00          	mov    $0x10,%ax
c00024e6:	8e d8                	mov    %eax,%ds
c00024e8:	8e c0                	mov    %eax,%es
c00024ea:	8e e0                	mov    %eax,%fs
c00024ec:	b0 20                	mov    $0x20,%al
c00024ee:	e6 20                	out    %al,$0x20
c00024f0:	e6 a0                	out    %al,$0xa0
c00024f2:	6a 46                	push   $0x46
c00024f4:	fb                   	sti    
c00024f5:	ff 15 b8 9d 00 c0    	call   *0xc0009db8
c00024fb:	e9 e1 f4 ff ff       	jmp    c00019e1 <exit_int>

c0002500 <int71_entry>:
c0002500:	fa                   	cli    
c0002501:	6a 00                	push   $0x0
c0002503:	60                   	pusha  
c0002504:	1e                   	push   %ds
c0002505:	06                   	push   %es
c0002506:	0f a0                	push   %fs
c0002508:	0f a8                	push   %gs
c000250a:	66 b8 10 00          	mov    $0x10,%ax
c000250e:	8e d8                	mov    %eax,%ds
c0002510:	8e c0                	mov    %eax,%es
c0002512:	8e e0                	mov    %eax,%fs
c0002514:	b0 20                	mov    $0x20,%al
c0002516:	e6 20                	out    %al,$0x20
c0002518:	e6 a0                	out    %al,$0xa0
c000251a:	6a 47                	push   $0x47
c000251c:	fb                   	sti    
c000251d:	ff 15 bc 9d 00 c0    	call   *0xc0009dbc
c0002523:	e9 b9 f4 ff ff       	jmp    c00019e1 <exit_int>

c0002528 <int72_entry>:
c0002528:	fa                   	cli    
c0002529:	6a 00                	push   $0x0
c000252b:	60                   	pusha  
c000252c:	1e                   	push   %ds
c000252d:	06                   	push   %es
c000252e:	0f a0                	push   %fs
c0002530:	0f a8                	push   %gs
c0002532:	66 b8 10 00          	mov    $0x10,%ax
c0002536:	8e d8                	mov    %eax,%ds
c0002538:	8e c0                	mov    %eax,%es
c000253a:	8e e0                	mov    %eax,%fs
c000253c:	b0 20                	mov    $0x20,%al
c000253e:	e6 20                	out    %al,$0x20
c0002540:	e6 a0                	out    %al,$0xa0
c0002542:	6a 48                	push   $0x48
c0002544:	fb                   	sti    
c0002545:	ff 15 c0 9d 00 c0    	call   *0xc0009dc0
c000254b:	e9 91 f4 ff ff       	jmp    c00019e1 <exit_int>

c0002550 <int73_entry>:
c0002550:	fa                   	cli    
c0002551:	6a 00                	push   $0x0
c0002553:	60                   	pusha  
c0002554:	1e                   	push   %ds
c0002555:	06                   	push   %es
c0002556:	0f a0                	push   %fs
c0002558:	0f a8                	push   %gs
c000255a:	66 b8 10 00          	mov    $0x10,%ax
c000255e:	8e d8                	mov    %eax,%ds
c0002560:	8e c0                	mov    %eax,%es
c0002562:	8e e0                	mov    %eax,%fs
c0002564:	b0 20                	mov    $0x20,%al
c0002566:	e6 20                	out    %al,$0x20
c0002568:	e6 a0                	out    %al,$0xa0
c000256a:	6a 49                	push   $0x49
c000256c:	fb                   	sti    
c000256d:	ff 15 c4 9d 00 c0    	call   *0xc0009dc4
c0002573:	e9 69 f4 ff ff       	jmp    c00019e1 <exit_int>

c0002578 <int74_entry>:
c0002578:	fa                   	cli    
c0002579:	6a 00                	push   $0x0
c000257b:	60                   	pusha  
c000257c:	1e                   	push   %ds
c000257d:	06                   	push   %es
c000257e:	0f a0                	push   %fs
c0002580:	0f a8                	push   %gs
c0002582:	66 b8 10 00          	mov    $0x10,%ax
c0002586:	8e d8                	mov    %eax,%ds
c0002588:	8e c0                	mov    %eax,%es
c000258a:	8e e0                	mov    %eax,%fs
c000258c:	b0 20                	mov    $0x20,%al
c000258e:	e6 20                	out    %al,$0x20
c0002590:	e6 a0                	out    %al,$0xa0
c0002592:	6a 4a                	push   $0x4a
c0002594:	fb                   	sti    
c0002595:	ff 15 c8 9d 00 c0    	call   *0xc0009dc8
c000259b:	e9 41 f4 ff ff       	jmp    c00019e1 <exit_int>

c00025a0 <int75_entry>:
c00025a0:	fa                   	cli    
c00025a1:	6a 00                	push   $0x0
c00025a3:	60                   	pusha  
c00025a4:	1e                   	push   %ds
c00025a5:	06                   	push   %es
c00025a6:	0f a0                	push   %fs
c00025a8:	0f a8                	push   %gs
c00025aa:	66 b8 10 00          	mov    $0x10,%ax
c00025ae:	8e d8                	mov    %eax,%ds
c00025b0:	8e c0                	mov    %eax,%es
c00025b2:	8e e0                	mov    %eax,%fs
c00025b4:	b0 20                	mov    $0x20,%al
c00025b6:	e6 20                	out    %al,$0x20
c00025b8:	e6 a0                	out    %al,$0xa0
c00025ba:	6a 4b                	push   $0x4b
c00025bc:	fb                   	sti    
c00025bd:	ff 15 cc 9d 00 c0    	call   *0xc0009dcc
c00025c3:	e9 19 f4 ff ff       	jmp    c00019e1 <exit_int>

c00025c8 <int76_entry>:
c00025c8:	fa                   	cli    
c00025c9:	6a 00                	push   $0x0
c00025cb:	60                   	pusha  
c00025cc:	1e                   	push   %ds
c00025cd:	06                   	push   %es
c00025ce:	0f a0                	push   %fs
c00025d0:	0f a8                	push   %gs
c00025d2:	66 b8 10 00          	mov    $0x10,%ax
c00025d6:	8e d8                	mov    %eax,%ds
c00025d8:	8e c0                	mov    %eax,%es
c00025da:	8e e0                	mov    %eax,%fs
c00025dc:	b0 20                	mov    $0x20,%al
c00025de:	e6 20                	out    %al,$0x20
c00025e0:	e6 a0                	out    %al,$0xa0
c00025e2:	6a 4c                	push   $0x4c
c00025e4:	fb                   	sti    
c00025e5:	ff 15 d0 9d 00 c0    	call   *0xc0009dd0
c00025eb:	e9 f1 f3 ff ff       	jmp    c00019e1 <exit_int>

c00025f0 <int77_entry>:
c00025f0:	fa                   	cli    
c00025f1:	6a 00                	push   $0x0
c00025f3:	60                   	pusha  
c00025f4:	1e                   	push   %ds
c00025f5:	06                   	push   %es
c00025f6:	0f a0                	push   %fs
c00025f8:	0f a8                	push   %gs
c00025fa:	66 b8 10 00          	mov    $0x10,%ax
c00025fe:	8e d8                	mov    %eax,%ds
c0002600:	8e c0                	mov    %eax,%es
c0002602:	8e e0                	mov    %eax,%fs
c0002604:	b0 20                	mov    $0x20,%al
c0002606:	e6 20                	out    %al,$0x20
c0002608:	e6 a0                	out    %al,$0xa0
c000260a:	6a 4d                	push   $0x4d
c000260c:	fb                   	sti    
c000260d:	ff 15 d4 9d 00 c0    	call   *0xc0009dd4
c0002613:	e9 c9 f3 ff ff       	jmp    c00019e1 <exit_int>

c0002618 <int78_entry>:
c0002618:	fa                   	cli    
c0002619:	6a 00                	push   $0x0
c000261b:	60                   	pusha  
c000261c:	1e                   	push   %ds
c000261d:	06                   	push   %es
c000261e:	0f a0                	push   %fs
c0002620:	0f a8                	push   %gs
c0002622:	66 b8 10 00          	mov    $0x10,%ax
c0002626:	8e d8                	mov    %eax,%ds
c0002628:	8e c0                	mov    %eax,%es
c000262a:	8e e0                	mov    %eax,%fs
c000262c:	b0 20                	mov    $0x20,%al
c000262e:	e6 20                	out    %al,$0x20
c0002630:	e6 a0                	out    %al,$0xa0
c0002632:	6a 4e                	push   $0x4e
c0002634:	fb                   	sti    
c0002635:	ff 15 d8 9d 00 c0    	call   *0xc0009dd8
c000263b:	e9 a1 f3 ff ff       	jmp    c00019e1 <exit_int>

c0002640 <int79_entry>:
c0002640:	fa                   	cli    
c0002641:	6a 00                	push   $0x0
c0002643:	60                   	pusha  
c0002644:	1e                   	push   %ds
c0002645:	06                   	push   %es
c0002646:	0f a0                	push   %fs
c0002648:	0f a8                	push   %gs
c000264a:	66 b8 10 00          	mov    $0x10,%ax
c000264e:	8e d8                	mov    %eax,%ds
c0002650:	8e c0                	mov    %eax,%es
c0002652:	8e e0                	mov    %eax,%fs
c0002654:	b0 20                	mov    $0x20,%al
c0002656:	e6 20                	out    %al,$0x20
c0002658:	e6 a0                	out    %al,$0xa0
c000265a:	6a 4f                	push   $0x4f
c000265c:	fb                   	sti    
c000265d:	ff 15 dc 9d 00 c0    	call   *0xc0009ddc
c0002663:	e9 79 f3 ff ff       	jmp    c00019e1 <exit_int>

c0002668 <int80_entry>:
c0002668:	fa                   	cli    
c0002669:	6a 00                	push   $0x0
c000266b:	60                   	pusha  
c000266c:	1e                   	push   %ds
c000266d:	06                   	push   %es
c000266e:	0f a0                	push   %fs
c0002670:	0f a8                	push   %gs
c0002672:	66 b8 10 00          	mov    $0x10,%ax
c0002676:	8e d8                	mov    %eax,%ds
c0002678:	8e c0                	mov    %eax,%es
c000267a:	8e e0                	mov    %eax,%fs
c000267c:	b0 20                	mov    $0x20,%al
c000267e:	e6 20                	out    %al,$0x20
c0002680:	e6 a0                	out    %al,$0xa0
c0002682:	6a 50                	push   $0x50
c0002684:	fb                   	sti    
c0002685:	ff 15 e0 9d 00 c0    	call   *0xc0009de0
c000268b:	e9 51 f3 ff ff       	jmp    c00019e1 <exit_int>

c0002690 <int81_entry>:
c0002690:	fa                   	cli    
c0002691:	6a 00                	push   $0x0
c0002693:	60                   	pusha  
c0002694:	1e                   	push   %ds
c0002695:	06                   	push   %es
c0002696:	0f a0                	push   %fs
c0002698:	0f a8                	push   %gs
c000269a:	66 b8 10 00          	mov    $0x10,%ax
c000269e:	8e d8                	mov    %eax,%ds
c00026a0:	8e c0                	mov    %eax,%es
c00026a2:	8e e0                	mov    %eax,%fs
c00026a4:	b0 20                	mov    $0x20,%al
c00026a6:	e6 20                	out    %al,$0x20
c00026a8:	e6 a0                	out    %al,$0xa0
c00026aa:	6a 51                	push   $0x51
c00026ac:	fb                   	sti    
c00026ad:	ff 15 e4 9d 00 c0    	call   *0xc0009de4
c00026b3:	e9 29 f3 ff ff       	jmp    c00019e1 <exit_int>

c00026b8 <int82_entry>:
c00026b8:	fa                   	cli    
c00026b9:	6a 00                	push   $0x0
c00026bb:	60                   	pusha  
c00026bc:	1e                   	push   %ds
c00026bd:	06                   	push   %es
c00026be:	0f a0                	push   %fs
c00026c0:	0f a8                	push   %gs
c00026c2:	66 b8 10 00          	mov    $0x10,%ax
c00026c6:	8e d8                	mov    %eax,%ds
c00026c8:	8e c0                	mov    %eax,%es
c00026ca:	8e e0                	mov    %eax,%fs
c00026cc:	b0 20                	mov    $0x20,%al
c00026ce:	e6 20                	out    %al,$0x20
c00026d0:	e6 a0                	out    %al,$0xa0
c00026d2:	6a 52                	push   $0x52
c00026d4:	fb                   	sti    
c00026d5:	ff 15 e8 9d 00 c0    	call   *0xc0009de8
c00026db:	e9 01 f3 ff ff       	jmp    c00019e1 <exit_int>

c00026e0 <int83_entry>:
c00026e0:	fa                   	cli    
c00026e1:	6a 00                	push   $0x0
c00026e3:	60                   	pusha  
c00026e4:	1e                   	push   %ds
c00026e5:	06                   	push   %es
c00026e6:	0f a0                	push   %fs
c00026e8:	0f a8                	push   %gs
c00026ea:	66 b8 10 00          	mov    $0x10,%ax
c00026ee:	8e d8                	mov    %eax,%ds
c00026f0:	8e c0                	mov    %eax,%es
c00026f2:	8e e0                	mov    %eax,%fs
c00026f4:	b0 20                	mov    $0x20,%al
c00026f6:	e6 20                	out    %al,$0x20
c00026f8:	e6 a0                	out    %al,$0xa0
c00026fa:	6a 53                	push   $0x53
c00026fc:	fb                   	sti    
c00026fd:	ff 15 ec 9d 00 c0    	call   *0xc0009dec
c0002703:	e9 d9 f2 ff ff       	jmp    c00019e1 <exit_int>

c0002708 <int84_entry>:
c0002708:	fa                   	cli    
c0002709:	6a 00                	push   $0x0
c000270b:	60                   	pusha  
c000270c:	1e                   	push   %ds
c000270d:	06                   	push   %es
c000270e:	0f a0                	push   %fs
c0002710:	0f a8                	push   %gs
c0002712:	66 b8 10 00          	mov    $0x10,%ax
c0002716:	8e d8                	mov    %eax,%ds
c0002718:	8e c0                	mov    %eax,%es
c000271a:	8e e0                	mov    %eax,%fs
c000271c:	b0 20                	mov    $0x20,%al
c000271e:	e6 20                	out    %al,$0x20
c0002720:	e6 a0                	out    %al,$0xa0
c0002722:	6a 54                	push   $0x54
c0002724:	fb                   	sti    
c0002725:	ff 15 f0 9d 00 c0    	call   *0xc0009df0
c000272b:	e9 b1 f2 ff ff       	jmp    c00019e1 <exit_int>

c0002730 <int85_entry>:
c0002730:	fa                   	cli    
c0002731:	6a 00                	push   $0x0
c0002733:	60                   	pusha  
c0002734:	1e                   	push   %ds
c0002735:	06                   	push   %es
c0002736:	0f a0                	push   %fs
c0002738:	0f a8                	push   %gs
c000273a:	66 b8 10 00          	mov    $0x10,%ax
c000273e:	8e d8                	mov    %eax,%ds
c0002740:	8e c0                	mov    %eax,%es
c0002742:	8e e0                	mov    %eax,%fs
c0002744:	b0 20                	mov    $0x20,%al
c0002746:	e6 20                	out    %al,$0x20
c0002748:	e6 a0                	out    %al,$0xa0
c000274a:	6a 55                	push   $0x55
c000274c:	fb                   	sti    
c000274d:	ff 15 f4 9d 00 c0    	call   *0xc0009df4
c0002753:	e9 89 f2 ff ff       	jmp    c00019e1 <exit_int>

c0002758 <int86_entry>:
c0002758:	fa                   	cli    
c0002759:	6a 00                	push   $0x0
c000275b:	60                   	pusha  
c000275c:	1e                   	push   %ds
c000275d:	06                   	push   %es
c000275e:	0f a0                	push   %fs
c0002760:	0f a8                	push   %gs
c0002762:	66 b8 10 00          	mov    $0x10,%ax
c0002766:	8e d8                	mov    %eax,%ds
c0002768:	8e c0                	mov    %eax,%es
c000276a:	8e e0                	mov    %eax,%fs
c000276c:	b0 20                	mov    $0x20,%al
c000276e:	e6 20                	out    %al,$0x20
c0002770:	e6 a0                	out    %al,$0xa0
c0002772:	6a 56                	push   $0x56
c0002774:	fb                   	sti    
c0002775:	ff 15 f8 9d 00 c0    	call   *0xc0009df8
c000277b:	e9 61 f2 ff ff       	jmp    c00019e1 <exit_int>

c0002780 <int87_entry>:
c0002780:	fa                   	cli    
c0002781:	6a 00                	push   $0x0
c0002783:	60                   	pusha  
c0002784:	1e                   	push   %ds
c0002785:	06                   	push   %es
c0002786:	0f a0                	push   %fs
c0002788:	0f a8                	push   %gs
c000278a:	66 b8 10 00          	mov    $0x10,%ax
c000278e:	8e d8                	mov    %eax,%ds
c0002790:	8e c0                	mov    %eax,%es
c0002792:	8e e0                	mov    %eax,%fs
c0002794:	b0 20                	mov    $0x20,%al
c0002796:	e6 20                	out    %al,$0x20
c0002798:	e6 a0                	out    %al,$0xa0
c000279a:	6a 57                	push   $0x57
c000279c:	fb                   	sti    
c000279d:	ff 15 fc 9d 00 c0    	call   *0xc0009dfc
c00027a3:	e9 39 f2 ff ff       	jmp    c00019e1 <exit_int>

c00027a8 <int88_entry>:
c00027a8:	fa                   	cli    
c00027a9:	6a 00                	push   $0x0
c00027ab:	60                   	pusha  
c00027ac:	1e                   	push   %ds
c00027ad:	06                   	push   %es
c00027ae:	0f a0                	push   %fs
c00027b0:	0f a8                	push   %gs
c00027b2:	66 b8 10 00          	mov    $0x10,%ax
c00027b6:	8e d8                	mov    %eax,%ds
c00027b8:	8e c0                	mov    %eax,%es
c00027ba:	8e e0                	mov    %eax,%fs
c00027bc:	b0 20                	mov    $0x20,%al
c00027be:	e6 20                	out    %al,$0x20
c00027c0:	e6 a0                	out    %al,$0xa0
c00027c2:	6a 58                	push   $0x58
c00027c4:	fb                   	sti    
c00027c5:	ff 15 00 9e 00 c0    	call   *0xc0009e00
c00027cb:	e9 11 f2 ff ff       	jmp    c00019e1 <exit_int>

c00027d0 <int89_entry>:
c00027d0:	fa                   	cli    
c00027d1:	6a 00                	push   $0x0
c00027d3:	60                   	pusha  
c00027d4:	1e                   	push   %ds
c00027d5:	06                   	push   %es
c00027d6:	0f a0                	push   %fs
c00027d8:	0f a8                	push   %gs
c00027da:	66 b8 10 00          	mov    $0x10,%ax
c00027de:	8e d8                	mov    %eax,%ds
c00027e0:	8e c0                	mov    %eax,%es
c00027e2:	8e e0                	mov    %eax,%fs
c00027e4:	b0 20                	mov    $0x20,%al
c00027e6:	e6 20                	out    %al,$0x20
c00027e8:	e6 a0                	out    %al,$0xa0
c00027ea:	6a 59                	push   $0x59
c00027ec:	fb                   	sti    
c00027ed:	ff 15 04 9e 00 c0    	call   *0xc0009e04
c00027f3:	e9 e9 f1 ff ff       	jmp    c00019e1 <exit_int>

c00027f8 <int90_entry>:
c00027f8:	fa                   	cli    
c00027f9:	6a 00                	push   $0x0
c00027fb:	60                   	pusha  
c00027fc:	1e                   	push   %ds
c00027fd:	06                   	push   %es
c00027fe:	0f a0                	push   %fs
c0002800:	0f a8                	push   %gs
c0002802:	66 b8 10 00          	mov    $0x10,%ax
c0002806:	8e d8                	mov    %eax,%ds
c0002808:	8e c0                	mov    %eax,%es
c000280a:	8e e0                	mov    %eax,%fs
c000280c:	b0 20                	mov    $0x20,%al
c000280e:	e6 20                	out    %al,$0x20
c0002810:	e6 a0                	out    %al,$0xa0
c0002812:	6a 5a                	push   $0x5a
c0002814:	fb                   	sti    
c0002815:	ff 15 08 9e 00 c0    	call   *0xc0009e08
c000281b:	e9 c1 f1 ff ff       	jmp    c00019e1 <exit_int>

c0002820 <int91_entry>:
c0002820:	fa                   	cli    
c0002821:	6a 00                	push   $0x0
c0002823:	60                   	pusha  
c0002824:	1e                   	push   %ds
c0002825:	06                   	push   %es
c0002826:	0f a0                	push   %fs
c0002828:	0f a8                	push   %gs
c000282a:	66 b8 10 00          	mov    $0x10,%ax
c000282e:	8e d8                	mov    %eax,%ds
c0002830:	8e c0                	mov    %eax,%es
c0002832:	8e e0                	mov    %eax,%fs
c0002834:	b0 20                	mov    $0x20,%al
c0002836:	e6 20                	out    %al,$0x20
c0002838:	e6 a0                	out    %al,$0xa0
c000283a:	6a 5b                	push   $0x5b
c000283c:	fb                   	sti    
c000283d:	ff 15 0c 9e 00 c0    	call   *0xc0009e0c
c0002843:	e9 99 f1 ff ff       	jmp    c00019e1 <exit_int>

c0002848 <int92_entry>:
c0002848:	fa                   	cli    
c0002849:	6a 00                	push   $0x0
c000284b:	60                   	pusha  
c000284c:	1e                   	push   %ds
c000284d:	06                   	push   %es
c000284e:	0f a0                	push   %fs
c0002850:	0f a8                	push   %gs
c0002852:	66 b8 10 00          	mov    $0x10,%ax
c0002856:	8e d8                	mov    %eax,%ds
c0002858:	8e c0                	mov    %eax,%es
c000285a:	8e e0                	mov    %eax,%fs
c000285c:	b0 20                	mov    $0x20,%al
c000285e:	e6 20                	out    %al,$0x20
c0002860:	e6 a0                	out    %al,$0xa0
c0002862:	6a 5c                	push   $0x5c
c0002864:	fb                   	sti    
c0002865:	ff 15 10 9e 00 c0    	call   *0xc0009e10
c000286b:	e9 71 f1 ff ff       	jmp    c00019e1 <exit_int>

c0002870 <int93_entry>:
c0002870:	fa                   	cli    
c0002871:	6a 00                	push   $0x0
c0002873:	60                   	pusha  
c0002874:	1e                   	push   %ds
c0002875:	06                   	push   %es
c0002876:	0f a0                	push   %fs
c0002878:	0f a8                	push   %gs
c000287a:	66 b8 10 00          	mov    $0x10,%ax
c000287e:	8e d8                	mov    %eax,%ds
c0002880:	8e c0                	mov    %eax,%es
c0002882:	8e e0                	mov    %eax,%fs
c0002884:	b0 20                	mov    $0x20,%al
c0002886:	e6 20                	out    %al,$0x20
c0002888:	e6 a0                	out    %al,$0xa0
c000288a:	6a 5d                	push   $0x5d
c000288c:	fb                   	sti    
c000288d:	ff 15 14 9e 00 c0    	call   *0xc0009e14
c0002893:	e9 49 f1 ff ff       	jmp    c00019e1 <exit_int>

c0002898 <int94_entry>:
c0002898:	fa                   	cli    
c0002899:	6a 00                	push   $0x0
c000289b:	60                   	pusha  
c000289c:	1e                   	push   %ds
c000289d:	06                   	push   %es
c000289e:	0f a0                	push   %fs
c00028a0:	0f a8                	push   %gs
c00028a2:	66 b8 10 00          	mov    $0x10,%ax
c00028a6:	8e d8                	mov    %eax,%ds
c00028a8:	8e c0                	mov    %eax,%es
c00028aa:	8e e0                	mov    %eax,%fs
c00028ac:	b0 20                	mov    $0x20,%al
c00028ae:	e6 20                	out    %al,$0x20
c00028b0:	e6 a0                	out    %al,$0xa0
c00028b2:	6a 5e                	push   $0x5e
c00028b4:	fb                   	sti    
c00028b5:	ff 15 18 9e 00 c0    	call   *0xc0009e18
c00028bb:	e9 21 f1 ff ff       	jmp    c00019e1 <exit_int>

c00028c0 <int95_entry>:
c00028c0:	fa                   	cli    
c00028c1:	6a 00                	push   $0x0
c00028c3:	60                   	pusha  
c00028c4:	1e                   	push   %ds
c00028c5:	06                   	push   %es
c00028c6:	0f a0                	push   %fs
c00028c8:	0f a8                	push   %gs
c00028ca:	66 b8 10 00          	mov    $0x10,%ax
c00028ce:	8e d8                	mov    %eax,%ds
c00028d0:	8e c0                	mov    %eax,%es
c00028d2:	8e e0                	mov    %eax,%fs
c00028d4:	b0 20                	mov    $0x20,%al
c00028d6:	e6 20                	out    %al,$0x20
c00028d8:	e6 a0                	out    %al,$0xa0
c00028da:	6a 5f                	push   $0x5f
c00028dc:	fb                   	sti    
c00028dd:	ff 15 1c 9e 00 c0    	call   *0xc0009e1c
c00028e3:	e9 f9 f0 ff ff       	jmp    c00019e1 <exit_int>

c00028e8 <int96_entry>:
c00028e8:	fa                   	cli    
c00028e9:	6a 00                	push   $0x0
c00028eb:	60                   	pusha  
c00028ec:	1e                   	push   %ds
c00028ed:	06                   	push   %es
c00028ee:	0f a0                	push   %fs
c00028f0:	0f a8                	push   %gs
c00028f2:	66 b8 10 00          	mov    $0x10,%ax
c00028f6:	8e d8                	mov    %eax,%ds
c00028f8:	8e c0                	mov    %eax,%es
c00028fa:	8e e0                	mov    %eax,%fs
c00028fc:	b0 20                	mov    $0x20,%al
c00028fe:	e6 20                	out    %al,$0x20
c0002900:	e6 a0                	out    %al,$0xa0
c0002902:	6a 60                	push   $0x60
c0002904:	fb                   	sti    
c0002905:	ff 15 20 9e 00 c0    	call   *0xc0009e20
c000290b:	e9 d1 f0 ff ff       	jmp    c00019e1 <exit_int>

c0002910 <int97_entry>:
c0002910:	fa                   	cli    
c0002911:	6a 00                	push   $0x0
c0002913:	60                   	pusha  
c0002914:	1e                   	push   %ds
c0002915:	06                   	push   %es
c0002916:	0f a0                	push   %fs
c0002918:	0f a8                	push   %gs
c000291a:	66 b8 10 00          	mov    $0x10,%ax
c000291e:	8e d8                	mov    %eax,%ds
c0002920:	8e c0                	mov    %eax,%es
c0002922:	8e e0                	mov    %eax,%fs
c0002924:	b0 20                	mov    $0x20,%al
c0002926:	e6 20                	out    %al,$0x20
c0002928:	e6 a0                	out    %al,$0xa0
c000292a:	6a 61                	push   $0x61
c000292c:	fb                   	sti    
c000292d:	ff 15 24 9e 00 c0    	call   *0xc0009e24
c0002933:	e9 a9 f0 ff ff       	jmp    c00019e1 <exit_int>

c0002938 <int98_entry>:
c0002938:	fa                   	cli    
c0002939:	6a 00                	push   $0x0
c000293b:	60                   	pusha  
c000293c:	1e                   	push   %ds
c000293d:	06                   	push   %es
c000293e:	0f a0                	push   %fs
c0002940:	0f a8                	push   %gs
c0002942:	66 b8 10 00          	mov    $0x10,%ax
c0002946:	8e d8                	mov    %eax,%ds
c0002948:	8e c0                	mov    %eax,%es
c000294a:	8e e0                	mov    %eax,%fs
c000294c:	b0 20                	mov    $0x20,%al
c000294e:	e6 20                	out    %al,$0x20
c0002950:	e6 a0                	out    %al,$0xa0
c0002952:	6a 62                	push   $0x62
c0002954:	fb                   	sti    
c0002955:	ff 15 28 9e 00 c0    	call   *0xc0009e28
c000295b:	e9 81 f0 ff ff       	jmp    c00019e1 <exit_int>

c0002960 <int99_entry>:
c0002960:	fa                   	cli    
c0002961:	6a 00                	push   $0x0
c0002963:	60                   	pusha  
c0002964:	1e                   	push   %ds
c0002965:	06                   	push   %es
c0002966:	0f a0                	push   %fs
c0002968:	0f a8                	push   %gs
c000296a:	66 b8 10 00          	mov    $0x10,%ax
c000296e:	8e d8                	mov    %eax,%ds
c0002970:	8e c0                	mov    %eax,%es
c0002972:	8e e0                	mov    %eax,%fs
c0002974:	b0 20                	mov    $0x20,%al
c0002976:	e6 20                	out    %al,$0x20
c0002978:	e6 a0                	out    %al,$0xa0
c000297a:	6a 63                	push   $0x63
c000297c:	fb                   	sti    
c000297d:	ff 15 2c 9e 00 c0    	call   *0xc0009e2c
c0002983:	e9 59 f0 ff ff       	jmp    c00019e1 <exit_int>

c0002988 <int100_entry>:
c0002988:	fa                   	cli    
c0002989:	6a 00                	push   $0x0
c000298b:	60                   	pusha  
c000298c:	1e                   	push   %ds
c000298d:	06                   	push   %es
c000298e:	0f a0                	push   %fs
c0002990:	0f a8                	push   %gs
c0002992:	66 b8 10 00          	mov    $0x10,%ax
c0002996:	8e d8                	mov    %eax,%ds
c0002998:	8e c0                	mov    %eax,%es
c000299a:	8e e0                	mov    %eax,%fs
c000299c:	b0 20                	mov    $0x20,%al
c000299e:	e6 20                	out    %al,$0x20
c00029a0:	e6 a0                	out    %al,$0xa0
c00029a2:	6a 64                	push   $0x64
c00029a4:	fb                   	sti    
c00029a5:	ff 15 30 9e 00 c0    	call   *0xc0009e30
c00029ab:	e9 31 f0 ff ff       	jmp    c00019e1 <exit_int>

c00029b0 <int101_entry>:
c00029b0:	fa                   	cli    
c00029b1:	6a 00                	push   $0x0
c00029b3:	60                   	pusha  
c00029b4:	1e                   	push   %ds
c00029b5:	06                   	push   %es
c00029b6:	0f a0                	push   %fs
c00029b8:	0f a8                	push   %gs
c00029ba:	66 b8 10 00          	mov    $0x10,%ax
c00029be:	8e d8                	mov    %eax,%ds
c00029c0:	8e c0                	mov    %eax,%es
c00029c2:	8e e0                	mov    %eax,%fs
c00029c4:	b0 20                	mov    $0x20,%al
c00029c6:	e6 20                	out    %al,$0x20
c00029c8:	e6 a0                	out    %al,$0xa0
c00029ca:	6a 65                	push   $0x65
c00029cc:	fb                   	sti    
c00029cd:	ff 15 34 9e 00 c0    	call   *0xc0009e34
c00029d3:	e9 09 f0 ff ff       	jmp    c00019e1 <exit_int>

c00029d8 <int102_entry>:
c00029d8:	fa                   	cli    
c00029d9:	6a 00                	push   $0x0
c00029db:	60                   	pusha  
c00029dc:	1e                   	push   %ds
c00029dd:	06                   	push   %es
c00029de:	0f a0                	push   %fs
c00029e0:	0f a8                	push   %gs
c00029e2:	66 b8 10 00          	mov    $0x10,%ax
c00029e6:	8e d8                	mov    %eax,%ds
c00029e8:	8e c0                	mov    %eax,%es
c00029ea:	8e e0                	mov    %eax,%fs
c00029ec:	b0 20                	mov    $0x20,%al
c00029ee:	e6 20                	out    %al,$0x20
c00029f0:	e6 a0                	out    %al,$0xa0
c00029f2:	6a 66                	push   $0x66
c00029f4:	fb                   	sti    
c00029f5:	ff 15 38 9e 00 c0    	call   *0xc0009e38
c00029fb:	e9 e1 ef ff ff       	jmp    c00019e1 <exit_int>

c0002a00 <int103_entry>:
c0002a00:	fa                   	cli    
c0002a01:	6a 00                	push   $0x0
c0002a03:	60                   	pusha  
c0002a04:	1e                   	push   %ds
c0002a05:	06                   	push   %es
c0002a06:	0f a0                	push   %fs
c0002a08:	0f a8                	push   %gs
c0002a0a:	66 b8 10 00          	mov    $0x10,%ax
c0002a0e:	8e d8                	mov    %eax,%ds
c0002a10:	8e c0                	mov    %eax,%es
c0002a12:	8e e0                	mov    %eax,%fs
c0002a14:	b0 20                	mov    $0x20,%al
c0002a16:	e6 20                	out    %al,$0x20
c0002a18:	e6 a0                	out    %al,$0xa0
c0002a1a:	6a 67                	push   $0x67
c0002a1c:	fb                   	sti    
c0002a1d:	ff 15 3c 9e 00 c0    	call   *0xc0009e3c
c0002a23:	e9 b9 ef ff ff       	jmp    c00019e1 <exit_int>

c0002a28 <int104_entry>:
c0002a28:	fa                   	cli    
c0002a29:	6a 00                	push   $0x0
c0002a2b:	60                   	pusha  
c0002a2c:	1e                   	push   %ds
c0002a2d:	06                   	push   %es
c0002a2e:	0f a0                	push   %fs
c0002a30:	0f a8                	push   %gs
c0002a32:	66 b8 10 00          	mov    $0x10,%ax
c0002a36:	8e d8                	mov    %eax,%ds
c0002a38:	8e c0                	mov    %eax,%es
c0002a3a:	8e e0                	mov    %eax,%fs
c0002a3c:	b0 20                	mov    $0x20,%al
c0002a3e:	e6 20                	out    %al,$0x20
c0002a40:	e6 a0                	out    %al,$0xa0
c0002a42:	6a 68                	push   $0x68
c0002a44:	fb                   	sti    
c0002a45:	ff 15 40 9e 00 c0    	call   *0xc0009e40
c0002a4b:	e9 91 ef ff ff       	jmp    c00019e1 <exit_int>

c0002a50 <int105_entry>:
c0002a50:	fa                   	cli    
c0002a51:	6a 00                	push   $0x0
c0002a53:	60                   	pusha  
c0002a54:	1e                   	push   %ds
c0002a55:	06                   	push   %es
c0002a56:	0f a0                	push   %fs
c0002a58:	0f a8                	push   %gs
c0002a5a:	66 b8 10 00          	mov    $0x10,%ax
c0002a5e:	8e d8                	mov    %eax,%ds
c0002a60:	8e c0                	mov    %eax,%es
c0002a62:	8e e0                	mov    %eax,%fs
c0002a64:	b0 20                	mov    $0x20,%al
c0002a66:	e6 20                	out    %al,$0x20
c0002a68:	e6 a0                	out    %al,$0xa0
c0002a6a:	6a 69                	push   $0x69
c0002a6c:	fb                   	sti    
c0002a6d:	ff 15 44 9e 00 c0    	call   *0xc0009e44
c0002a73:	e9 69 ef ff ff       	jmp    c00019e1 <exit_int>

c0002a78 <int106_entry>:
c0002a78:	fa                   	cli    
c0002a79:	6a 00                	push   $0x0
c0002a7b:	60                   	pusha  
c0002a7c:	1e                   	push   %ds
c0002a7d:	06                   	push   %es
c0002a7e:	0f a0                	push   %fs
c0002a80:	0f a8                	push   %gs
c0002a82:	66 b8 10 00          	mov    $0x10,%ax
c0002a86:	8e d8                	mov    %eax,%ds
c0002a88:	8e c0                	mov    %eax,%es
c0002a8a:	8e e0                	mov    %eax,%fs
c0002a8c:	b0 20                	mov    $0x20,%al
c0002a8e:	e6 20                	out    %al,$0x20
c0002a90:	e6 a0                	out    %al,$0xa0
c0002a92:	6a 6a                	push   $0x6a
c0002a94:	fb                   	sti    
c0002a95:	ff 15 48 9e 00 c0    	call   *0xc0009e48
c0002a9b:	e9 41 ef ff ff       	jmp    c00019e1 <exit_int>

c0002aa0 <int107_entry>:
c0002aa0:	fa                   	cli    
c0002aa1:	6a 00                	push   $0x0
c0002aa3:	60                   	pusha  
c0002aa4:	1e                   	push   %ds
c0002aa5:	06                   	push   %es
c0002aa6:	0f a0                	push   %fs
c0002aa8:	0f a8                	push   %gs
c0002aaa:	66 b8 10 00          	mov    $0x10,%ax
c0002aae:	8e d8                	mov    %eax,%ds
c0002ab0:	8e c0                	mov    %eax,%es
c0002ab2:	8e e0                	mov    %eax,%fs
c0002ab4:	b0 20                	mov    $0x20,%al
c0002ab6:	e6 20                	out    %al,$0x20
c0002ab8:	e6 a0                	out    %al,$0xa0
c0002aba:	6a 6b                	push   $0x6b
c0002abc:	fb                   	sti    
c0002abd:	ff 15 4c 9e 00 c0    	call   *0xc0009e4c
c0002ac3:	e9 19 ef ff ff       	jmp    c00019e1 <exit_int>

c0002ac8 <int108_entry>:
c0002ac8:	fa                   	cli    
c0002ac9:	6a 00                	push   $0x0
c0002acb:	60                   	pusha  
c0002acc:	1e                   	push   %ds
c0002acd:	06                   	push   %es
c0002ace:	0f a0                	push   %fs
c0002ad0:	0f a8                	push   %gs
c0002ad2:	66 b8 10 00          	mov    $0x10,%ax
c0002ad6:	8e d8                	mov    %eax,%ds
c0002ad8:	8e c0                	mov    %eax,%es
c0002ada:	8e e0                	mov    %eax,%fs
c0002adc:	b0 20                	mov    $0x20,%al
c0002ade:	e6 20                	out    %al,$0x20
c0002ae0:	e6 a0                	out    %al,$0xa0
c0002ae2:	6a 6c                	push   $0x6c
c0002ae4:	fb                   	sti    
c0002ae5:	ff 15 50 9e 00 c0    	call   *0xc0009e50
c0002aeb:	e9 f1 ee ff ff       	jmp    c00019e1 <exit_int>

c0002af0 <int109_entry>:
c0002af0:	fa                   	cli    
c0002af1:	6a 00                	push   $0x0
c0002af3:	60                   	pusha  
c0002af4:	1e                   	push   %ds
c0002af5:	06                   	push   %es
c0002af6:	0f a0                	push   %fs
c0002af8:	0f a8                	push   %gs
c0002afa:	66 b8 10 00          	mov    $0x10,%ax
c0002afe:	8e d8                	mov    %eax,%ds
c0002b00:	8e c0                	mov    %eax,%es
c0002b02:	8e e0                	mov    %eax,%fs
c0002b04:	b0 20                	mov    $0x20,%al
c0002b06:	e6 20                	out    %al,$0x20
c0002b08:	e6 a0                	out    %al,$0xa0
c0002b0a:	6a 6d                	push   $0x6d
c0002b0c:	fb                   	sti    
c0002b0d:	ff 15 54 9e 00 c0    	call   *0xc0009e54
c0002b13:	e9 c9 ee ff ff       	jmp    c00019e1 <exit_int>

c0002b18 <int110_entry>:
c0002b18:	fa                   	cli    
c0002b19:	6a 00                	push   $0x0
c0002b1b:	60                   	pusha  
c0002b1c:	1e                   	push   %ds
c0002b1d:	06                   	push   %es
c0002b1e:	0f a0                	push   %fs
c0002b20:	0f a8                	push   %gs
c0002b22:	66 b8 10 00          	mov    $0x10,%ax
c0002b26:	8e d8                	mov    %eax,%ds
c0002b28:	8e c0                	mov    %eax,%es
c0002b2a:	8e e0                	mov    %eax,%fs
c0002b2c:	b0 20                	mov    $0x20,%al
c0002b2e:	e6 20                	out    %al,$0x20
c0002b30:	e6 a0                	out    %al,$0xa0
c0002b32:	6a 6e                	push   $0x6e
c0002b34:	fb                   	sti    
c0002b35:	ff 15 58 9e 00 c0    	call   *0xc0009e58
c0002b3b:	e9 a1 ee ff ff       	jmp    c00019e1 <exit_int>

c0002b40 <int111_entry>:
c0002b40:	fa                   	cli    
c0002b41:	6a 00                	push   $0x0
c0002b43:	60                   	pusha  
c0002b44:	1e                   	push   %ds
c0002b45:	06                   	push   %es
c0002b46:	0f a0                	push   %fs
c0002b48:	0f a8                	push   %gs
c0002b4a:	66 b8 10 00          	mov    $0x10,%ax
c0002b4e:	8e d8                	mov    %eax,%ds
c0002b50:	8e c0                	mov    %eax,%es
c0002b52:	8e e0                	mov    %eax,%fs
c0002b54:	b0 20                	mov    $0x20,%al
c0002b56:	e6 20                	out    %al,$0x20
c0002b58:	e6 a0                	out    %al,$0xa0
c0002b5a:	6a 6f                	push   $0x6f
c0002b5c:	fb                   	sti    
c0002b5d:	ff 15 5c 9e 00 c0    	call   *0xc0009e5c
c0002b63:	e9 79 ee ff ff       	jmp    c00019e1 <exit_int>

c0002b68 <int112_entry>:
c0002b68:	fa                   	cli    
c0002b69:	6a 00                	push   $0x0
c0002b6b:	60                   	pusha  
c0002b6c:	1e                   	push   %ds
c0002b6d:	06                   	push   %es
c0002b6e:	0f a0                	push   %fs
c0002b70:	0f a8                	push   %gs
c0002b72:	66 b8 10 00          	mov    $0x10,%ax
c0002b76:	8e d8                	mov    %eax,%ds
c0002b78:	8e c0                	mov    %eax,%es
c0002b7a:	8e e0                	mov    %eax,%fs
c0002b7c:	b0 20                	mov    $0x20,%al
c0002b7e:	e6 20                	out    %al,$0x20
c0002b80:	e6 a0                	out    %al,$0xa0
c0002b82:	6a 70                	push   $0x70
c0002b84:	fb                   	sti    
c0002b85:	ff 15 60 9e 00 c0    	call   *0xc0009e60
c0002b8b:	e9 51 ee ff ff       	jmp    c00019e1 <exit_int>

c0002b90 <int113_entry>:
c0002b90:	fa                   	cli    
c0002b91:	6a 00                	push   $0x0
c0002b93:	60                   	pusha  
c0002b94:	1e                   	push   %ds
c0002b95:	06                   	push   %es
c0002b96:	0f a0                	push   %fs
c0002b98:	0f a8                	push   %gs
c0002b9a:	66 b8 10 00          	mov    $0x10,%ax
c0002b9e:	8e d8                	mov    %eax,%ds
c0002ba0:	8e c0                	mov    %eax,%es
c0002ba2:	8e e0                	mov    %eax,%fs
c0002ba4:	b0 20                	mov    $0x20,%al
c0002ba6:	e6 20                	out    %al,$0x20
c0002ba8:	e6 a0                	out    %al,$0xa0
c0002baa:	6a 71                	push   $0x71
c0002bac:	fb                   	sti    
c0002bad:	ff 15 64 9e 00 c0    	call   *0xc0009e64
c0002bb3:	e9 29 ee ff ff       	jmp    c00019e1 <exit_int>

c0002bb8 <int114_entry>:
c0002bb8:	fa                   	cli    
c0002bb9:	6a 00                	push   $0x0
c0002bbb:	60                   	pusha  
c0002bbc:	1e                   	push   %ds
c0002bbd:	06                   	push   %es
c0002bbe:	0f a0                	push   %fs
c0002bc0:	0f a8                	push   %gs
c0002bc2:	66 b8 10 00          	mov    $0x10,%ax
c0002bc6:	8e d8                	mov    %eax,%ds
c0002bc8:	8e c0                	mov    %eax,%es
c0002bca:	8e e0                	mov    %eax,%fs
c0002bcc:	b0 20                	mov    $0x20,%al
c0002bce:	e6 20                	out    %al,$0x20
c0002bd0:	e6 a0                	out    %al,$0xa0
c0002bd2:	6a 72                	push   $0x72
c0002bd4:	fb                   	sti    
c0002bd5:	ff 15 68 9e 00 c0    	call   *0xc0009e68
c0002bdb:	e9 01 ee ff ff       	jmp    c00019e1 <exit_int>

c0002be0 <int115_entry>:
c0002be0:	fa                   	cli    
c0002be1:	6a 00                	push   $0x0
c0002be3:	60                   	pusha  
c0002be4:	1e                   	push   %ds
c0002be5:	06                   	push   %es
c0002be6:	0f a0                	push   %fs
c0002be8:	0f a8                	push   %gs
c0002bea:	66 b8 10 00          	mov    $0x10,%ax
c0002bee:	8e d8                	mov    %eax,%ds
c0002bf0:	8e c0                	mov    %eax,%es
c0002bf2:	8e e0                	mov    %eax,%fs
c0002bf4:	b0 20                	mov    $0x20,%al
c0002bf6:	e6 20                	out    %al,$0x20
c0002bf8:	e6 a0                	out    %al,$0xa0
c0002bfa:	6a 73                	push   $0x73
c0002bfc:	fb                   	sti    
c0002bfd:	ff 15 6c 9e 00 c0    	call   *0xc0009e6c
c0002c03:	e9 d9 ed ff ff       	jmp    c00019e1 <exit_int>

c0002c08 <int116_entry>:
c0002c08:	fa                   	cli    
c0002c09:	6a 00                	push   $0x0
c0002c0b:	60                   	pusha  
c0002c0c:	1e                   	push   %ds
c0002c0d:	06                   	push   %es
c0002c0e:	0f a0                	push   %fs
c0002c10:	0f a8                	push   %gs
c0002c12:	66 b8 10 00          	mov    $0x10,%ax
c0002c16:	8e d8                	mov    %eax,%ds
c0002c18:	8e c0                	mov    %eax,%es
c0002c1a:	8e e0                	mov    %eax,%fs
c0002c1c:	b0 20                	mov    $0x20,%al
c0002c1e:	e6 20                	out    %al,$0x20
c0002c20:	e6 a0                	out    %al,$0xa0
c0002c22:	6a 74                	push   $0x74
c0002c24:	fb                   	sti    
c0002c25:	ff 15 70 9e 00 c0    	call   *0xc0009e70
c0002c2b:	e9 b1 ed ff ff       	jmp    c00019e1 <exit_int>

c0002c30 <int117_entry>:
c0002c30:	fa                   	cli    
c0002c31:	6a 00                	push   $0x0
c0002c33:	60                   	pusha  
c0002c34:	1e                   	push   %ds
c0002c35:	06                   	push   %es
c0002c36:	0f a0                	push   %fs
c0002c38:	0f a8                	push   %gs
c0002c3a:	66 b8 10 00          	mov    $0x10,%ax
c0002c3e:	8e d8                	mov    %eax,%ds
c0002c40:	8e c0                	mov    %eax,%es
c0002c42:	8e e0                	mov    %eax,%fs
c0002c44:	b0 20                	mov    $0x20,%al
c0002c46:	e6 20                	out    %al,$0x20
c0002c48:	e6 a0                	out    %al,$0xa0
c0002c4a:	6a 75                	push   $0x75
c0002c4c:	fb                   	sti    
c0002c4d:	ff 15 74 9e 00 c0    	call   *0xc0009e74
c0002c53:	e9 89 ed ff ff       	jmp    c00019e1 <exit_int>

c0002c58 <int118_entry>:
c0002c58:	fa                   	cli    
c0002c59:	6a 00                	push   $0x0
c0002c5b:	60                   	pusha  
c0002c5c:	1e                   	push   %ds
c0002c5d:	06                   	push   %es
c0002c5e:	0f a0                	push   %fs
c0002c60:	0f a8                	push   %gs
c0002c62:	66 b8 10 00          	mov    $0x10,%ax
c0002c66:	8e d8                	mov    %eax,%ds
c0002c68:	8e c0                	mov    %eax,%es
c0002c6a:	8e e0                	mov    %eax,%fs
c0002c6c:	b0 20                	mov    $0x20,%al
c0002c6e:	e6 20                	out    %al,$0x20
c0002c70:	e6 a0                	out    %al,$0xa0
c0002c72:	6a 76                	push   $0x76
c0002c74:	fb                   	sti    
c0002c75:	ff 15 78 9e 00 c0    	call   *0xc0009e78
c0002c7b:	e9 61 ed ff ff       	jmp    c00019e1 <exit_int>

c0002c80 <int119_entry>:
c0002c80:	fa                   	cli    
c0002c81:	6a 00                	push   $0x0
c0002c83:	60                   	pusha  
c0002c84:	1e                   	push   %ds
c0002c85:	06                   	push   %es
c0002c86:	0f a0                	push   %fs
c0002c88:	0f a8                	push   %gs
c0002c8a:	66 b8 10 00          	mov    $0x10,%ax
c0002c8e:	8e d8                	mov    %eax,%ds
c0002c90:	8e c0                	mov    %eax,%es
c0002c92:	8e e0                	mov    %eax,%fs
c0002c94:	b0 20                	mov    $0x20,%al
c0002c96:	e6 20                	out    %al,$0x20
c0002c98:	e6 a0                	out    %al,$0xa0
c0002c9a:	6a 77                	push   $0x77
c0002c9c:	fb                   	sti    
c0002c9d:	ff 15 7c 9e 00 c0    	call   *0xc0009e7c
c0002ca3:	e9 39 ed ff ff       	jmp    c00019e1 <exit_int>

c0002ca8 <int120_entry>:
c0002ca8:	fa                   	cli    
c0002ca9:	6a 00                	push   $0x0
c0002cab:	60                   	pusha  
c0002cac:	1e                   	push   %ds
c0002cad:	06                   	push   %es
c0002cae:	0f a0                	push   %fs
c0002cb0:	0f a8                	push   %gs
c0002cb2:	66 b8 10 00          	mov    $0x10,%ax
c0002cb6:	8e d8                	mov    %eax,%ds
c0002cb8:	8e c0                	mov    %eax,%es
c0002cba:	8e e0                	mov    %eax,%fs
c0002cbc:	b0 20                	mov    $0x20,%al
c0002cbe:	e6 20                	out    %al,$0x20
c0002cc0:	e6 a0                	out    %al,$0xa0
c0002cc2:	6a 78                	push   $0x78
c0002cc4:	fb                   	sti    
c0002cc5:	ff 15 80 9e 00 c0    	call   *0xc0009e80
c0002ccb:	e9 11 ed ff ff       	jmp    c00019e1 <exit_int>

c0002cd0 <int121_entry>:
c0002cd0:	fa                   	cli    
c0002cd1:	6a 00                	push   $0x0
c0002cd3:	60                   	pusha  
c0002cd4:	1e                   	push   %ds
c0002cd5:	06                   	push   %es
c0002cd6:	0f a0                	push   %fs
c0002cd8:	0f a8                	push   %gs
c0002cda:	66 b8 10 00          	mov    $0x10,%ax
c0002cde:	8e d8                	mov    %eax,%ds
c0002ce0:	8e c0                	mov    %eax,%es
c0002ce2:	8e e0                	mov    %eax,%fs
c0002ce4:	b0 20                	mov    $0x20,%al
c0002ce6:	e6 20                	out    %al,$0x20
c0002ce8:	e6 a0                	out    %al,$0xa0
c0002cea:	6a 79                	push   $0x79
c0002cec:	fb                   	sti    
c0002ced:	ff 15 84 9e 00 c0    	call   *0xc0009e84
c0002cf3:	e9 e9 ec ff ff       	jmp    c00019e1 <exit_int>

c0002cf8 <int122_entry>:
c0002cf8:	fa                   	cli    
c0002cf9:	6a 00                	push   $0x0
c0002cfb:	60                   	pusha  
c0002cfc:	1e                   	push   %ds
c0002cfd:	06                   	push   %es
c0002cfe:	0f a0                	push   %fs
c0002d00:	0f a8                	push   %gs
c0002d02:	66 b8 10 00          	mov    $0x10,%ax
c0002d06:	8e d8                	mov    %eax,%ds
c0002d08:	8e c0                	mov    %eax,%es
c0002d0a:	8e e0                	mov    %eax,%fs
c0002d0c:	b0 20                	mov    $0x20,%al
c0002d0e:	e6 20                	out    %al,$0x20
c0002d10:	e6 a0                	out    %al,$0xa0
c0002d12:	6a 7a                	push   $0x7a
c0002d14:	fb                   	sti    
c0002d15:	ff 15 88 9e 00 c0    	call   *0xc0009e88
c0002d1b:	e9 c1 ec ff ff       	jmp    c00019e1 <exit_int>

c0002d20 <int123_entry>:
c0002d20:	fa                   	cli    
c0002d21:	6a 00                	push   $0x0
c0002d23:	60                   	pusha  
c0002d24:	1e                   	push   %ds
c0002d25:	06                   	push   %es
c0002d26:	0f a0                	push   %fs
c0002d28:	0f a8                	push   %gs
c0002d2a:	66 b8 10 00          	mov    $0x10,%ax
c0002d2e:	8e d8                	mov    %eax,%ds
c0002d30:	8e c0                	mov    %eax,%es
c0002d32:	8e e0                	mov    %eax,%fs
c0002d34:	b0 20                	mov    $0x20,%al
c0002d36:	e6 20                	out    %al,$0x20
c0002d38:	e6 a0                	out    %al,$0xa0
c0002d3a:	6a 7b                	push   $0x7b
c0002d3c:	fb                   	sti    
c0002d3d:	ff 15 8c 9e 00 c0    	call   *0xc0009e8c
c0002d43:	e9 99 ec ff ff       	jmp    c00019e1 <exit_int>

c0002d48 <int124_entry>:
c0002d48:	fa                   	cli    
c0002d49:	6a 00                	push   $0x0
c0002d4b:	60                   	pusha  
c0002d4c:	1e                   	push   %ds
c0002d4d:	06                   	push   %es
c0002d4e:	0f a0                	push   %fs
c0002d50:	0f a8                	push   %gs
c0002d52:	66 b8 10 00          	mov    $0x10,%ax
c0002d56:	8e d8                	mov    %eax,%ds
c0002d58:	8e c0                	mov    %eax,%es
c0002d5a:	8e e0                	mov    %eax,%fs
c0002d5c:	b0 20                	mov    $0x20,%al
c0002d5e:	e6 20                	out    %al,$0x20
c0002d60:	e6 a0                	out    %al,$0xa0
c0002d62:	6a 7c                	push   $0x7c
c0002d64:	fb                   	sti    
c0002d65:	ff 15 90 9e 00 c0    	call   *0xc0009e90
c0002d6b:	e9 71 ec ff ff       	jmp    c00019e1 <exit_int>

c0002d70 <int125_entry>:
c0002d70:	fa                   	cli    
c0002d71:	6a 00                	push   $0x0
c0002d73:	60                   	pusha  
c0002d74:	1e                   	push   %ds
c0002d75:	06                   	push   %es
c0002d76:	0f a0                	push   %fs
c0002d78:	0f a8                	push   %gs
c0002d7a:	66 b8 10 00          	mov    $0x10,%ax
c0002d7e:	8e d8                	mov    %eax,%ds
c0002d80:	8e c0                	mov    %eax,%es
c0002d82:	8e e0                	mov    %eax,%fs
c0002d84:	b0 20                	mov    $0x20,%al
c0002d86:	e6 20                	out    %al,$0x20
c0002d88:	e6 a0                	out    %al,$0xa0
c0002d8a:	6a 7d                	push   $0x7d
c0002d8c:	fb                   	sti    
c0002d8d:	ff 15 94 9e 00 c0    	call   *0xc0009e94
c0002d93:	e9 49 ec ff ff       	jmp    c00019e1 <exit_int>

c0002d98 <int126_entry>:
c0002d98:	fa                   	cli    
c0002d99:	6a 00                	push   $0x0
c0002d9b:	60                   	pusha  
c0002d9c:	1e                   	push   %ds
c0002d9d:	06                   	push   %es
c0002d9e:	0f a0                	push   %fs
c0002da0:	0f a8                	push   %gs
c0002da2:	66 b8 10 00          	mov    $0x10,%ax
c0002da6:	8e d8                	mov    %eax,%ds
c0002da8:	8e c0                	mov    %eax,%es
c0002daa:	8e e0                	mov    %eax,%fs
c0002dac:	b0 20                	mov    $0x20,%al
c0002dae:	e6 20                	out    %al,$0x20
c0002db0:	e6 a0                	out    %al,$0xa0
c0002db2:	6a 7e                	push   $0x7e
c0002db4:	fb                   	sti    
c0002db5:	ff 15 98 9e 00 c0    	call   *0xc0009e98
c0002dbb:	e9 21 ec ff ff       	jmp    c00019e1 <exit_int>

c0002dc0 <int127_entry>:
c0002dc0:	fa                   	cli    
c0002dc1:	6a 00                	push   $0x0
c0002dc3:	60                   	pusha  
c0002dc4:	1e                   	push   %ds
c0002dc5:	06                   	push   %es
c0002dc6:	0f a0                	push   %fs
c0002dc8:	0f a8                	push   %gs
c0002dca:	66 b8 10 00          	mov    $0x10,%ax
c0002dce:	8e d8                	mov    %eax,%ds
c0002dd0:	8e c0                	mov    %eax,%es
c0002dd2:	8e e0                	mov    %eax,%fs
c0002dd4:	b0 20                	mov    $0x20,%al
c0002dd6:	e6 20                	out    %al,$0x20
c0002dd8:	e6 a0                	out    %al,$0xa0
c0002dda:	6a 7f                	push   $0x7f
c0002ddc:	fb                   	sti    
c0002ddd:	ff 15 9c 9e 00 c0    	call   *0xc0009e9c
c0002de3:	e9 f9 eb ff ff       	jmp    c00019e1 <exit_int>

c0002de8 <int_entry_fill>:
c0002de8:	c7 05 00 90 00 c0 f5 	movl   $0xc00019f5,0xc0009000
c0002def:	19 00 c0 
c0002df2:	c7 05 04 90 00 c0 1a 	movl   $0xc0001a1a,0xc0009004
c0002df9:	1a 00 c0 
c0002dfc:	c7 05 08 90 00 c0 3f 	movl   $0xc0001a3f,0xc0009008
c0002e03:	1a 00 c0 
c0002e06:	c7 05 0c 90 00 c0 67 	movl   $0xc0001a67,0xc000900c
c0002e0d:	1a 00 c0 
c0002e10:	c7 05 10 90 00 c0 8f 	movl   $0xc0001a8f,0xc0009010
c0002e17:	1a 00 c0 
c0002e1a:	c7 05 14 90 00 c0 b7 	movl   $0xc0001ab7,0xc0009014
c0002e21:	1a 00 c0 
c0002e24:	c7 05 18 90 00 c0 df 	movl   $0xc0001adf,0xc0009018
c0002e2b:	1a 00 c0 
c0002e2e:	c7 05 1c 90 00 c0 07 	movl   $0xc0001b07,0xc000901c
c0002e35:	1b 00 c0 
c0002e38:	c7 05 20 90 00 c0 2f 	movl   $0xc0001b2f,0xc0009020
c0002e3f:	1b 00 c0 
c0002e42:	c7 05 24 90 00 c0 56 	movl   $0xc0001b56,0xc0009024
c0002e49:	1b 00 c0 
c0002e4c:	c7 05 28 90 00 c0 7e 	movl   $0xc0001b7e,0xc0009028
c0002e53:	1b 00 c0 
c0002e56:	c7 05 2c 90 00 c0 a5 	movl   $0xc0001ba5,0xc000902c
c0002e5d:	1b 00 c0 
c0002e60:	c7 05 30 90 00 c0 cc 	movl   $0xc0001bcc,0xc0009030
c0002e67:	1b 00 c0 
c0002e6a:	c7 05 34 90 00 c0 f3 	movl   $0xc0001bf3,0xc0009034
c0002e71:	1b 00 c0 
c0002e74:	c7 05 38 90 00 c0 1a 	movl   $0xc0001c1a,0xc0009038
c0002e7b:	1c 00 c0 
c0002e7e:	c7 05 3c 90 00 c0 41 	movl   $0xc0001c41,0xc000903c
c0002e85:	1c 00 c0 
c0002e88:	c7 05 40 90 00 c0 69 	movl   $0xc0001c69,0xc0009040
c0002e8f:	1c 00 c0 
c0002e92:	c7 05 44 90 00 c0 91 	movl   $0xc0001c91,0xc0009044
c0002e99:	1c 00 c0 
c0002e9c:	c7 05 48 90 00 c0 b8 	movl   $0xc0001cb8,0xc0009048
c0002ea3:	1c 00 c0 
c0002ea6:	c7 05 4c 90 00 c0 e0 	movl   $0xc0001ce0,0xc000904c
c0002ead:	1c 00 c0 
c0002eb0:	c7 05 50 90 00 c0 08 	movl   $0xc0001d08,0xc0009050
c0002eb7:	1d 00 c0 
c0002eba:	c7 05 54 90 00 c0 30 	movl   $0xc0001d30,0xc0009054
c0002ec1:	1d 00 c0 
c0002ec4:	c7 05 58 90 00 c0 58 	movl   $0xc0001d58,0xc0009058
c0002ecb:	1d 00 c0 
c0002ece:	c7 05 5c 90 00 c0 80 	movl   $0xc0001d80,0xc000905c
c0002ed5:	1d 00 c0 
c0002ed8:	c7 05 60 90 00 c0 a8 	movl   $0xc0001da8,0xc0009060
c0002edf:	1d 00 c0 
c0002ee2:	c7 05 64 90 00 c0 d0 	movl   $0xc0001dd0,0xc0009064
c0002ee9:	1d 00 c0 
c0002eec:	c7 05 68 90 00 c0 f8 	movl   $0xc0001df8,0xc0009068
c0002ef3:	1d 00 c0 
c0002ef6:	c7 05 6c 90 00 c0 20 	movl   $0xc0001e20,0xc000906c
c0002efd:	1e 00 c0 
c0002f00:	c7 05 70 90 00 c0 48 	movl   $0xc0001e48,0xc0009070
c0002f07:	1e 00 c0 
c0002f0a:	c7 05 74 90 00 c0 70 	movl   $0xc0001e70,0xc0009074
c0002f11:	1e 00 c0 
c0002f14:	c7 05 78 90 00 c0 98 	movl   $0xc0001e98,0xc0009078
c0002f1b:	1e 00 c0 
c0002f1e:	c7 05 7c 90 00 c0 c0 	movl   $0xc0001ec0,0xc000907c
c0002f25:	1e 00 c0 
c0002f28:	c7 05 80 90 00 c0 e8 	movl   $0xc0001ee8,0xc0009080
c0002f2f:	1e 00 c0 
c0002f32:	c7 05 84 90 00 c0 10 	movl   $0xc0001f10,0xc0009084
c0002f39:	1f 00 c0 
c0002f3c:	c7 05 88 90 00 c0 38 	movl   $0xc0001f38,0xc0009088
c0002f43:	1f 00 c0 
c0002f46:	c7 05 8c 90 00 c0 60 	movl   $0xc0001f60,0xc000908c
c0002f4d:	1f 00 c0 
c0002f50:	c7 05 90 90 00 c0 88 	movl   $0xc0001f88,0xc0009090
c0002f57:	1f 00 c0 
c0002f5a:	c7 05 94 90 00 c0 b0 	movl   $0xc0001fb0,0xc0009094
c0002f61:	1f 00 c0 
c0002f64:	c7 05 98 90 00 c0 d8 	movl   $0xc0001fd8,0xc0009098
c0002f6b:	1f 00 c0 
c0002f6e:	c7 05 9c 90 00 c0 00 	movl   $0xc0002000,0xc000909c
c0002f75:	20 00 c0 
c0002f78:	c7 05 a0 90 00 c0 28 	movl   $0xc0002028,0xc00090a0
c0002f7f:	20 00 c0 
c0002f82:	c7 05 a4 90 00 c0 50 	movl   $0xc0002050,0xc00090a4
c0002f89:	20 00 c0 
c0002f8c:	c7 05 a8 90 00 c0 78 	movl   $0xc0002078,0xc00090a8
c0002f93:	20 00 c0 
c0002f96:	c7 05 ac 90 00 c0 a0 	movl   $0xc00020a0,0xc00090ac
c0002f9d:	20 00 c0 
c0002fa0:	c7 05 b0 90 00 c0 c8 	movl   $0xc00020c8,0xc00090b0
c0002fa7:	20 00 c0 
c0002faa:	c7 05 b4 90 00 c0 f0 	movl   $0xc00020f0,0xc00090b4
c0002fb1:	20 00 c0 
c0002fb4:	c7 05 b8 90 00 c0 18 	movl   $0xc0002118,0xc00090b8
c0002fbb:	21 00 c0 
c0002fbe:	c7 05 bc 90 00 c0 40 	movl   $0xc0002140,0xc00090bc
c0002fc5:	21 00 c0 
c0002fc8:	c7 05 c0 90 00 c0 68 	movl   $0xc0002168,0xc00090c0
c0002fcf:	21 00 c0 
c0002fd2:	c7 05 c4 90 00 c0 90 	movl   $0xc0002190,0xc00090c4
c0002fd9:	21 00 c0 
c0002fdc:	c7 05 c8 90 00 c0 b8 	movl   $0xc00021b8,0xc00090c8
c0002fe3:	21 00 c0 
c0002fe6:	c7 05 cc 90 00 c0 e0 	movl   $0xc00021e0,0xc00090cc
c0002fed:	21 00 c0 
c0002ff0:	c7 05 d0 90 00 c0 08 	movl   $0xc0002208,0xc00090d0
c0002ff7:	22 00 c0 
c0002ffa:	c7 05 d4 90 00 c0 30 	movl   $0xc0002230,0xc00090d4
c0003001:	22 00 c0 
c0003004:	c7 05 d8 90 00 c0 58 	movl   $0xc0002258,0xc00090d8
c000300b:	22 00 c0 
c000300e:	c7 05 dc 90 00 c0 80 	movl   $0xc0002280,0xc00090dc
c0003015:	22 00 c0 
c0003018:	c7 05 e0 90 00 c0 a8 	movl   $0xc00022a8,0xc00090e0
c000301f:	22 00 c0 
c0003022:	c7 05 e4 90 00 c0 d0 	movl   $0xc00022d0,0xc00090e4
c0003029:	22 00 c0 
c000302c:	c7 05 e8 90 00 c0 f8 	movl   $0xc00022f8,0xc00090e8
c0003033:	22 00 c0 
c0003036:	c7 05 ec 90 00 c0 20 	movl   $0xc0002320,0xc00090ec
c000303d:	23 00 c0 
c0003040:	c7 05 f0 90 00 c0 48 	movl   $0xc0002348,0xc00090f0
c0003047:	23 00 c0 
c000304a:	c7 05 f4 90 00 c0 70 	movl   $0xc0002370,0xc00090f4
c0003051:	23 00 c0 
c0003054:	c7 05 f8 90 00 c0 98 	movl   $0xc0002398,0xc00090f8
c000305b:	23 00 c0 
c000305e:	c7 05 fc 90 00 c0 c0 	movl   $0xc00023c0,0xc00090fc
c0003065:	23 00 c0 
c0003068:	c7 05 00 91 00 c0 e8 	movl   $0xc00023e8,0xc0009100
c000306f:	23 00 c0 
c0003072:	c7 05 04 91 00 c0 10 	movl   $0xc0002410,0xc0009104
c0003079:	24 00 c0 
c000307c:	c7 05 08 91 00 c0 38 	movl   $0xc0002438,0xc0009108
c0003083:	24 00 c0 
c0003086:	c7 05 0c 91 00 c0 60 	movl   $0xc0002460,0xc000910c
c000308d:	24 00 c0 
c0003090:	c7 05 10 91 00 c0 88 	movl   $0xc0002488,0xc0009110
c0003097:	24 00 c0 
c000309a:	c7 05 14 91 00 c0 b0 	movl   $0xc00024b0,0xc0009114
c00030a1:	24 00 c0 
c00030a4:	c7 05 18 91 00 c0 d8 	movl   $0xc00024d8,0xc0009118
c00030ab:	24 00 c0 
c00030ae:	c7 05 1c 91 00 c0 00 	movl   $0xc0002500,0xc000911c
c00030b5:	25 00 c0 
c00030b8:	c7 05 20 91 00 c0 28 	movl   $0xc0002528,0xc0009120
c00030bf:	25 00 c0 
c00030c2:	c7 05 24 91 00 c0 50 	movl   $0xc0002550,0xc0009124
c00030c9:	25 00 c0 
c00030cc:	c7 05 28 91 00 c0 78 	movl   $0xc0002578,0xc0009128
c00030d3:	25 00 c0 
c00030d6:	c7 05 2c 91 00 c0 a0 	movl   $0xc00025a0,0xc000912c
c00030dd:	25 00 c0 
c00030e0:	c7 05 30 91 00 c0 c8 	movl   $0xc00025c8,0xc0009130
c00030e7:	25 00 c0 
c00030ea:	c7 05 34 91 00 c0 f0 	movl   $0xc00025f0,0xc0009134
c00030f1:	25 00 c0 
c00030f4:	c7 05 38 91 00 c0 18 	movl   $0xc0002618,0xc0009138
c00030fb:	26 00 c0 
c00030fe:	c7 05 3c 91 00 c0 40 	movl   $0xc0002640,0xc000913c
c0003105:	26 00 c0 
c0003108:	c7 05 40 91 00 c0 68 	movl   $0xc0002668,0xc0009140
c000310f:	26 00 c0 
c0003112:	c7 05 44 91 00 c0 90 	movl   $0xc0002690,0xc0009144
c0003119:	26 00 c0 
c000311c:	c7 05 48 91 00 c0 b8 	movl   $0xc00026b8,0xc0009148
c0003123:	26 00 c0 
c0003126:	c7 05 4c 91 00 c0 e0 	movl   $0xc00026e0,0xc000914c
c000312d:	26 00 c0 
c0003130:	c7 05 50 91 00 c0 08 	movl   $0xc0002708,0xc0009150
c0003137:	27 00 c0 
c000313a:	c7 05 54 91 00 c0 30 	movl   $0xc0002730,0xc0009154
c0003141:	27 00 c0 
c0003144:	c7 05 58 91 00 c0 58 	movl   $0xc0002758,0xc0009158
c000314b:	27 00 c0 
c000314e:	c7 05 5c 91 00 c0 80 	movl   $0xc0002780,0xc000915c
c0003155:	27 00 c0 
c0003158:	c7 05 60 91 00 c0 a8 	movl   $0xc00027a8,0xc0009160
c000315f:	27 00 c0 
c0003162:	c7 05 64 91 00 c0 d0 	movl   $0xc00027d0,0xc0009164
c0003169:	27 00 c0 
c000316c:	c7 05 68 91 00 c0 f8 	movl   $0xc00027f8,0xc0009168
c0003173:	27 00 c0 
c0003176:	c7 05 6c 91 00 c0 20 	movl   $0xc0002820,0xc000916c
c000317d:	28 00 c0 
c0003180:	c7 05 70 91 00 c0 48 	movl   $0xc0002848,0xc0009170
c0003187:	28 00 c0 
c000318a:	c7 05 74 91 00 c0 70 	movl   $0xc0002870,0xc0009174
c0003191:	28 00 c0 
c0003194:	c7 05 78 91 00 c0 98 	movl   $0xc0002898,0xc0009178
c000319b:	28 00 c0 
c000319e:	c7 05 7c 91 00 c0 c0 	movl   $0xc00028c0,0xc000917c
c00031a5:	28 00 c0 
c00031a8:	c7 05 80 91 00 c0 e8 	movl   $0xc00028e8,0xc0009180
c00031af:	28 00 c0 
c00031b2:	c7 05 84 91 00 c0 10 	movl   $0xc0002910,0xc0009184
c00031b9:	29 00 c0 
c00031bc:	c7 05 88 91 00 c0 38 	movl   $0xc0002938,0xc0009188
c00031c3:	29 00 c0 
c00031c6:	c7 05 8c 91 00 c0 60 	movl   $0xc0002960,0xc000918c
c00031cd:	29 00 c0 
c00031d0:	c7 05 90 91 00 c0 88 	movl   $0xc0002988,0xc0009190
c00031d7:	29 00 c0 
c00031da:	c7 05 94 91 00 c0 b0 	movl   $0xc00029b0,0xc0009194
c00031e1:	29 00 c0 
c00031e4:	c7 05 98 91 00 c0 d8 	movl   $0xc00029d8,0xc0009198
c00031eb:	29 00 c0 
c00031ee:	c7 05 9c 91 00 c0 00 	movl   $0xc0002a00,0xc000919c
c00031f5:	2a 00 c0 
c00031f8:	c7 05 a0 91 00 c0 28 	movl   $0xc0002a28,0xc00091a0
c00031ff:	2a 00 c0 
c0003202:	c7 05 a4 91 00 c0 50 	movl   $0xc0002a50,0xc00091a4
c0003209:	2a 00 c0 
c000320c:	c7 05 a8 91 00 c0 78 	movl   $0xc0002a78,0xc00091a8
c0003213:	2a 00 c0 
c0003216:	c7 05 ac 91 00 c0 a0 	movl   $0xc0002aa0,0xc00091ac
c000321d:	2a 00 c0 
c0003220:	c7 05 b0 91 00 c0 c8 	movl   $0xc0002ac8,0xc00091b0
c0003227:	2a 00 c0 
c000322a:	c7 05 b4 91 00 c0 f0 	movl   $0xc0002af0,0xc00091b4
c0003231:	2a 00 c0 
c0003234:	c7 05 b8 91 00 c0 18 	movl   $0xc0002b18,0xc00091b8
c000323b:	2b 00 c0 
c000323e:	c7 05 bc 91 00 c0 40 	movl   $0xc0002b40,0xc00091bc
c0003245:	2b 00 c0 
c0003248:	c7 05 c0 91 00 c0 68 	movl   $0xc0002b68,0xc00091c0
c000324f:	2b 00 c0 
c0003252:	c7 05 c4 91 00 c0 90 	movl   $0xc0002b90,0xc00091c4
c0003259:	2b 00 c0 
c000325c:	c7 05 c8 91 00 c0 b8 	movl   $0xc0002bb8,0xc00091c8
c0003263:	2b 00 c0 
c0003266:	c7 05 cc 91 00 c0 e0 	movl   $0xc0002be0,0xc00091cc
c000326d:	2b 00 c0 
c0003270:	c7 05 d0 91 00 c0 08 	movl   $0xc0002c08,0xc00091d0
c0003277:	2c 00 c0 
c000327a:	c7 05 d4 91 00 c0 30 	movl   $0xc0002c30,0xc00091d4
c0003281:	2c 00 c0 
c0003284:	c7 05 d8 91 00 c0 58 	movl   $0xc0002c58,0xc00091d8
c000328b:	2c 00 c0 
c000328e:	c7 05 dc 91 00 c0 80 	movl   $0xc0002c80,0xc00091dc
c0003295:	2c 00 c0 
c0003298:	c7 05 e0 91 00 c0 a8 	movl   $0xc0002ca8,0xc00091e0
c000329f:	2c 00 c0 
c00032a2:	c7 05 e4 91 00 c0 d0 	movl   $0xc0002cd0,0xc00091e4
c00032a9:	2c 00 c0 
c00032ac:	c7 05 e8 91 00 c0 f8 	movl   $0xc0002cf8,0xc00091e8
c00032b3:	2c 00 c0 
c00032b6:	c7 05 ec 91 00 c0 20 	movl   $0xc0002d20,0xc00091ec
c00032bd:	2d 00 c0 
c00032c0:	c7 05 f0 91 00 c0 48 	movl   $0xc0002d48,0xc00091f0
c00032c7:	2d 00 c0 
c00032ca:	c7 05 f4 91 00 c0 70 	movl   $0xc0002d70,0xc00091f4
c00032d1:	2d 00 c0 
c00032d4:	c7 05 f8 91 00 c0 98 	movl   $0xc0002d98,0xc00091f8
c00032db:	2d 00 c0 
c00032de:	c7 05 fc 91 00 c0 c0 	movl   $0xc0002dc0,0xc00091fc
c00032e5:	2d 00 c0 
c00032e8:	c7 05 00 92 00 c0 a0 	movl   $0xc00019a0,0xc0009200
c00032ef:	19 00 c0 
c00032f2:	c3                   	ret    
c00032f3:	66 90                	xchg   %ax,%ax
c00032f5:	66 90                	xchg   %ax,%ax
c00032f7:	66 90                	xchg   %ax,%ax
c00032f9:	66 90                	xchg   %ax,%ax
c00032fb:	66 90                	xchg   %ax,%ax
c00032fd:	66 90                	xchg   %ax,%ax
c00032ff:	90                   	nop

c0003300 <put_char>:
c0003300:	60                   	pusha  
c0003301:	66 ba d4 03          	mov    $0x3d4,%dx
c0003305:	b0 0e                	mov    $0xe,%al
c0003307:	ee                   	out    %al,(%dx)
c0003308:	66 ba d5 03          	mov    $0x3d5,%dx
c000330c:	ec                   	in     (%dx),%al
c000330d:	88 c7                	mov    %al,%bh
c000330f:	66 ba d4 03          	mov    $0x3d4,%dx
c0003313:	b0 0f                	mov    $0xf,%al
c0003315:	ee                   	out    %al,(%dx)
c0003316:	66 ba d5 03          	mov    $0x3d5,%dx
c000331a:	ec                   	in     (%dx),%al
c000331b:	88 c3                	mov    %al,%bl
c000331d:	89 e5                	mov    %esp,%ebp
c000331f:	b5 07                	mov    $0x7,%ch
c0003321:	8a 4d 24             	mov    0x24(%ebp),%cl
c0003324:	66 b8 18 00          	mov    $0x18,%ax
c0003328:	8e e8                	mov    %eax,%gs
c000332a:	66 81 fb d0 07       	cmp    $0x7d0,%bx
c000332f:	7d 73                	jge    c00033a4 <put_char.roll_screen>

c0003331 <put_char.current>:
c0003331:	80 f9 08             	cmp    $0x8,%cl
c0003334:	74 39                	je     c000336f <put_char.bs_p>
c0003336:	80 f9 0d             	cmp    $0xd,%cl
c0003339:	74 45                	je     c0003380 <put_char.lf_p>
c000333b:	80 f9 0a             	cmp    $0xa,%cl
c000333e:	74 50                	je     c0003390 <put_char.cr_p>
c0003340:	eb 00                	jmp    c0003342 <put_char.put_other>

c0003342 <put_char.put_other>:
c0003342:	66 d1 e3             	shl    %bx
c0003345:	65 66 67 89 0f       	mov    %cx,%gs:(%bx)
c000334a:	66 d1 eb             	shr    %bx
c000334d:	66 43                	inc    %bx
c000334f:	eb 00                	jmp    c0003351 <put_char.set_cursor>

c0003351 <put_char.set_cursor>:
c0003351:	66 ba d4 03          	mov    $0x3d4,%dx
c0003355:	b0 0e                	mov    $0xe,%al
c0003357:	ee                   	out    %al,(%dx)
c0003358:	66 ba d5 03          	mov    $0x3d5,%dx
c000335c:	88 f8                	mov    %bh,%al
c000335e:	ee                   	out    %al,(%dx)
c000335f:	66 ba d4 03          	mov    $0x3d4,%dx
c0003363:	b0 0f                	mov    $0xf,%al
c0003365:	ee                   	out    %al,(%dx)
c0003366:	66 ba d5 03          	mov    $0x3d5,%dx
c000336a:	88 d8                	mov    %bl,%al
c000336c:	ee                   	out    %al,(%dx)
c000336d:	61                   	popa   
c000336e:	c3                   	ret    

c000336f <put_char.bs_p>:
c000336f:	66 4b                	dec    %bx
c0003371:	66 d1 e3             	shl    %bx
c0003374:	65 66 67 c7 07 00 07 	movw   $0x700,%gs:(%bx)
c000337b:	66 d1 eb             	shr    %bx
c000337e:	eb d1                	jmp    c0003351 <put_char.set_cursor>

c0003380 <put_char.lf_p>:
c0003380:	66 89 d8             	mov    %bx,%ax
c0003383:	b2 50                	mov    $0x50,%dl
c0003385:	f6 f2                	div    %dl
c0003387:	66 c1 e8 08          	shr    $0x8,%ax
c000338b:	66 29 c3             	sub    %ax,%bx
c000338e:	eb c1                	jmp    c0003351 <put_char.set_cursor>

c0003390 <put_char.cr_p>:
c0003390:	66 89 d8             	mov    %bx,%ax
c0003393:	b2 50                	mov    $0x50,%dl
c0003395:	f6 f2                	div    %dl
c0003397:	66 c1 e8 08          	shr    $0x8,%ax
c000339b:	66 29 c3             	sub    %ax,%bx
c000339e:	66 83 c3 50          	add    $0x50,%bx
c00033a2:	eb ad                	jmp    c0003351 <put_char.set_cursor>

c00033a4 <put_char.roll_screen>:
c00033a4:	60                   	pusha  
c00033a5:	06                   	push   %es
c00033a6:	1e                   	push   %ds
c00033a7:	66 b8 18 00          	mov    $0x18,%ax
c00033ab:	8e d8                	mov    %eax,%ds
c00033ad:	8e c0                	mov    %eax,%es
c00033af:	fc                   	cld    
c00033b0:	be a0 00 00 00       	mov    $0xa0,%esi
c00033b5:	bf 00 00 00 00       	mov    $0x0,%edi
c00033ba:	b9 00 0f 00 00       	mov    $0xf00,%ecx
c00033bf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00033c1:	b9 50 00 00 00       	mov    $0x50,%ecx
c00033c6:	b8 00 0f 00 00       	mov    $0xf00,%eax

c00033cb <put_char.clear_last_row>:
c00033cb:	65 66 c7 00 00 07    	movw   $0x700,%gs:(%eax)
c00033d1:	66 83 c0 02          	add    $0x2,%ax
c00033d5:	e2 f4                	loop   c00033cb <put_char.clear_last_row>
c00033d7:	1f                   	pop    %ds
c00033d8:	07                   	pop    %es
c00033d9:	61                   	popa   
c00033da:	66 bb 80 07          	mov    $0x780,%bx
c00033de:	e9 4e ff ff ff       	jmp    c0003331 <put_char.current>

c00033e3 <put_int>:
c00033e3:	60                   	pusha  
c00033e4:	b0 30                	mov    $0x30,%al
c00033e6:	66 50                	push   %ax
c00033e8:	e8 13 ff ff ff       	call   c0003300 <put_char>
c00033ed:	83 c4 02             	add    $0x2,%esp
c00033f0:	b0 78                	mov    $0x78,%al
c00033f2:	66 50                	push   %ax
c00033f4:	e8 07 ff ff ff       	call   c0003300 <put_char>
c00033f9:	83 c4 02             	add    $0x2,%esp
c00033fc:	89 e5                	mov    %esp,%ebp
c00033fe:	8b 45 24             	mov    0x24(%ebp),%eax
c0003401:	b9 08 00 00 00       	mov    $0x8,%ecx
c0003406:	89 c3                	mov    %eax,%ebx
c0003408:	66 ba 00 00          	mov    $0x0,%dx

c000340c <put_int.print_int>:
c000340c:	81 e3 00 00 00 f0    	and    $0xf0000000,%ebx
c0003412:	66 83 fa 00          	cmp    $0x0,%dx
c0003416:	75 05                	jne    c000341d <put_int.not_0>
c0003418:	83 fb 00             	cmp    $0x0,%ebx
c000341b:	74 2b                	je     c0003448 <put_int.is_first_0>

c000341d <put_int.not_0>:
c000341d:	66 83 c2 01          	add    $0x1,%dx
c0003421:	c1 eb 04             	shr    $0x4,%ebx
c0003424:	81 fb 00 00 00 0a    	cmp    $0xa000000,%ebx
c000342a:	7d 08                	jge    c0003434 <put_int.handle_letter>
c000342c:	81 c3 00 00 00 30    	add    $0x30000000,%ebx
c0003432:	eb 08                	jmp    c000343c <put_int.call_print>

c0003434 <put_int.handle_letter>:
c0003434:	81 c3 00 00 00 57    	add    $0x57000000,%ebx
c000343a:	eb 00                	jmp    c000343c <put_int.call_print>

c000343c <put_int.call_print>:
c000343c:	c1 eb 18             	shr    $0x18,%ebx
c000343f:	53                   	push   %ebx
c0003440:	e8 bb fe ff ff       	call   c0003300 <put_char>
c0003445:	83 c4 04             	add    $0x4,%esp

c0003448 <put_int.is_first_0>:
c0003448:	c1 e0 04             	shl    $0x4,%eax
c000344b:	89 c3                	mov    %eax,%ebx
c000344d:	e2 bd                	loop   c000340c <put_int.print_int>
c000344f:	66 83 fa 00          	cmp    $0x0,%dx
c0003453:	75 0a                	jne    c000345f <put_int.end_print_int>
c0003455:	6a 30                	push   $0x30
c0003457:	e8 a4 fe ff ff       	call   c0003300 <put_char>
c000345c:	83 c4 04             	add    $0x4,%esp

c000345f <put_int.end_print_int>:
c000345f:	61                   	popa   
c0003460:	c3                   	ret    

c0003461 <set_cursor>:
c0003461:	60                   	pusha  
c0003462:	89 e5                	mov    %esp,%ebp
c0003464:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0003467:	66 ba d4 03          	mov    $0x3d4,%dx
c000346b:	b0 0e                	mov    $0xe,%al
c000346d:	ee                   	out    %al,(%dx)
c000346e:	66 ba d5 03          	mov    $0x3d5,%dx
c0003472:	88 f8                	mov    %bh,%al
c0003474:	ee                   	out    %al,(%dx)
c0003475:	66 ba d4 03          	mov    $0x3d4,%dx
c0003479:	b0 0f                	mov    $0xf,%al
c000347b:	ee                   	out    %al,(%dx)
c000347c:	66 ba d5 03          	mov    $0x3d5,%dx
c0003480:	88 d8                	mov    %bl,%al
c0003482:	ee                   	out    %al,(%dx)
c0003483:	61                   	popa   
c0003484:	c3                   	ret    

c0003485 <put_str>:
c0003485:	55                   	push   %ebp
c0003486:	89 e5                	mov    %esp,%ebp
c0003488:	83 ec 18             	sub    $0x18,%esp
c000348b:	eb 15                	jmp    c00034a2 <put_str+0x1d>
c000348d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003490:	0f b6 00             	movzbl (%eax),%eax
c0003493:	0f be c0             	movsbl %al,%eax
c0003496:	89 04 24             	mov    %eax,(%esp)
c0003499:	e8 62 fe ff ff       	call   c0003300 <put_char>
c000349e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c00034a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00034a5:	0f b6 00             	movzbl (%eax),%eax
c00034a8:	84 c0                	test   %al,%al
c00034aa:	75 e1                	jne    c000348d <put_str+0x8>
c00034ac:	c9                   	leave  
c00034ad:	c3                   	ret    

c00034ae <get_int_status>:
c00034ae:	55                   	push   %ebp
c00034af:	89 e5                	mov    %esp,%ebp
c00034b1:	83 ec 10             	sub    $0x10,%esp
c00034b4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00034bb:	9c                   	pushf  
c00034bc:	58                   	pop    %eax
c00034bd:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00034c0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00034c3:	25 00 02 00 00       	and    $0x200,%eax
c00034c8:	85 c0                	test   %eax,%eax
c00034ca:	0f 9f c0             	setg   %al
c00034cd:	0f b6 c0             	movzbl %al,%eax
c00034d0:	c9                   	leave  
c00034d1:	c3                   	ret    

c00034d2 <int_enable>:
c00034d2:	55                   	push   %ebp
c00034d3:	89 e5                	mov    %esp,%ebp
c00034d5:	83 ec 10             	sub    $0x10,%esp
c00034d8:	e8 d1 ff ff ff       	call   c00034ae <get_int_status>
c00034dd:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00034e0:	fb                   	sti    
c00034e1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00034e4:	c9                   	leave  
c00034e5:	c3                   	ret    

c00034e6 <int_disable>:
c00034e6:	55                   	push   %ebp
c00034e7:	89 e5                	mov    %esp,%ebp
c00034e9:	83 ec 10             	sub    $0x10,%esp
c00034ec:	e8 bd ff ff ff       	call   c00034ae <get_int_status>
c00034f1:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00034f4:	fa                   	cli    
c00034f5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00034f8:	c9                   	leave  
c00034f9:	c3                   	ret    

c00034fa <set_int_status>:
c00034fa:	55                   	push   %ebp
c00034fb:	89 e5                	mov    %esp,%ebp
c00034fd:	83 ec 10             	sub    $0x10,%esp
c0003500:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0003507:	9c                   	pushf  
c0003508:	58                   	pop    %eax
c0003509:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000350c:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003510:	75 07                	jne    c0003519 <set_int_status+0x1f>
c0003512:	e8 bb ff ff ff       	call   c00034d2 <int_enable>
c0003517:	eb 05                	jmp    c000351e <set_int_status+0x24>
c0003519:	e8 c8 ff ff ff       	call   c00034e6 <int_disable>
c000351e:	c9                   	leave  
c000351f:	c3                   	ret    

c0003520 <panic_spin>:
c0003520:	55                   	push   %ebp
c0003521:	89 e5                	mov    %esp,%ebp
c0003523:	83 ec 28             	sub    $0x28,%esp
c0003526:	e8 bb ff ff ff       	call   c00034e6 <int_disable>
c000352b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000352e:	c7 04 24 ab 61 00 c0 	movl   $0xc00061ab,(%esp)
c0003535:	e8 4b ff ff ff       	call   c0003485 <put_str>
c000353a:	c7 04 24 b7 61 00 c0 	movl   $0xc00061b7,(%esp)
c0003541:	e8 3f ff ff ff       	call   c0003485 <put_str>
c0003546:	c7 04 24 b9 61 00 c0 	movl   $0xc00061b9,(%esp)
c000354d:	e8 33 ff ff ff       	call   c0003485 <put_str>
c0003552:	8b 45 08             	mov    0x8(%ebp),%eax
c0003555:	89 04 24             	mov    %eax,(%esp)
c0003558:	e8 28 ff ff ff       	call   c0003485 <put_str>
c000355d:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0003564:	e8 97 fd ff ff       	call   c0003300 <put_char>
c0003569:	c7 04 24 c3 61 00 c0 	movl   $0xc00061c3,(%esp)
c0003570:	e8 10 ff ff ff       	call   c0003485 <put_str>
c0003575:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003578:	89 04 24             	mov    %eax,(%esp)
c000357b:	e8 63 fe ff ff       	call   c00033e3 <put_int>
c0003580:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0003587:	e8 74 fd ff ff       	call   c0003300 <put_char>
c000358c:	c7 04 24 c9 61 00 c0 	movl   $0xc00061c9,(%esp)
c0003593:	e8 ed fe ff ff       	call   c0003485 <put_str>
c0003598:	8b 45 10             	mov    0x10(%ebp),%eax
c000359b:	89 04 24             	mov    %eax,(%esp)
c000359e:	e8 e2 fe ff ff       	call   c0003485 <put_str>
c00035a3:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00035aa:	e8 51 fd ff ff       	call   c0003300 <put_char>
c00035af:	c7 04 24 d3 61 00 c0 	movl   $0xc00061d3,(%esp)
c00035b6:	e8 ca fe ff ff       	call   c0003485 <put_str>
c00035bb:	8b 45 14             	mov    0x14(%ebp),%eax
c00035be:	89 04 24             	mov    %eax,(%esp)
c00035c1:	e8 bf fe ff ff       	call   c0003485 <put_str>
c00035c6:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00035cd:	e8 2e fd ff ff       	call   c0003300 <put_char>
c00035d2:	eb fe                	jmp    c00035d2 <panic_spin+0xb2>

c00035d4 <debug_msg>:
c00035d4:	55                   	push   %ebp
c00035d5:	89 e5                	mov    %esp,%ebp
c00035d7:	83 ec 18             	sub    $0x18,%esp
c00035da:	c7 04 24 c9 61 00 c0 	movl   $0xc00061c9,(%esp)
c00035e1:	e8 9f fe ff ff       	call   c0003485 <put_str>
c00035e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00035e9:	89 04 24             	mov    %eax,(%esp)
c00035ec:	e8 94 fe ff ff       	call   c0003485 <put_str>
c00035f1:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00035f8:	e8 03 fd ff ff       	call   c0003300 <put_char>
c00035fd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003600:	89 04 24             	mov    %eax,(%esp)
c0003603:	e8 7d fe ff ff       	call   c0003485 <put_str>
c0003608:	8b 45 10             	mov    0x10(%ebp),%eax
c000360b:	89 04 24             	mov    %eax,(%esp)
c000360e:	e8 d0 fd ff ff       	call   c00033e3 <put_int>
c0003613:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c000361a:	e8 e1 fc ff ff       	call   c0003300 <put_char>
c000361f:	c9                   	leave  
c0003620:	c3                   	ret    

c0003621 <memset_8>:
c0003621:	55                   	push   %ebp
c0003622:	89 e5                	mov    %esp,%ebp
c0003624:	83 ec 38             	sub    $0x38,%esp
c0003627:	8b 45 10             	mov    0x10(%ebp),%eax
c000362a:	88 45 e4             	mov    %al,-0x1c(%ebp)
c000362d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0003631:	75 24                	jne    c0003657 <memset_8+0x36>
c0003633:	c7 44 24 0c e0 61 00 	movl   $0xc00061e0,0xc(%esp)
c000363a:	c0 
c000363b:	c7 44 24 08 31 62 00 	movl   $0xc0006231,0x8(%esp)
c0003642:	c0 
c0003643:	c7 44 24 04 06 00 00 	movl   $0x6,0x4(%esp)
c000364a:	00 
c000364b:	c7 04 24 f3 61 00 c0 	movl   $0xc00061f3,(%esp)
c0003652:	e8 c9 fe ff ff       	call   c0003520 <panic_spin>
c0003657:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c000365e:	8b 45 08             	mov    0x8(%ebp),%eax
c0003661:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003664:	eb 13                	jmp    c0003679 <memset_8+0x58>
c0003666:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003669:	8d 50 01             	lea    0x1(%eax),%edx
c000366c:	89 55 f0             	mov    %edx,-0x10(%ebp)
c000366f:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
c0003673:	88 10                	mov    %dl,(%eax)
c0003675:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003679:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000367c:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000367f:	72 e5                	jb     c0003666 <memset_8+0x45>
c0003681:	c9                   	leave  
c0003682:	c3                   	ret    

c0003683 <memset_32>:
c0003683:	55                   	push   %ebp
c0003684:	89 e5                	mov    %esp,%ebp
c0003686:	83 ec 28             	sub    $0x28,%esp
c0003689:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000368d:	75 24                	jne    c00036b3 <memset_32+0x30>
c000368f:	c7 44 24 0c e0 61 00 	movl   $0xc00061e0,0xc(%esp)
c0003696:	c0 
c0003697:	c7 44 24 08 3a 62 00 	movl   $0xc000623a,0x8(%esp)
c000369e:	c0 
c000369f:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c00036a6:	00 
c00036a7:	c7 04 24 f3 61 00 c0 	movl   $0xc00061f3,(%esp)
c00036ae:	e8 6d fe ff ff       	call   c0003520 <panic_spin>
c00036b3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00036ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00036bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00036c0:	eb 12                	jmp    c00036d4 <memset_32+0x51>
c00036c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00036c5:	8d 50 04             	lea    0x4(%eax),%edx
c00036c8:	89 55 f0             	mov    %edx,-0x10(%ebp)
c00036cb:	8b 55 10             	mov    0x10(%ebp),%edx
c00036ce:	89 10                	mov    %edx,(%eax)
c00036d0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00036d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00036d7:	3b 45 0c             	cmp    0xc(%ebp),%eax
c00036da:	72 e6                	jb     c00036c2 <memset_32+0x3f>
c00036dc:	c9                   	leave  
c00036dd:	c3                   	ret    

c00036de <memcopy>:
c00036de:	55                   	push   %ebp
c00036df:	89 e5                	mov    %esp,%ebp
c00036e1:	83 ec 28             	sub    $0x28,%esp
c00036e4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c00036e8:	74 2a                	je     c0003714 <memcopy+0x36>
c00036ea:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00036ee:	75 24                	jne    c0003714 <memcopy+0x36>
c00036f0:	c7 44 24 0c 10 62 00 	movl   $0xc0006210,0xc(%esp)
c00036f7:	c0 
c00036f8:	c7 44 24 08 44 62 00 	movl   $0xc0006244,0x8(%esp)
c00036ff:	c0 
c0003700:	c7 44 24 04 1a 00 00 	movl   $0x1a,0x4(%esp)
c0003707:	00 
c0003708:	c7 04 24 f3 61 00 c0 	movl   $0xc00061f3,(%esp)
c000370f:	e8 0c fe ff ff       	call   c0003520 <panic_spin>
c0003714:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c000371b:	8b 45 08             	mov    0x8(%ebp),%eax
c000371e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003721:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003724:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003727:	eb 1b                	jmp    c0003744 <memcopy+0x66>
c0003729:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000372c:	8d 50 01             	lea    0x1(%eax),%edx
c000372f:	89 55 f0             	mov    %edx,-0x10(%ebp)
c0003732:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003735:	8d 4a 01             	lea    0x1(%edx),%ecx
c0003738:	89 4d ec             	mov    %ecx,-0x14(%ebp)
c000373b:	0f b6 12             	movzbl (%edx),%edx
c000373e:	88 10                	mov    %dl,(%eax)
c0003740:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003744:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003747:	3b 45 10             	cmp    0x10(%ebp),%eax
c000374a:	72 dd                	jb     c0003729 <memcopy+0x4b>
c000374c:	c9                   	leave  
c000374d:	c3                   	ret    

c000374e <memcmp>:
c000374e:	55                   	push   %ebp
c000374f:	89 e5                	mov    %esp,%ebp
c0003751:	83 ec 10             	sub    $0x10,%esp
c0003754:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c000375b:	eb 32                	jmp    c000378f <memcmp+0x41>
c000375d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003760:	0f b6 10             	movzbl (%eax),%edx
c0003763:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003766:	0f b6 00             	movzbl (%eax),%eax
c0003769:	38 c2                	cmp    %al,%dl
c000376b:	73 07                	jae    c0003774 <memcmp+0x26>
c000376d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0003772:	eb 28                	jmp    c000379c <memcmp+0x4e>
c0003774:	8b 45 08             	mov    0x8(%ebp),%eax
c0003777:	0f b6 10             	movzbl (%eax),%edx
c000377a:	8b 45 0c             	mov    0xc(%ebp),%eax
c000377d:	0f b6 00             	movzbl (%eax),%eax
c0003780:	38 c2                	cmp    %al,%dl
c0003782:	76 07                	jbe    c000378b <memcmp+0x3d>
c0003784:	b8 01 00 00 00       	mov    $0x1,%eax
c0003789:	eb 11                	jmp    c000379c <memcmp+0x4e>
c000378b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c000378f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003792:	3b 45 10             	cmp    0x10(%ebp),%eax
c0003795:	72 c6                	jb     c000375d <memcmp+0xf>
c0003797:	b8 00 00 00 00       	mov    $0x0,%eax
c000379c:	c9                   	leave  
c000379d:	c3                   	ret    

c000379e <strlen>:
c000379e:	55                   	push   %ebp
c000379f:	89 e5                	mov    %esp,%ebp
c00037a1:	83 ec 10             	sub    $0x10,%esp
c00037a4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00037ab:	eb 04                	jmp    c00037b1 <strlen+0x13>
c00037ad:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c00037b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00037b4:	0f b6 00             	movzbl (%eax),%eax
c00037b7:	84 c0                	test   %al,%al
c00037b9:	75 f2                	jne    c00037ad <strlen+0xf>
c00037bb:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00037be:	c9                   	leave  
c00037bf:	c3                   	ret    

c00037c0 <init_bit_map>:
c00037c0:	55                   	push   %ebp
c00037c1:	89 e5                	mov    %esp,%ebp
c00037c3:	5d                   	pop    %ebp
c00037c4:	c3                   	ret    

c00037c5 <bit_test>:
c00037c5:	55                   	push   %ebp
c00037c6:	89 e5                	mov    %esp,%ebp
c00037c8:	53                   	push   %ebx
c00037c9:	83 ec 24             	sub    $0x24,%esp
c00037cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00037cf:	8b 00                	mov    (%eax),%eax
c00037d1:	3b 45 0c             	cmp    0xc(%ebp),%eax
c00037d4:	73 24                	jae    c00037fa <bit_test+0x35>
c00037d6:	c7 44 24 0c 4c 62 00 	movl   $0xc000624c,0xc(%esp)
c00037dd:	c0 
c00037de:	c7 44 24 08 99 62 00 	movl   $0xc0006299,0x8(%esp)
c00037e5:	c0 
c00037e6:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c00037ed:	00 
c00037ee:	c7 04 24 64 62 00 c0 	movl   $0xc0006264,(%esp)
c00037f5:	e8 26 fd ff ff       	call   c0003520 <panic_spin>
c00037fa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00037fd:	c1 e8 03             	shr    $0x3,%eax
c0003800:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003803:	8b 45 08             	mov    0x8(%ebp),%eax
c0003806:	8b 50 04             	mov    0x4(%eax),%edx
c0003809:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000380c:	01 d0                	add    %edx,%eax
c000380e:	0f b6 00             	movzbl (%eax),%eax
c0003811:	88 45 f3             	mov    %al,-0xd(%ebp)
c0003814:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003817:	83 e0 07             	and    $0x7,%eax
c000381a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000381d:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
c0003821:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003824:	bb 80 00 00 00       	mov    $0x80,%ebx
c0003829:	89 c1                	mov    %eax,%ecx
c000382b:	d3 fb                	sar    %cl,%ebx
c000382d:	89 d8                	mov    %ebx,%eax
c000382f:	21 d0                	and    %edx,%eax
c0003831:	85 c0                	test   %eax,%eax
c0003833:	0f 95 c0             	setne  %al
c0003836:	0f b6 c0             	movzbl %al,%eax
c0003839:	83 c4 24             	add    $0x24,%esp
c000383c:	5b                   	pop    %ebx
c000383d:	5d                   	pop    %ebp
c000383e:	c3                   	ret    

c000383f <bit_set>:
c000383f:	55                   	push   %ebp
c0003840:	89 e5                	mov    %esp,%ebp
c0003842:	56                   	push   %esi
c0003843:	53                   	push   %ebx
c0003844:	83 ec 20             	sub    $0x20,%esp
c0003847:	8b 45 08             	mov    0x8(%ebp),%eax
c000384a:	8b 00                	mov    (%eax),%eax
c000384c:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000384f:	73 24                	jae    c0003875 <bit_set+0x36>
c0003851:	c7 44 24 0c 87 62 00 	movl   $0xc0006287,0xc(%esp)
c0003858:	c0 
c0003859:	c7 44 24 08 a2 62 00 	movl   $0xc00062a2,0x8(%esp)
c0003860:	c0 
c0003861:	c7 44 24 04 19 00 00 	movl   $0x19,0x4(%esp)
c0003868:	00 
c0003869:	c7 04 24 64 62 00 c0 	movl   $0xc0006264,(%esp)
c0003870:	e8 ab fc ff ff       	call   c0003520 <panic_spin>
c0003875:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003878:	89 44 24 04          	mov    %eax,0x4(%esp)
c000387c:	8b 45 08             	mov    0x8(%ebp),%eax
c000387f:	89 04 24             	mov    %eax,(%esp)
c0003882:	e8 3e ff ff ff       	call   c00037c5 <bit_test>
c0003887:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000388a:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
c000388e:	75 07                	jne    c0003897 <bit_set+0x58>
c0003890:	b8 01 00 00 00       	mov    $0x1,%eax
c0003895:	eb 44                	jmp    c00038db <bit_set+0x9c>
c0003897:	8b 45 0c             	mov    0xc(%ebp),%eax
c000389a:	83 e0 07             	and    $0x7,%eax
c000389d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00038a0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00038a3:	c1 e8 03             	shr    $0x3,%eax
c00038a6:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00038a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00038ac:	8b 50 04             	mov    0x4(%eax),%edx
c00038af:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00038b2:	01 c2                	add    %eax,%edx
c00038b4:	8b 45 08             	mov    0x8(%ebp),%eax
c00038b7:	8b 48 04             	mov    0x4(%eax),%ecx
c00038ba:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00038bd:	01 c8                	add    %ecx,%eax
c00038bf:	0f b6 00             	movzbl (%eax),%eax
c00038c2:	89 c3                	mov    %eax,%ebx
c00038c4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00038c7:	be 80 00 00 00       	mov    $0x80,%esi
c00038cc:	89 c1                	mov    %eax,%ecx
c00038ce:	d3 fe                	sar    %cl,%esi
c00038d0:	89 f0                	mov    %esi,%eax
c00038d2:	31 d8                	xor    %ebx,%eax
c00038d4:	88 02                	mov    %al,(%edx)
c00038d6:	b8 00 00 00 00       	mov    $0x0,%eax
c00038db:	83 c4 20             	add    $0x20,%esp
c00038de:	5b                   	pop    %ebx
c00038df:	5e                   	pop    %esi
c00038e0:	5d                   	pop    %ebp
c00038e1:	c3                   	ret    

c00038e2 <bit_reset>:
c00038e2:	55                   	push   %ebp
c00038e3:	89 e5                	mov    %esp,%ebp
c00038e5:	56                   	push   %esi
c00038e6:	53                   	push   %ebx
c00038e7:	83 ec 20             	sub    $0x20,%esp
c00038ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00038ed:	8b 00                	mov    (%eax),%eax
c00038ef:	3b 45 0c             	cmp    0xc(%ebp),%eax
c00038f2:	73 24                	jae    c0003918 <bit_reset+0x36>
c00038f4:	c7 44 24 0c 87 62 00 	movl   $0xc0006287,0xc(%esp)
c00038fb:	c0 
c00038fc:	c7 44 24 08 aa 62 00 	movl   $0xc00062aa,0x8(%esp)
c0003903:	c0 
c0003904:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c000390b:	00 
c000390c:	c7 04 24 64 62 00 c0 	movl   $0xc0006264,(%esp)
c0003913:	e8 08 fc ff ff       	call   c0003520 <panic_spin>
c0003918:	8b 45 0c             	mov    0xc(%ebp),%eax
c000391b:	89 44 24 04          	mov    %eax,0x4(%esp)
c000391f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003922:	89 04 24             	mov    %eax,(%esp)
c0003925:	e8 9b fe ff ff       	call   c00037c5 <bit_test>
c000392a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000392d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0003931:	75 0a                	jne    c000393d <bit_reset+0x5b>
c0003933:	b8 00 00 00 00       	mov    $0x0,%eax
c0003938:	e9 91 00 00 00       	jmp    c00039ce <bit_reset+0xec>
c000393d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003940:	83 e0 07             	and    $0x7,%eax
c0003943:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003946:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003949:	c1 e8 03             	shr    $0x3,%eax
c000394c:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000394f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003953:	8b 45 08             	mov    0x8(%ebp),%eax
c0003956:	8b 50 04             	mov    0x4(%eax),%edx
c0003959:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000395c:	01 d0                	add    %edx,%eax
c000395e:	0f b6 00             	movzbl (%eax),%eax
c0003961:	0f b6 d0             	movzbl %al,%edx
c0003964:	b8 09 00 00 00       	mov    $0x9,%eax
c0003969:	2b 45 f0             	sub    -0x10(%ebp),%eax
c000396c:	bb ff 00 00 00       	mov    $0xff,%ebx
c0003971:	89 c1                	mov    %eax,%ecx
c0003973:	d3 e3                	shl    %cl,%ebx
c0003975:	89 d8                	mov    %ebx,%eax
c0003977:	21 d0                	and    %edx,%eax
c0003979:	89 45 e8             	mov    %eax,-0x18(%ebp)
c000397c:	8b 45 08             	mov    0x8(%ebp),%eax
c000397f:	8b 50 04             	mov    0x4(%eax),%edx
c0003982:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003985:	01 c2                	add    %eax,%edx
c0003987:	8b 45 08             	mov    0x8(%ebp),%eax
c000398a:	8b 48 04             	mov    0x4(%eax),%ecx
c000398d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003990:	01 c8                	add    %ecx,%eax
c0003992:	0f b6 00             	movzbl (%eax),%eax
c0003995:	89 c3                	mov    %eax,%ebx
c0003997:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000399a:	be ff 00 00 00       	mov    $0xff,%esi
c000399f:	89 c1                	mov    %eax,%ecx
c00039a1:	d3 fe                	sar    %cl,%esi
c00039a3:	89 f0                	mov    %esi,%eax
c00039a5:	21 d8                	and    %ebx,%eax
c00039a7:	88 02                	mov    %al,(%edx)
c00039a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00039ac:	8b 50 04             	mov    0x4(%eax),%edx
c00039af:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00039b2:	01 c2                	add    %eax,%edx
c00039b4:	8b 45 08             	mov    0x8(%ebp),%eax
c00039b7:	8b 48 04             	mov    0x4(%eax),%ecx
c00039ba:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00039bd:	01 c8                	add    %ecx,%eax
c00039bf:	0f b6 08             	movzbl (%eax),%ecx
c00039c2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00039c5:	31 c8                	xor    %ecx,%eax
c00039c7:	88 02                	mov    %al,(%edx)
c00039c9:	b8 01 00 00 00       	mov    $0x1,%eax
c00039ce:	83 c4 20             	add    $0x20,%esp
c00039d1:	5b                   	pop    %ebx
c00039d2:	5e                   	pop    %esi
c00039d3:	5d                   	pop    %ebp
c00039d4:	c3                   	ret    

c00039d5 <bit_alloc>:
c00039d5:	55                   	push   %ebp
c00039d6:	89 e5                	mov    %esp,%ebp
c00039d8:	83 ec 28             	sub    $0x28,%esp
c00039db:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00039e2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00039e9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00039ec:	89 44 24 04          	mov    %eax,0x4(%esp)
c00039f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00039f3:	89 04 24             	mov    %eax,(%esp)
c00039f6:	e8 ca fd ff ff       	call   c00037c5 <bit_test>
c00039fb:	85 c0                	test   %eax,%eax
c00039fd:	75 0a                	jne    c0003a09 <bit_alloc+0x34>
c00039ff:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003a03:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003a07:	eb 0b                	jmp    c0003a14 <bit_alloc+0x3f>
c0003a09:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003a10:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003a14:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003a17:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003a1a:	73 0e                	jae    c0003a2a <bit_alloc+0x55>
c0003a1c:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003a1f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a22:	8b 00                	mov    (%eax),%eax
c0003a24:	39 c2                	cmp    %eax,%edx
c0003a26:	73 02                	jae    c0003a2a <bit_alloc+0x55>
c0003a28:	eb bf                	jmp    c00039e9 <bit_alloc+0x14>
c0003a2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003a2d:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003a30:	72 3b                	jb     c0003a6d <bit_alloc+0x98>
c0003a32:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0003a39:	eb 1e                	jmp    c0003a59 <bit_alloc+0x84>
c0003a3b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003a3e:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003a41:	01 d0                	add    %edx,%eax
c0003a43:	2b 45 f4             	sub    -0xc(%ebp),%eax
c0003a46:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003a4a:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a4d:	89 04 24             	mov    %eax,(%esp)
c0003a50:	e8 ea fd ff ff       	call   c000383f <bit_set>
c0003a55:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
c0003a59:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003a5c:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003a5f:	72 da                	jb     c0003a3b <bit_alloc+0x66>
c0003a61:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003a64:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003a67:	29 c2                	sub    %eax,%edx
c0003a69:	89 d0                	mov    %edx,%eax
c0003a6b:	eb 05                	jmp    c0003a72 <bit_alloc+0x9d>
c0003a6d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0003a72:	c9                   	leave  
c0003a73:	c3                   	ret    

c0003a74 <alloc_vaddr>:
c0003a74:	55                   	push   %ebp
c0003a75:	89 e5                	mov    %esp,%ebp
c0003a77:	83 ec 28             	sub    $0x28,%esp
c0003a7a:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003a7e:	75 09                	jne    c0003a89 <alloc_vaddr+0x15>
c0003a80:	c7 45 f4 20 96 00 c0 	movl   $0xc0009620,-0xc(%ebp)
c0003a87:	eb 11                	jmp    c0003a9a <alloc_vaddr+0x26>
c0003a89:	e8 a3 09 00 00       	call   c0004431 <get_running>
c0003a8e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003a91:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003a94:	83 c0 04             	add    $0x4,%eax
c0003a97:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003a9a:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003a9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003aa0:	8b 00                	mov    (%eax),%eax
c0003aa2:	39 c2                	cmp    %eax,%edx
c0003aa4:	76 24                	jbe    c0003aca <alloc_vaddr+0x56>
c0003aa6:	c7 44 24 0c b4 62 00 	movl   $0xc00062b4,0xc(%esp)
c0003aad:	c0 
c0003aae:	c7 44 24 08 3c 63 00 	movl   $0xc000633c,0x8(%esp)
c0003ab5:	c0 
c0003ab6:	c7 44 24 04 17 00 00 	movl   $0x17,0x4(%esp)
c0003abd:	00 
c0003abe:	c7 04 24 d3 62 00 c0 	movl   $0xc00062d3,(%esp)
c0003ac5:	e8 56 fa ff ff       	call   c0003520 <panic_spin>
c0003aca:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003acd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003ad0:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003ad4:	89 04 24             	mov    %eax,(%esp)
c0003ad7:	e8 f9 fe ff ff       	call   c00039d5 <bit_alloc>
c0003adc:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003adf:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
c0003ae3:	74 10                	je     c0003af5 <alloc_vaddr+0x81>
c0003ae5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003ae8:	8b 50 08             	mov    0x8(%eax),%edx
c0003aeb:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003aee:	c1 e0 0c             	shl    $0xc,%eax
c0003af1:	01 d0                	add    %edx,%eax
c0003af3:	eb 05                	jmp    c0003afa <alloc_vaddr+0x86>
c0003af5:	b8 00 00 00 00       	mov    $0x0,%eax
c0003afa:	c9                   	leave  
c0003afb:	c3                   	ret    

c0003afc <alloc_mem>:
c0003afc:	55                   	push   %ebp
c0003afd:	89 e5                	mov    %esp,%ebp
c0003aff:	83 ec 28             	sub    $0x28,%esp
c0003b02:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003b06:	75 09                	jne    c0003b11 <alloc_mem+0x15>
c0003b08:	c7 45 f4 34 96 00 c0 	movl   $0xc0009634,-0xc(%ebp)
c0003b0f:	eb 07                	jmp    c0003b18 <alloc_mem+0x1c>
c0003b11:	c7 45 f4 10 96 00 c0 	movl   $0xc0009610,-0xc(%ebp)
c0003b18:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b1b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0003b22:	00 
c0003b23:	89 04 24             	mov    %eax,(%esp)
c0003b26:	e8 aa fe ff ff       	call   c00039d5 <bit_alloc>
c0003b2b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003b2e:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
c0003b32:	74 10                	je     c0003b44 <alloc_mem+0x48>
c0003b34:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b37:	8b 50 08             	mov    0x8(%eax),%edx
c0003b3a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003b3d:	c1 e0 0c             	shl    $0xc,%eax
c0003b40:	01 d0                	add    %edx,%eax
c0003b42:	eb 05                	jmp    c0003b49 <alloc_mem+0x4d>
c0003b44:	b8 00 00 00 00       	mov    $0x0,%eax
c0003b49:	c9                   	leave  
c0003b4a:	c3                   	ret    

c0003b4b <malloc_page>:
c0003b4b:	55                   	push   %ebp
c0003b4c:	89 e5                	mov    %esp,%ebp
c0003b4e:	83 ec 28             	sub    $0x28,%esp
c0003b51:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0003b58:	e8 7e 11 00 00       	call   c0004cdb <lock>
c0003b5d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003b60:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003b64:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b67:	89 04 24             	mov    %eax,(%esp)
c0003b6a:	e8 05 ff ff ff       	call   c0003a74 <alloc_vaddr>
c0003b6f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003b72:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0003b76:	75 0a                	jne    c0003b82 <malloc_page+0x37>
c0003b78:	b8 00 00 00 00       	mov    $0x0,%eax
c0003b7d:	e9 c4 00 00 00       	jmp    c0003c46 <malloc_page+0xfb>
c0003b82:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003b89:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0003b90:	e9 96 00 00 00       	jmp    c0003c2b <malloc_page+0xe0>
c0003b95:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003b99:	75 32                	jne    c0003bcd <malloc_page+0x82>
c0003b9b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0003ba2:	e8 55 ff ff ff       	call   c0003afc <alloc_mem>
c0003ba7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003baa:	89 d1                	mov    %edx,%ecx
c0003bac:	c1 e1 0c             	shl    $0xc,%ecx
c0003baf:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003bb2:	01 ca                	add    %ecx,%edx
c0003bb4:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003bbb:	00 
c0003bbc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003bc0:	89 14 24             	mov    %edx,(%esp)
c0003bc3:	e8 02 07 00 00       	call   c00042ca <add_pte>
c0003bc8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003bcb:	eb 30                	jmp    c0003bfd <malloc_page+0xb2>
c0003bcd:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0003bd4:	e8 23 ff ff ff       	call   c0003afc <alloc_mem>
c0003bd9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003bdc:	89 d1                	mov    %edx,%ecx
c0003bde:	c1 e1 0c             	shl    $0xc,%ecx
c0003be1:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003be4:	01 ca                	add    %ecx,%edx
c0003be6:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003bed:	00 
c0003bee:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003bf2:	89 14 24             	mov    %edx,(%esp)
c0003bf5:	e8 d0 06 00 00       	call   c00042ca <add_pte>
c0003bfa:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003bfd:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0003c01:	75 24                	jne    c0003c27 <malloc_page+0xdc>
c0003c03:	c7 44 24 0c ee 62 00 	movl   $0xc00062ee,0xc(%esp)
c0003c0a:	c0 
c0003c0b:	c7 44 24 08 48 63 00 	movl   $0xc0006348,0x8(%esp)
c0003c12:	c0 
c0003c13:	c7 44 24 04 38 00 00 	movl   $0x38,0x4(%esp)
c0003c1a:	00 
c0003c1b:	c7 04 24 d3 62 00 c0 	movl   $0xc00062d3,(%esp)
c0003c22:	e8 f9 f8 ff ff       	call   c0003520 <panic_spin>
c0003c27:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003c2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c2e:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003c31:	0f 82 5e ff ff ff    	jb     c0003b95 <malloc_page+0x4a>
c0003c37:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0003c3e:	e8 ab 10 00 00       	call   c0004cee <unlock>
c0003c43:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003c46:	c9                   	leave  
c0003c47:	c3                   	ret    

c0003c48 <create_vaddr>:
c0003c48:	55                   	push   %ebp
c0003c49:	89 e5                	mov    %esp,%ebp
c0003c4b:	83 ec 28             	sub    $0x28,%esp
c0003c4e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003c52:	75 17                	jne    c0003c6b <create_vaddr+0x23>
c0003c54:	c7 45 f4 20 96 00 c0 	movl   $0xc0009620,-0xc(%ebp)
c0003c5b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003c5e:	05 00 f0 df 3f       	add    $0x3fdff000,%eax
c0003c63:	c1 e8 0c             	shr    $0xc,%eax
c0003c66:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003c69:	eb 1a                	jmp    c0003c85 <create_vaddr+0x3d>
c0003c6b:	e8 c1 07 00 00       	call   c0004431 <get_running>
c0003c70:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003c73:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003c76:	83 c0 04             	add    $0x4,%eax
c0003c79:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003c7c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003c7f:	c1 e8 0c             	shr    $0xc,%eax
c0003c82:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003c85:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c88:	8b 40 0c             	mov    0xc(%eax),%eax
c0003c8b:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003c8e:	77 24                	ja     c0003cb4 <create_vaddr+0x6c>
c0003c90:	c7 44 24 0c 00 63 00 	movl   $0xc0006300,0xc(%esp)
c0003c97:	c0 
c0003c98:	c7 44 24 08 54 63 00 	movl   $0xc0006354,0x8(%esp)
c0003c9f:	c0 
c0003ca0:	c7 44 24 04 4e 00 00 	movl   $0x4e,0x4(%esp)
c0003ca7:	00 
c0003ca8:	c7 04 24 d3 62 00 c0 	movl   $0xc00062d3,(%esp)
c0003caf:	e8 6c f8 ff ff       	call   c0003520 <panic_spin>
c0003cb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003cb7:	8b 00                	mov    (%eax),%eax
c0003cb9:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0003cbc:	77 24                	ja     c0003ce2 <create_vaddr+0x9a>
c0003cbe:	c7 44 24 0c 13 63 00 	movl   $0xc0006313,0xc(%esp)
c0003cc5:	c0 
c0003cc6:	c7 44 24 08 54 63 00 	movl   $0xc0006354,0x8(%esp)
c0003ccd:	c0 
c0003cce:	c7 44 24 04 4f 00 00 	movl   $0x4f,0x4(%esp)
c0003cd5:	00 
c0003cd6:	c7 04 24 d3 62 00 c0 	movl   $0xc00062d3,(%esp)
c0003cdd:	e8 3e f8 ff ff       	call   c0003520 <panic_spin>
c0003ce2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003ce5:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003ce8:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003cec:	89 04 24             	mov    %eax,(%esp)
c0003cef:	e8 d1 fa ff ff       	call   c00037c5 <bit_test>
c0003cf4:	85 c0                	test   %eax,%eax
c0003cf6:	74 07                	je     c0003cff <create_vaddr+0xb7>
c0003cf8:	b8 00 00 00 00       	mov    $0x0,%eax
c0003cfd:	eb 17                	jmp    c0003d16 <create_vaddr+0xce>
c0003cff:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003d02:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003d05:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003d09:	89 04 24             	mov    %eax,(%esp)
c0003d0c:	e8 2e fb ff ff       	call   c000383f <bit_set>
c0003d11:	b8 01 00 00 00       	mov    $0x1,%eax
c0003d16:	c9                   	leave  
c0003d17:	c3                   	ret    

c0003d18 <create_page>:
c0003d18:	55                   	push   %ebp
c0003d19:	89 e5                	mov    %esp,%ebp
c0003d1b:	83 ec 28             	sub    $0x28,%esp
c0003d1e:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0003d25:	e8 b1 0f 00 00       	call   c0004cdb <lock>
c0003d2a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003d2d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0003d32:	89 45 0c             	mov    %eax,0xc(%ebp)
c0003d35:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003d38:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003d3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0003d3f:	89 04 24             	mov    %eax,(%esp)
c0003d42:	e8 01 ff ff ff       	call   c0003c48 <create_vaddr>
c0003d47:	85 c0                	test   %eax,%eax
c0003d49:	75 16                	jne    c0003d61 <create_page+0x49>
c0003d4b:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0003d52:	e8 97 0f 00 00       	call   c0004cee <unlock>
c0003d57:	b8 00 00 00 00       	mov    $0x0,%eax
c0003d5c:	e9 9a 00 00 00       	jmp    c0003dfb <create_page+0xe3>
c0003d61:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003d68:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003d6c:	75 2a                	jne    c0003d98 <create_page+0x80>
c0003d6e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0003d75:	e8 82 fd ff ff       	call   c0003afc <alloc_mem>
c0003d7a:	89 c2                	mov    %eax,%edx
c0003d7c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003d7f:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003d86:	00 
c0003d87:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003d8b:	89 04 24             	mov    %eax,(%esp)
c0003d8e:	e8 37 05 00 00       	call   c00042ca <add_pte>
c0003d93:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003d96:	eb 28                	jmp    c0003dc0 <create_page+0xa8>
c0003d98:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0003d9f:	e8 58 fd ff ff       	call   c0003afc <alloc_mem>
c0003da4:	89 c2                	mov    %eax,%edx
c0003da6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003da9:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003db0:	00 
c0003db1:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003db5:	89 04 24             	mov    %eax,(%esp)
c0003db8:	e8 0d 05 00 00       	call   c00042ca <add_pte>
c0003dbd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003dc0:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0003dc4:	75 24                	jne    c0003dea <create_page+0xd2>
c0003dc6:	c7 44 24 0c ee 62 00 	movl   $0xc00062ee,0xc(%esp)
c0003dcd:	c0 
c0003dce:	c7 44 24 08 61 63 00 	movl   $0xc0006361,0x8(%esp)
c0003dd5:	c0 
c0003dd6:	c7 44 24 04 66 00 00 	movl   $0x66,0x4(%esp)
c0003ddd:	00 
c0003dde:	c7 04 24 d3 62 00 c0 	movl   $0xc00062d3,(%esp)
c0003de5:	e8 36 f7 ff ff       	call   c0003520 <panic_spin>
c0003dea:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0003df1:	e8 f8 0e 00 00       	call   c0004cee <unlock>
c0003df6:	b8 01 00 00 00       	mov    $0x1,%eax
c0003dfb:	c9                   	leave  
c0003dfc:	c3                   	ret    

c0003dfd <free_pool>:
c0003dfd:	55                   	push   %ebp
c0003dfe:	89 e5                	mov    %esp,%ebp
c0003e00:	83 ec 28             	sub    $0x28,%esp
c0003e03:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003e0a:	eb 29                	jmp    c0003e35 <free_pool+0x38>
c0003e0c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003e0f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e12:	01 c2                	add    %eax,%edx
c0003e14:	8b 45 08             	mov    0x8(%ebp),%eax
c0003e17:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003e1b:	89 04 24             	mov    %eax,(%esp)
c0003e1e:	e8 bf fa ff ff       	call   c00038e2 <bit_reset>
c0003e23:	85 c0                	test   %eax,%eax
c0003e25:	75 0a                	jne    c0003e31 <free_pool+0x34>
c0003e27:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003e2a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e2d:	01 d0                	add    %edx,%eax
c0003e2f:	eb 11                	jmp    c0003e42 <free_pool+0x45>
c0003e31:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003e35:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003e38:	3b 45 10             	cmp    0x10(%ebp),%eax
c0003e3b:	72 cf                	jb     c0003e0c <free_pool+0xf>
c0003e3d:	b8 00 00 00 00       	mov    $0x0,%eax
c0003e42:	c9                   	leave  
c0003e43:	c3                   	ret    

c0003e44 <free_page>:
c0003e44:	55                   	push   %ebp
c0003e45:	89 e5                	mov    %esp,%ebp
c0003e47:	83 ec 38             	sub    $0x38,%esp
c0003e4a:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0003e51:	e8 85 0e 00 00       	call   c0004cdb <lock>
c0003e56:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0003e5a:	75 24                	jne    c0003e80 <free_page+0x3c>
c0003e5c:	c7 44 24 0c 2e 63 00 	movl   $0xc000632e,0xc(%esp)
c0003e63:	c0 
c0003e64:	c7 44 24 08 6d 63 00 	movl   $0xc000636d,0x8(%esp)
c0003e6b:	c0 
c0003e6c:	c7 44 24 04 7a 00 00 	movl   $0x7a,0x4(%esp)
c0003e73:	00 
c0003e74:	c7 04 24 d3 62 00 c0 	movl   $0xc00062d3,(%esp)
c0003e7b:	e8 a0 f6 ff ff       	call   c0003520 <panic_spin>
c0003e80:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
c0003e87:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e8a:	05 00 f0 df 3f       	add    $0x3fdff000,%eax
c0003e8f:	c1 e8 0c             	shr    $0xc,%eax
c0003e92:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003e95:	8b 45 10             	mov    0x10(%ebp),%eax
c0003e98:	89 44 24 08          	mov    %eax,0x8(%esp)
c0003e9c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003e9f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003ea3:	c7 04 24 20 96 00 c0 	movl   $0xc0009620,(%esp)
c0003eaa:	e8 4e ff ff ff       	call   c0003dfd <free_pool>
c0003eaf:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0003eb2:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c0003eb6:	74 05                	je     c0003ebd <free_page+0x79>
c0003eb8:	e9 a1 00 00 00       	jmp    c0003f5e <free_page+0x11a>
c0003ebd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003ec4:	eb 79                	jmp    c0003f3f <free_page+0xfb>
c0003ec6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003ec9:	c1 e0 0c             	shl    $0xc,%eax
c0003ecc:	89 c2                	mov    %eax,%edx
c0003ece:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003ed1:	01 d0                	add    %edx,%eax
c0003ed3:	89 04 24             	mov    %eax,(%esp)
c0003ed6:	e8 c3 04 00 00       	call   c000439e <get_paddr>
c0003edb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0003ede:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0003ee1:	2d 00 10 20 00       	sub    $0x201000,%eax
c0003ee6:	c1 e8 0c             	shr    $0xc,%eax
c0003ee9:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0003eec:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0003ef3:	00 
c0003ef4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0003ef7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003efb:	c7 04 24 34 96 00 c0 	movl   $0xc0009634,(%esp)
c0003f02:	e8 f6 fe ff ff       	call   c0003dfd <free_pool>
c0003f07:	85 c0                	test   %eax,%eax
c0003f09:	75 19                	jne    c0003f24 <free_page+0xe0>
c0003f0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003f0e:	c1 e0 0c             	shl    $0xc,%eax
c0003f11:	89 c2                	mov    %eax,%edx
c0003f13:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003f16:	01 d0                	add    %edx,%eax
c0003f18:	89 04 24             	mov    %eax,(%esp)
c0003f1b:	e8 9e 04 00 00       	call   c00043be <reset_pte>
c0003f20:	85 c0                	test   %eax,%eax
c0003f22:	75 07                	jne    c0003f2b <free_page+0xe7>
c0003f24:	b8 01 00 00 00       	mov    $0x1,%eax
c0003f29:	eb 05                	jmp    c0003f30 <free_page+0xec>
c0003f2b:	b8 00 00 00 00       	mov    $0x0,%eax
c0003f30:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0003f33:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
c0003f37:	74 02                	je     c0003f3b <free_page+0xf7>
c0003f39:	eb 23                	jmp    c0003f5e <free_page+0x11a>
c0003f3b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003f3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003f42:	3b 45 10             	cmp    0x10(%ebp),%eax
c0003f45:	0f 82 7b ff ff ff    	jb     c0003ec6 <free_page+0x82>
c0003f4b:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0003f52:	e8 97 0d 00 00       	call   c0004cee <unlock>
c0003f57:	b8 01 00 00 00       	mov    $0x1,%eax
c0003f5c:	eb 11                	jmp    c0003f6f <free_page+0x12b>
c0003f5e:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0003f65:	e8 84 0d 00 00       	call   c0004cee <unlock>
c0003f6a:	b8 00 00 00 00       	mov    $0x0,%eax
c0003f6f:	c9                   	leave  
c0003f70:	c3                   	ret    

c0003f71 <mem_decs_init>:
c0003f71:	55                   	push   %ebp
c0003f72:	89 e5                	mov    %esp,%ebp
c0003f74:	83 ec 28             	sub    $0x28,%esp
c0003f77:	c7 45 f4 00 04 00 00 	movl   $0x400,-0xc(%ebp)
c0003f7e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0003f85:	eb 4a                	jmp    c0003fd1 <mem_decs_init+0x60>
c0003f87:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003f8a:	c1 e0 04             	shl    $0x4,%eax
c0003f8d:	89 c2                	mov    %eax,%edx
c0003f8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003f92:	01 c2                	add    %eax,%edx
c0003f94:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003f97:	89 02                	mov    %eax,(%edx)
c0003f99:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003f9c:	c1 e0 04             	shl    $0x4,%eax
c0003f9f:	89 c2                	mov    %eax,%edx
c0003fa1:	8b 45 08             	mov    0x8(%ebp),%eax
c0003fa4:	01 d0                	add    %edx,%eax
c0003fa6:	c7 40 04 f0 0f 00 00 	movl   $0xff0,0x4(%eax)
c0003fad:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003fb0:	c1 e0 04             	shl    $0x4,%eax
c0003fb3:	89 c2                	mov    %eax,%edx
c0003fb5:	8b 45 08             	mov    0x8(%ebp),%eax
c0003fb8:	01 d0                	add    %edx,%eax
c0003fba:	83 c0 08             	add    $0x8,%eax
c0003fbd:	89 04 24             	mov    %eax,(%esp)
c0003fc0:	e8 be 08 00 00       	call   c0004883 <init_list>
c0003fc5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003fc8:	d1 e8                	shr    %eax
c0003fca:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003fcd:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003fd1:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
c0003fd5:	76 b0                	jbe    c0003f87 <mem_decs_init+0x16>
c0003fd7:	c9                   	leave  
c0003fd8:	c3                   	ret    

c0003fd9 <sys_malloc>:
c0003fd9:	55                   	push   %ebp
c0003fda:	89 e5                	mov    %esp,%ebp
c0003fdc:	83 ec 38             	sub    $0x38,%esp
c0003fdf:	e8 4d 04 00 00       	call   c0004431 <get_running>
c0003fe4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0003fe7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0003fea:	8b 40 48             	mov    0x48(%eax),%eax
c0003fed:	3d 00 00 10 00       	cmp    $0x100000,%eax
c0003ff2:	75 10                	jne    c0004004 <sys_malloc+0x2b>
c0003ff4:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
c0003ffb:	c7 45 f4 34 96 00 c0 	movl   $0xc0009634,-0xc(%ebp)
c0004002:	eb 0e                	jmp    c0004012 <sys_malloc+0x39>
c0004004:	c7 45 f0 02 00 00 00 	movl   $0x2,-0x10(%ebp)
c000400b:	c7 45 f4 10 96 00 c0 	movl   $0xc0009610,-0xc(%ebp)
c0004012:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004015:	8b 40 0c             	mov    0xc(%eax),%eax
c0004018:	3b 45 08             	cmp    0x8(%ebp),%eax
c000401b:	73 0a                	jae    c0004027 <sys_malloc+0x4e>
c000401d:	b8 00 00 00 00       	mov    $0x0,%eax
c0004022:	e9 55 01 00 00       	jmp    c000417c <sys_malloc+0x1a3>
c0004027:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c000402e:	e8 a8 0c 00 00       	call   c0004cdb <lock>
c0004033:	81 7d 08 00 04 00 00 	cmpl   $0x400,0x8(%ebp)
c000403a:	76 5a                	jbe    c0004096 <sys_malloc+0xbd>
c000403c:	8b 45 08             	mov    0x8(%ebp),%eax
c000403f:	83 e8 01             	sub    $0x1,%eax
c0004042:	c1 e8 0a             	shr    $0xa,%eax
c0004045:	83 c0 01             	add    $0x1,%eax
c0004048:	89 44 24 04          	mov    %eax,0x4(%esp)
c000404c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000404f:	89 04 24             	mov    %eax,(%esp)
c0004052:	e8 f4 fa ff ff       	call   c0003b4b <malloc_page>
c0004057:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000405a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000405d:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
c0004064:	8b 45 08             	mov    0x8(%ebp),%eax
c0004067:	83 e8 01             	sub    $0x1,%eax
c000406a:	c1 e8 0a             	shr    $0xa,%eax
c000406d:	8d 50 01             	lea    0x1(%eax),%edx
c0004070:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004073:	89 50 04             	mov    %edx,0x4(%eax)
c0004076:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004079:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c000407f:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c0004086:	e8 63 0c 00 00       	call   c0004cee <unlock>
c000408b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000408e:	83 c0 0c             	add    $0xc,%eax
c0004091:	e9 e6 00 00 00       	jmp    c000417c <sys_malloc+0x1a3>
c0004096:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c000409d:	eb 18                	jmp    c00040b7 <sys_malloc+0xde>
c000409f:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00040a2:	c1 e0 04             	shl    $0x4,%eax
c00040a5:	05 a0 95 00 c0       	add    $0xc00095a0,%eax
c00040aa:	8b 00                	mov    (%eax),%eax
c00040ac:	3b 45 08             	cmp    0x8(%ebp),%eax
c00040af:	76 02                	jbe    c00040b3 <sys_malloc+0xda>
c00040b1:	eb 0a                	jmp    c00040bd <sys_malloc+0xe4>
c00040b3:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
c00040b7:	83 7d e8 06          	cmpl   $0x6,-0x18(%ebp)
c00040bb:	7e e2                	jle    c000409f <sys_malloc+0xc6>
c00040bd:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00040c0:	c1 e0 04             	shl    $0x4,%eax
c00040c3:	05 a0 95 00 c0       	add    $0xc00095a0,%eax
c00040c8:	83 c0 08             	add    $0x8,%eax
c00040cb:	89 04 24             	mov    %eax,(%esp)
c00040ce:	e8 9e 0b 00 00       	call   c0004c71 <lst_empty>
c00040d3:	85 c0                	test   %eax,%eax
c00040d5:	74 6e                	je     c0004145 <sys_malloc+0x16c>
c00040d7:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00040de:	00 
c00040df:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00040e2:	89 04 24             	mov    %eax,(%esp)
c00040e5:	e8 61 fa ff ff       	call   c0003b4b <malloc_page>
c00040ea:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00040ed:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00040f0:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c00040f7:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00040fa:	c1 e0 04             	shl    $0x4,%eax
c00040fd:	05 a0 95 00 c0       	add    $0xc00095a0,%eax
c0004102:	8b 08                	mov    (%eax),%ecx
c0004104:	b8 f4 0f 00 00       	mov    $0xff4,%eax
c0004109:	ba 00 00 00 00       	mov    $0x0,%edx
c000410e:	f7 f1                	div    %ecx
c0004110:	89 c2                	mov    %eax,%edx
c0004112:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004115:	89 50 04             	mov    %edx,0x4(%eax)
c0004118:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000411b:	c1 e0 04             	shl    $0x4,%eax
c000411e:	8d 90 a0 95 00 c0    	lea    -0x3fff6a60(%eax),%edx
c0004124:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004127:	89 10                	mov    %edx,(%eax)
c0004129:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000412c:	c1 e0 04             	shl    $0x4,%eax
c000412f:	05 a0 95 00 c0       	add    $0xc00095a0,%eax
c0004134:	8b 00                	mov    (%eax),%eax
c0004136:	89 44 24 04          	mov    %eax,0x4(%esp)
c000413a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000413d:	89 04 24             	mov    %eax,(%esp)
c0004140:	e8 39 00 00 00       	call   c000417e <mblock_cut>
c0004145:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c000414c:	e8 9d 0b 00 00       	call   c0004cee <unlock>
c0004151:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004154:	c1 e0 04             	shl    $0x4,%eax
c0004157:	05 a0 95 00 c0       	add    $0xc00095a0,%eax
c000415c:	83 c0 08             	add    $0x8,%eax
c000415f:	89 04 24             	mov    %eax,(%esp)
c0004162:	e8 4d 08 00 00       	call   c00049b4 <lst_pop>
c0004167:	89 45 e0             	mov    %eax,-0x20(%ebp)
c000416a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000416d:	8b 40 04             	mov    0x4(%eax),%eax
c0004170:	8d 50 ff             	lea    -0x1(%eax),%edx
c0004173:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004176:	89 50 04             	mov    %edx,0x4(%eax)
c0004179:	8b 45 e0             	mov    -0x20(%ebp),%eax
c000417c:	c9                   	leave  
c000417d:	c3                   	ret    

c000417e <mblock_cut>:
c000417e:	55                   	push   %ebp
c000417f:	89 e5                	mov    %esp,%ebp
c0004181:	83 ec 28             	sub    $0x28,%esp
c0004184:	8b 45 08             	mov    0x8(%ebp),%eax
c0004187:	83 c0 0c             	add    $0xc,%eax
c000418a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000418d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0004194:	eb 2b                	jmp    c00041c1 <mblock_cut+0x43>
c0004196:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004199:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000419c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000419f:	8b 55 08             	mov    0x8(%ebp),%edx
c00041a2:	8b 12                	mov    (%edx),%edx
c00041a4:	83 c2 08             	add    $0x8,%edx
c00041a7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00041ab:	89 14 24             	mov    %edx,(%esp)
c00041ae:	e8 e8 06 00 00       	call   c000489b <lst_push>
c00041b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00041b6:	8b 00                	mov    (%eax),%eax
c00041b8:	8b 00                	mov    (%eax),%eax
c00041ba:	01 45 f4             	add    %eax,-0xc(%ebp)
c00041bd:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00041c1:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00041c4:	8b 45 08             	mov    0x8(%ebp),%eax
c00041c7:	8b 40 04             	mov    0x4(%eax),%eax
c00041ca:	39 c2                	cmp    %eax,%edx
c00041cc:	72 c8                	jb     c0004196 <mblock_cut+0x18>
c00041ce:	c9                   	leave  
c00041cf:	c3                   	ret    

c00041d0 <init_pool>:
c00041d0:	55                   	push   %ebp
c00041d1:	89 e5                	mov    %esp,%ebp
c00041d3:	83 ec 28             	sub    $0x28,%esp
c00041d6:	b8 09 0b 00 c0       	mov    $0xc0000b09,%eax
c00041db:	8b 00                	mov    (%eax),%eax
c00041dd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00041e0:	c7 05 3c 96 00 c0 00 	movl   $0x201000,0xc000963c
c00041e7:	10 20 00 
c00041ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00041ed:	2d 00 10 20 00       	sub    $0x201000,%eax
c00041f2:	d1 e8                	shr    %eax
c00041f4:	a3 40 96 00 c0       	mov    %eax,0xc0009640
c00041f9:	a1 40 96 00 c0       	mov    0xc0009640,%eax
c00041fe:	05 00 10 20 00       	add    $0x201000,%eax
c0004203:	a3 18 96 00 c0       	mov    %eax,0xc0009618
c0004208:	a1 40 96 00 c0       	mov    0xc0009640,%eax
c000420d:	a3 1c 96 00 c0       	mov    %eax,0xc000961c
c0004212:	c7 05 38 96 00 c0 00 	movl   $0xc009a000,0xc0009638
c0004219:	a0 09 c0 
c000421c:	a1 40 96 00 c0       	mov    0xc0009640,%eax
c0004221:	a3 34 96 00 c0       	mov    %eax,0xc0009634
c0004226:	c7 04 24 34 96 00 c0 	movl   $0xc0009634,(%esp)
c000422d:	e8 8e f5 ff ff       	call   c00037c0 <init_bit_map>
c0004232:	a1 40 96 00 c0       	mov    0xc0009640,%eax
c0004237:	c1 e8 0c             	shr    $0xc,%eax
c000423a:	2d 00 60 f6 3f       	sub    $0x3ff66000,%eax
c000423f:	a3 14 96 00 c0       	mov    %eax,0xc0009614
c0004244:	a1 1c 96 00 c0       	mov    0xc000961c,%eax
c0004249:	a3 10 96 00 c0       	mov    %eax,0xc0009610
c000424e:	c7 04 24 10 96 00 c0 	movl   $0xc0009610,(%esp)
c0004255:	e8 66 f5 ff ff       	call   c00037c0 <init_bit_map>
c000425a:	c7 05 2c 96 00 c0 00 	movl   $0x40000000,0xc000962c
c0004261:	00 00 40 
c0004264:	c7 05 28 96 00 c0 00 	movl   $0xc0201000,0xc0009628
c000426b:	10 20 c0 
c000426e:	c7 05 24 96 00 c0 00 	movl   $0x92000,0xc0009624
c0004275:	20 09 00 
c0004278:	a1 2c 96 00 c0       	mov    0xc000962c,%eax
c000427d:	2d 00 10 20 00       	sub    $0x201000,%eax
c0004282:	c1 e8 0c             	shr    $0xc,%eax
c0004285:	a3 20 96 00 c0       	mov    %eax,0xc0009620
c000428a:	c7 04 24 20 96 00 c0 	movl   $0xc0009620,(%esp)
c0004291:	e8 2a f5 ff ff       	call   c00037c0 <init_bit_map>
c0004296:	c7 04 24 a4 9e 00 c0 	movl   $0xc0009ea4,(%esp)
c000429d:	e8 03 0a 00 00       	call   c0004ca5 <init_mutex>
c00042a2:	c9                   	leave  
c00042a3:	c3                   	ret    

c00042a4 <get_pde_ptr>:
c00042a4:	55                   	push   %ebp
c00042a5:	89 e5                	mov    %esp,%ebp
c00042a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00042aa:	c1 e8 14             	shr    $0x14,%eax
c00042ad:	35 00 f0 ff ff       	xor    $0xfffff000,%eax
c00042b2:	83 e0 fc             	and    $0xfffffffc,%eax
c00042b5:	5d                   	pop    %ebp
c00042b6:	c3                   	ret    

c00042b7 <get_pte_ptr>:
c00042b7:	55                   	push   %ebp
c00042b8:	89 e5                	mov    %esp,%ebp
c00042ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00042bd:	c1 e8 0a             	shr    $0xa,%eax
c00042c0:	35 00 00 c0 ff       	xor    $0xffc00000,%eax
c00042c5:	83 e0 fc             	and    $0xfffffffc,%eax
c00042c8:	5d                   	pop    %ebp
c00042c9:	c3                   	ret    

c00042ca <add_pte>:
c00042ca:	55                   	push   %ebp
c00042cb:	89 e5                	mov    %esp,%ebp
c00042cd:	83 ec 28             	sub    $0x28,%esp
c00042d0:	8b 45 10             	mov    0x10(%ebp),%eax
c00042d3:	88 45 e4             	mov    %al,-0x1c(%ebp)
c00042d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00042d9:	89 04 24             	mov    %eax,(%esp)
c00042dc:	e8 c3 ff ff ff       	call   c00042a4 <get_pde_ptr>
c00042e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00042e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00042e7:	8b 00                	mov    (%eax),%eax
c00042e9:	83 e0 01             	and    $0x1,%eax
c00042ec:	85 c0                	test   %eax,%eax
c00042ee:	75 61                	jne    c0004351 <add_pte+0x87>
c00042f0:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00042f7:	00 
c00042f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c00042ff:	e8 47 f8 ff ff       	call   c0003b4b <malloc_page>
c0004304:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004307:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000430a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0004311:	00 
c0004312:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
c0004319:	00 
c000431a:	89 04 24             	mov    %eax,(%esp)
c000431d:	e8 ff f2 ff ff       	call   c0003621 <memset_8>
c0004322:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004325:	89 04 24             	mov    %eax,(%esp)
c0004328:	e8 71 00 00 00       	call   c000439e <get_paddr>
c000432d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004332:	89 c2                	mov    %eax,%edx
c0004334:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0004338:	01 d0                	add    %edx,%eax
c000433a:	89 44 24 08          	mov    %eax,0x8(%esp)
c000433e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0004345:	00 
c0004346:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004349:	89 04 24             	mov    %eax,(%esp)
c000434c:	e8 32 f3 ff ff       	call   c0003683 <memset_32>
c0004351:	8b 45 08             	mov    0x8(%ebp),%eax
c0004354:	89 04 24             	mov    %eax,(%esp)
c0004357:	e8 5b ff ff ff       	call   c00042b7 <get_pte_ptr>
c000435c:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000435f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004362:	8b 00                	mov    (%eax),%eax
c0004364:	83 e0 01             	and    $0x1,%eax
c0004367:	85 c0                	test   %eax,%eax
c0004369:	75 2c                	jne    c0004397 <add_pte+0xcd>
c000436b:	8b 45 0c             	mov    0xc(%ebp),%eax
c000436e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004373:	89 c2                	mov    %eax,%edx
c0004375:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0004379:	01 d0                	add    %edx,%eax
c000437b:	89 44 24 08          	mov    %eax,0x8(%esp)
c000437f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0004386:	00 
c0004387:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000438a:	89 04 24             	mov    %eax,(%esp)
c000438d:	e8 f1 f2 ff ff       	call   c0003683 <memset_32>
c0004392:	8b 45 08             	mov    0x8(%ebp),%eax
c0004395:	eb 05                	jmp    c000439c <add_pte+0xd2>
c0004397:	b8 00 00 00 00       	mov    $0x0,%eax
c000439c:	c9                   	leave  
c000439d:	c3                   	ret    

c000439e <get_paddr>:
c000439e:	55                   	push   %ebp
c000439f:	89 e5                	mov    %esp,%ebp
c00043a1:	83 ec 14             	sub    $0x14,%esp
c00043a4:	8b 45 08             	mov    0x8(%ebp),%eax
c00043a7:	89 04 24             	mov    %eax,(%esp)
c00043aa:	e8 08 ff ff ff       	call   c00042b7 <get_pte_ptr>
c00043af:	8b 00                	mov    (%eax),%eax
c00043b1:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00043b4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00043b7:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00043bc:	c9                   	leave  
c00043bd:	c3                   	ret    

c00043be <reset_pte>:
c00043be:	55                   	push   %ebp
c00043bf:	89 e5                	mov    %esp,%ebp
c00043c1:	83 ec 28             	sub    $0x28,%esp
c00043c4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c00043c8:	75 24                	jne    c00043ee <reset_pte+0x30>
c00043ca:	c7 44 24 0c 77 63 00 	movl   $0xc0006377,0xc(%esp)
c00043d1:	c0 
c00043d2:	c7 44 24 08 9b 63 00 	movl   $0xc000639b,0x8(%esp)
c00043d9:	c0 
c00043da:	c7 44 24 04 53 00 00 	movl   $0x53,0x4(%esp)
c00043e1:	00 
c00043e2:	c7 04 24 82 63 00 c0 	movl   $0xc0006382,(%esp)
c00043e9:	e8 32 f1 ff ff       	call   c0003520 <panic_spin>
c00043ee:	8b 45 08             	mov    0x8(%ebp),%eax
c00043f1:	89 04 24             	mov    %eax,(%esp)
c00043f4:	e8 be fe ff ff       	call   c00042b7 <get_pte_ptr>
c00043f9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00043fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00043ff:	8b 00                	mov    (%eax),%eax
c0004401:	83 e0 01             	and    $0x1,%eax
c0004404:	85 c0                	test   %eax,%eax
c0004406:	75 07                	jne    c000440f <reset_pte+0x51>
c0004408:	b8 00 00 00 00       	mov    $0x0,%eax
c000440d:	eb 20                	jmp    c000442f <reset_pte+0x71>
c000440f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0004416:	00 
c0004417:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c000441e:	00 
c000441f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004422:	89 04 24             	mov    %eax,(%esp)
c0004425:	e8 59 f2 ff ff       	call   c0003683 <memset_32>
c000442a:	b8 01 00 00 00       	mov    $0x1,%eax
c000442f:	c9                   	leave  
c0004430:	c3                   	ret    

c0004431 <get_running>:
c0004431:	55                   	push   %ebp
c0004432:	89 e5                	mov    %esp,%ebp
c0004434:	83 ec 10             	sub    $0x10,%esp
c0004437:	89 e0                	mov    %esp,%eax
c0004439:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000443c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000443f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004444:	c9                   	leave  
c0004445:	c3                   	ret    

c0004446 <schedule>:
c0004446:	55                   	push   %ebp
c0004447:	89 e5                	mov    %esp,%ebp
c0004449:	83 ec 28             	sub    $0x28,%esp
c000444c:	e8 5d f0 ff ff       	call   c00034ae <get_int_status>
c0004451:	85 c0                	test   %eax,%eax
c0004453:	74 24                	je     c0004479 <schedule+0x33>
c0004455:	c7 44 24 0c a5 63 00 	movl   $0xc00063a5,0xc(%esp)
c000445c:	c0 
c000445d:	c7 44 24 08 12 64 00 	movl   $0xc0006412,0x8(%esp)
c0004464:	c0 
c0004465:	c7 44 24 04 13 00 00 	movl   $0x13,0x4(%esp)
c000446c:	00 
c000446d:	c7 04 24 c1 63 00 c0 	movl   $0xc00063c1,(%esp)
c0004474:	e8 a7 f0 ff ff       	call   c0003520 <panic_spin>
c0004479:	e8 b3 ff ff ff       	call   c0004431 <get_running>
c000447e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004481:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0004488:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000448b:	8b 40 28             	mov    0x28(%eax),%eax
c000448e:	83 f8 03             	cmp    $0x3,%eax
c0004491:	75 33                	jne    c00044c6 <schedule+0x80>
c0004493:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004496:	83 c0 40             	add    $0x40,%eax
c0004499:	89 44 24 04          	mov    %eax,0x4(%esp)
c000449d:	c7 04 24 44 96 00 c0 	movl   $0xc0009644,(%esp)
c00044a4:	e8 0e 06 00 00       	call   c0004ab7 <lst_remove>
c00044a9:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00044b0:	00 
c00044b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00044b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00044b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c00044bf:	e8 80 f9 ff ff       	call   c0003e44 <free_page>
c00044c4:	eb 2b                	jmp    c00044f1 <schedule+0xab>
c00044c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00044c9:	8b 40 28             	mov    0x28(%eax),%eax
c00044cc:	83 f8 01             	cmp    $0x1,%eax
c00044cf:	75 20                	jne    c00044f1 <schedule+0xab>
c00044d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00044d4:	83 c0 38             	add    $0x38,%eax
c00044d7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00044db:	c7 04 24 80 95 00 c0 	movl   $0xc0009580,(%esp)
c00044e2:	e8 b4 03 00 00       	call   c000489b <lst_push>
c00044e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00044ea:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c00044f1:	c7 04 24 80 95 00 c0 	movl   $0xc0009580,(%esp)
c00044f8:	e8 b7 04 00 00       	call   c00049b4 <lst_pop>
c00044fd:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004500:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004503:	83 e8 38             	sub    $0x38,%eax
c0004506:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004509:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000450c:	25 ff 0f 00 00       	and    $0xfff,%eax
c0004511:	85 c0                	test   %eax,%eax
c0004513:	74 24                	je     c0004539 <schedule+0xf3>
c0004515:	c7 44 24 0c d9 63 00 	movl   $0xc00063d9,0xc(%esp)
c000451c:	c0 
c000451d:	c7 44 24 08 12 64 00 	movl   $0xc0006412,0x8(%esp)
c0004524:	c0 
c0004525:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c000452c:	00 
c000452d:	c7 04 24 c1 63 00 c0 	movl   $0xc00063c1,(%esp)
c0004534:	e8 e7 ef ff ff       	call   c0003520 <panic_spin>
c0004539:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c000453d:	75 24                	jne    c0004563 <schedule+0x11d>
c000453f:	c7 44 24 0c f3 63 00 	movl   $0xc00063f3,0xc(%esp)
c0004546:	c0 
c0004547:	c7 44 24 08 12 64 00 	movl   $0xc0006412,0x8(%esp)
c000454e:	c0 
c000454f:	c7 44 24 04 22 00 00 	movl   $0x22,0x4(%esp)
c0004556:	00 
c0004557:	c7 04 24 c1 63 00 c0 	movl   $0xc00063c1,(%esp)
c000455e:	e8 bd ef ff ff       	call   c0003520 <panic_spin>
c0004563:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004566:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c000456d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004570:	8b 40 48             	mov    0x48(%eax),%eax
c0004573:	85 c0                	test   %eax,%eax
c0004575:	74 09                	je     c0004580 <schedule+0x13a>
c0004577:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000457a:	8b 40 48             	mov    0x48(%eax),%eax
c000457d:	0f 22 d8             	mov    %eax,%cr3
c0004580:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004583:	89 04 24             	mov    %eax,(%esp)
c0004586:	e8 a0 11 00 00       	call   c000572b <exchange_esp0>
c000458b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000458e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004592:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004595:	89 04 24             	mov    %eax,(%esp)
c0004598:	e8 f3 06 00 00       	call   c0004c90 <switch_on>
c000459d:	c9                   	leave  
c000459e:	c3                   	ret    

c000459f <thread_fun_exc>:
c000459f:	55                   	push   %ebp
c00045a0:	89 e5                	mov    %esp,%ebp
c00045a2:	83 ec 18             	sub    $0x18,%esp
c00045a5:	e8 28 ef ff ff       	call   c00034d2 <int_enable>
c00045aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00045ad:	89 04 24             	mov    %eax,(%esp)
c00045b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00045b3:	ff d0                	call   *%eax
c00045b5:	e8 2c ef ff ff       	call   c00034e6 <int_disable>
c00045ba:	e8 72 fe ff ff       	call   c0004431 <get_running>
c00045bf:	c7 40 28 03 00 00 00 	movl   $0x3,0x28(%eax)
c00045c6:	e8 7b fe ff ff       	call   c0004446 <schedule>
c00045cb:	e8 02 ef ff ff       	call   c00034d2 <int_enable>
c00045d0:	c9                   	leave  
c00045d1:	c3                   	ret    

c00045d2 <acquire_id>:
c00045d2:	55                   	push   %ebp
c00045d3:	89 e5                	mov    %esp,%ebp
c00045d5:	83 ec 28             	sub    $0x28,%esp
c00045d8:	c7 04 24 bc 9e 00 c0 	movl   $0xc0009ebc,(%esp)
c00045df:	e8 f7 06 00 00       	call   c0004cdb <lock>
c00045e4:	a1 b8 9e 00 c0       	mov    0xc0009eb8,%eax
c00045e9:	8d 50 01             	lea    0x1(%eax),%edx
c00045ec:	89 15 b8 9e 00 c0    	mov    %edx,0xc0009eb8
c00045f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00045f5:	c7 04 24 bc 9e 00 c0 	movl   $0xc0009ebc,(%esp)
c00045fc:	e8 ed 06 00 00       	call   c0004cee <unlock>
c0004601:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004604:	c9                   	leave  
c0004605:	c3                   	ret    

c0004606 <create_thread>:
c0004606:	55                   	push   %ebp
c0004607:	89 e5                	mov    %esp,%ebp
c0004609:	83 ec 28             	sub    $0x28,%esp
c000460c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004610:	75 24                	jne    c0004636 <create_thread+0x30>
c0004612:	c7 44 24 0c 00 64 00 	movl   $0xc0006400,0xc(%esp)
c0004619:	c0 
c000461a:	c7 44 24 08 1b 64 00 	movl   $0xc000641b,0x8(%esp)
c0004621:	c0 
c0004622:	c7 44 24 04 42 00 00 	movl   $0x42,0x4(%esp)
c0004629:	00 
c000462a:	c7 04 24 c1 63 00 c0 	movl   $0xc00063c1,(%esp)
c0004631:	e8 ea ee ff ff       	call   c0003520 <panic_spin>
c0004636:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c000463d:	00 
c000463e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0004645:	e8 01 f5 ff ff       	call   c0003b4b <malloc_page>
c000464a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000464d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004650:	8d 50 14             	lea    0x14(%eax),%edx
c0004653:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
c000465a:	00 
c000465b:	8b 45 08             	mov    0x8(%ebp),%eax
c000465e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004662:	89 14 24             	mov    %edx,(%esp)
c0004665:	e8 74 f0 ff ff       	call   c00036de <memcopy>
c000466a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000466d:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c0004674:	e8 59 ff ff ff       	call   c00045d2 <acquire_id>
c0004679:	8b 55 f4             	mov    -0xc(%ebp),%edx
c000467c:	89 42 24             	mov    %eax,0x24(%edx)
c000467f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004682:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004685:	89 50 2c             	mov    %edx,0x2c(%eax)
c0004688:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000468b:	8b 55 0c             	mov    0xc(%ebp),%edx
c000468e:	89 50 30             	mov    %edx,0x30(%eax)
c0004691:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004694:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
c000469b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000469e:	c7 40 4c 09 ad ff 78 	movl   $0x78ffad09,0x4c(%eax)
c00046a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046a8:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%eax)
c00046af:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046b2:	c9                   	leave  
c00046b3:	c3                   	ret    

c00046b4 <init_thread>:
c00046b4:	55                   	push   %ebp
c00046b5:	89 e5                	mov    %esp,%ebp
c00046b7:	83 ec 28             	sub    $0x28,%esp
c00046ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00046bd:	05 e0 0f 00 00       	add    $0xfe0,%eax
c00046c2:	89 c2                	mov    %eax,%edx
c00046c4:	8b 45 08             	mov    0x8(%ebp),%eax
c00046c7:	89 10                	mov    %edx,(%eax)
c00046c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00046cc:	8b 00                	mov    (%eax),%eax
c00046ce:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00046d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046d4:	c7 40 10 9f 45 00 c0 	movl   $0xc000459f,0x10(%eax)
c00046db:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046de:	8b 55 0c             	mov    0xc(%ebp),%edx
c00046e1:	89 50 18             	mov    %edx,0x18(%eax)
c00046e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046e7:	8b 55 10             	mov    0x10(%ebp),%edx
c00046ea:	89 50 1c             	mov    %edx,0x1c(%eax)
c00046ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046f0:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c00046f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046fa:	8b 50 0c             	mov    0xc(%eax),%edx
c00046fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004700:	89 50 08             	mov    %edx,0x8(%eax)
c0004703:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004706:	8b 50 08             	mov    0x8(%eax),%edx
c0004709:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000470c:	89 10                	mov    %edx,(%eax)
c000470e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004711:	8b 10                	mov    (%eax),%edx
c0004713:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004716:	89 50 04             	mov    %edx,0x4(%eax)
c0004719:	8b 45 08             	mov    0x8(%ebp),%eax
c000471c:	83 c0 38             	add    $0x38,%eax
c000471f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004723:	c7 04 24 80 95 00 c0 	movl   $0xc0009580,(%esp)
c000472a:	e8 6c 01 00 00       	call   c000489b <lst_push>
c000472f:	8b 45 08             	mov    0x8(%ebp),%eax
c0004732:	83 c0 40             	add    $0x40,%eax
c0004735:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004739:	c7 04 24 44 96 00 c0 	movl   $0xc0009644,(%esp)
c0004740:	e8 56 01 00 00       	call   c000489b <lst_push>
c0004745:	c9                   	leave  
c0004746:	c3                   	ret    

c0004747 <init_main>:
c0004747:	55                   	push   %ebp
c0004748:	89 e5                	mov    %esp,%ebp
c000474a:	83 ec 28             	sub    $0x28,%esp
c000474d:	c7 45 f4 00 e0 09 c0 	movl   $0xc009e000,-0xc(%ebp)
c0004754:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004757:	c7 00 e0 ef 09 c0    	movl   $0xc009efe0,(%eax)
c000475d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004760:	83 c0 14             	add    $0x14,%eax
c0004763:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c000476a:	00 
c000476b:	c7 44 24 04 0d 64 00 	movl   $0xc000640d,0x4(%esp)
c0004772:	c0 
c0004773:	89 04 24             	mov    %eax,(%esp)
c0004776:	e8 63 ef ff ff       	call   c00036de <memcopy>
c000477b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000477e:	83 c0 64             	add    $0x64,%eax
c0004781:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0004788:	00 
c0004789:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c0004790:	00 
c0004791:	89 04 24             	mov    %eax,(%esp)
c0004794:	e8 88 ee ff ff       	call   c0003621 <memset_8>
c0004799:	a1 b8 9e 00 c0       	mov    0xc0009eb8,%eax
c000479e:	8d 50 01             	lea    0x1(%eax),%edx
c00047a1:	89 15 b8 9e 00 c0    	mov    %edx,0xc0009eb8
c00047a7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00047aa:	89 42 24             	mov    %eax,0x24(%edx)
c00047ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047b0:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c00047b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047ba:	c7 40 30 14 00 00 00 	movl   $0x14,0x30(%eax)
c00047c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047c4:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
c00047cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047ce:	c7 40 2c 14 00 00 00 	movl   $0x14,0x2c(%eax)
c00047d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047d8:	c7 40 4c 09 ad ff 78 	movl   $0x78ffad09,0x4c(%eax)
c00047df:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047e2:	83 c0 40             	add    $0x40,%eax
c00047e5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00047e9:	c7 04 24 44 96 00 c0 	movl   $0xc0009644,(%esp)
c00047f0:	e8 a6 00 00 00       	call   c000489b <lst_push>
c00047f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047f8:	c7 40 48 00 00 10 00 	movl   $0x100000,0x48(%eax)
c00047ff:	c9                   	leave  
c0004800:	c3                   	ret    

c0004801 <init_thread_list>:
c0004801:	55                   	push   %ebp
c0004802:	89 e5                	mov    %esp,%ebp
c0004804:	83 ec 18             	sub    $0x18,%esp
c0004807:	c7 04 24 80 95 00 c0 	movl   $0xc0009580,(%esp)
c000480e:	e8 70 00 00 00       	call   c0004883 <init_list>
c0004813:	c7 04 24 44 96 00 c0 	movl   $0xc0009644,(%esp)
c000481a:	e8 64 00 00 00       	call   c0004883 <init_list>
c000481f:	e8 23 ff ff ff       	call   c0004747 <init_main>
c0004824:	c7 04 24 bc 9e 00 c0 	movl   $0xc0009ebc,(%esp)
c000482b:	e8 75 04 00 00       	call   c0004ca5 <init_mutex>
c0004830:	c7 05 b8 9e 00 c0 00 	movl   $0x0,0xc0009eb8
c0004837:	00 00 00 
c000483a:	c9                   	leave  
c000483b:	c3                   	ret    

c000483c <thread_start>:
c000483c:	55                   	push   %ebp
c000483d:	89 e5                	mov    %esp,%ebp
c000483f:	83 ec 28             	sub    $0x28,%esp
c0004842:	8b 45 14             	mov    0x14(%ebp),%eax
c0004845:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0004849:	8b 45 10             	mov    0x10(%ebp),%eax
c000484c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004850:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004853:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004857:	8b 45 08             	mov    0x8(%ebp),%eax
c000485a:	89 04 24             	mov    %eax,(%esp)
c000485d:	e8 a4 fd ff ff       	call   c0004606 <create_thread>
c0004862:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004865:	8b 45 14             	mov    0x14(%ebp),%eax
c0004868:	89 44 24 08          	mov    %eax,0x8(%esp)
c000486c:	8b 45 10             	mov    0x10(%ebp),%eax
c000486f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004873:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004876:	89 04 24             	mov    %eax,(%esp)
c0004879:	e8 36 fe ff ff       	call   c00046b4 <init_thread>
c000487e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004881:	c9                   	leave  
c0004882:	c3                   	ret    

c0004883 <init_list>:
c0004883:	55                   	push   %ebp
c0004884:	89 e5                	mov    %esp,%ebp
c0004886:	8b 45 08             	mov    0x8(%ebp),%eax
c0004889:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004890:	8b 45 08             	mov    0x8(%ebp),%eax
c0004893:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004899:	5d                   	pop    %ebp
c000489a:	c3                   	ret    

c000489b <lst_push>:
c000489b:	55                   	push   %ebp
c000489c:	89 e5                	mov    %esp,%ebp
c000489e:	83 ec 28             	sub    $0x28,%esp
c00048a1:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00048a5:	75 24                	jne    c00048cb <lst_push+0x30>
c00048a7:	c7 44 24 0c 2c 64 00 	movl   $0xc000642c,0xc(%esp)
c00048ae:	c0 
c00048af:	c7 44 24 08 24 65 00 	movl   $0xc0006524,0x8(%esp)
c00048b6:	c0 
c00048b7:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c00048be:	00 
c00048bf:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c00048c6:	e8 55 ec ff ff       	call   c0003520 <panic_spin>
c00048cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00048ce:	89 44 24 04          	mov    %eax,0x4(%esp)
c00048d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00048d5:	89 04 24             	mov    %eax,(%esp)
c00048d8:	e8 75 01 00 00       	call   c0004a52 <lst_find>
c00048dd:	85 c0                	test   %eax,%eax
c00048df:	74 24                	je     c0004905 <lst_push+0x6a>
c00048e1:	c7 44 24 0c 5d 64 00 	movl   $0xc000645d,0xc(%esp)
c00048e8:	c0 
c00048e9:	c7 44 24 08 24 65 00 	movl   $0xc0006524,0x8(%esp)
c00048f0:	c0 
c00048f1:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
c00048f8:	00 
c00048f9:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c0004900:	e8 1b ec ff ff       	call   c0003520 <panic_spin>
c0004905:	e8 dc eb ff ff       	call   c00034e6 <int_disable>
c000490a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000490d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004910:	8b 40 04             	mov    0x4(%eax),%eax
c0004913:	85 c0                	test   %eax,%eax
c0004915:	75 26                	jne    c000493d <lst_push+0xa2>
c0004917:	8b 45 08             	mov    0x8(%ebp),%eax
c000491a:	8b 55 0c             	mov    0xc(%ebp),%edx
c000491d:	89 50 04             	mov    %edx,0x4(%eax)
c0004920:	8b 45 08             	mov    0x8(%ebp),%eax
c0004923:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004926:	89 10                	mov    %edx,(%eax)
c0004928:	8b 45 0c             	mov    0xc(%ebp),%eax
c000492b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004932:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004935:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c000493b:	eb 26                	jmp    c0004963 <lst_push+0xc8>
c000493d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004940:	8b 10                	mov    (%eax),%edx
c0004942:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004945:	89 50 04             	mov    %edx,0x4(%eax)
c0004948:	8b 45 08             	mov    0x8(%ebp),%eax
c000494b:	8b 00                	mov    (%eax),%eax
c000494d:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004950:	89 10                	mov    %edx,(%eax)
c0004952:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004955:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c000495b:	8b 45 08             	mov    0x8(%ebp),%eax
c000495e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004961:	89 10                	mov    %edx,(%eax)
c0004963:	8b 45 08             	mov    0x8(%ebp),%eax
c0004966:	8b 00                	mov    (%eax),%eax
c0004968:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000496b:	75 3a                	jne    c00049a7 <lst_push+0x10c>
c000496d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004970:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004974:	8b 45 08             	mov    0x8(%ebp),%eax
c0004977:	89 04 24             	mov    %eax,(%esp)
c000497a:	e8 d3 00 00 00       	call   c0004a52 <lst_find>
c000497f:	85 c0                	test   %eax,%eax
c0004981:	75 24                	jne    c00049a7 <lst_push+0x10c>
c0004983:	c7 44 24 0c 74 64 00 	movl   $0xc0006474,0xc(%esp)
c000498a:	c0 
c000498b:	c7 44 24 08 24 65 00 	movl   $0xc0006524,0x8(%esp)
c0004992:	c0 
c0004993:	c7 44 24 04 1b 00 00 	movl   $0x1b,0x4(%esp)
c000499a:	00 
c000499b:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c00049a2:	e8 79 eb ff ff       	call   c0003520 <panic_spin>
c00049a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049aa:	89 04 24             	mov    %eax,(%esp)
c00049ad:	e8 48 eb ff ff       	call   c00034fa <set_int_status>
c00049b2:	c9                   	leave  
c00049b3:	c3                   	ret    

c00049b4 <lst_pop>:
c00049b4:	55                   	push   %ebp
c00049b5:	89 e5                	mov    %esp,%ebp
c00049b7:	83 ec 28             	sub    $0x28,%esp
c00049ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00049bd:	8b 40 04             	mov    0x4(%eax),%eax
c00049c0:	85 c0                	test   %eax,%eax
c00049c2:	75 24                	jne    c00049e8 <lst_pop+0x34>
c00049c4:	c7 44 24 0c a0 64 00 	movl   $0xc00064a0,0xc(%esp)
c00049cb:	c0 
c00049cc:	c7 44 24 08 2d 65 00 	movl   $0xc000652d,0x8(%esp)
c00049d3:	c0 
c00049d4:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c00049db:	00 
c00049dc:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c00049e3:	e8 38 eb ff ff       	call   c0003520 <panic_spin>
c00049e8:	e8 f9 ea ff ff       	call   c00034e6 <int_disable>
c00049ed:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00049f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00049f3:	8b 40 04             	mov    0x4(%eax),%eax
c00049f6:	85 c0                	test   %eax,%eax
c00049f8:	75 07                	jne    c0004a01 <lst_pop+0x4d>
c00049fa:	b8 00 00 00 00       	mov    $0x0,%eax
c00049ff:	eb 4f                	jmp    c0004a50 <lst_pop+0x9c>
c0004a01:	8b 45 08             	mov    0x8(%ebp),%eax
c0004a04:	8b 40 04             	mov    0x4(%eax),%eax
c0004a07:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004a0a:	8b 45 08             	mov    0x8(%ebp),%eax
c0004a0d:	8b 40 04             	mov    0x4(%eax),%eax
c0004a10:	8b 10                	mov    (%eax),%edx
c0004a12:	8b 45 08             	mov    0x8(%ebp),%eax
c0004a15:	89 50 04             	mov    %edx,0x4(%eax)
c0004a18:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004a1b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004a22:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004a25:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004a2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004a2e:	8b 40 04             	mov    0x4(%eax),%eax
c0004a31:	85 c0                	test   %eax,%eax
c0004a33:	74 0d                	je     c0004a42 <lst_pop+0x8e>
c0004a35:	8b 45 08             	mov    0x8(%ebp),%eax
c0004a38:	8b 40 04             	mov    0x4(%eax),%eax
c0004a3b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004a42:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a45:	89 04 24             	mov    %eax,(%esp)
c0004a48:	e8 ad ea ff ff       	call   c00034fa <set_int_status>
c0004a4d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004a50:	c9                   	leave  
c0004a51:	c3                   	ret    

c0004a52 <lst_find>:
c0004a52:	55                   	push   %ebp
c0004a53:	89 e5                	mov    %esp,%ebp
c0004a55:	83 ec 28             	sub    $0x28,%esp
c0004a58:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004a5c:	75 24                	jne    c0004a82 <lst_find+0x30>
c0004a5e:	c7 44 24 0c 2c 64 00 	movl   $0xc000642c,0xc(%esp)
c0004a65:	c0 
c0004a66:	c7 44 24 08 35 65 00 	movl   $0xc0006535,0x8(%esp)
c0004a6d:	c0 
c0004a6e:	c7 44 24 04 2f 00 00 	movl   $0x2f,0x4(%esp)
c0004a75:	00 
c0004a76:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c0004a7d:	e8 9e ea ff ff       	call   c0003520 <panic_spin>
c0004a82:	8b 45 08             	mov    0x8(%ebp),%eax
c0004a85:	8b 40 04             	mov    0x4(%eax),%eax
c0004a88:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004a8b:	eb 08                	jmp    c0004a95 <lst_find+0x43>
c0004a8d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a90:	8b 00                	mov    (%eax),%eax
c0004a92:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004a95:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a98:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004a9b:	74 06                	je     c0004aa3 <lst_find+0x51>
c0004a9d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004aa1:	75 ea                	jne    c0004a8d <lst_find+0x3b>
c0004aa3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004aa7:	75 07                	jne    c0004ab0 <lst_find+0x5e>
c0004aa9:	b8 00 00 00 00       	mov    $0x0,%eax
c0004aae:	eb 05                	jmp    c0004ab5 <lst_find+0x63>
c0004ab0:	b8 01 00 00 00       	mov    $0x1,%eax
c0004ab5:	c9                   	leave  
c0004ab6:	c3                   	ret    

c0004ab7 <lst_remove>:
c0004ab7:	55                   	push   %ebp
c0004ab8:	89 e5                	mov    %esp,%ebp
c0004aba:	83 ec 28             	sub    $0x28,%esp
c0004abd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ac0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004ac4:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ac7:	89 04 24             	mov    %eax,(%esp)
c0004aca:	e8 83 ff ff ff       	call   c0004a52 <lst_find>
c0004acf:	85 c0                	test   %eax,%eax
c0004ad1:	75 24                	jne    c0004af7 <lst_remove+0x40>
c0004ad3:	c7 44 24 0c b4 64 00 	movl   $0xc00064b4,0xc(%esp)
c0004ada:	c0 
c0004adb:	c7 44 24 08 3e 65 00 	movl   $0xc000653e,0x8(%esp)
c0004ae2:	c0 
c0004ae3:	c7 44 24 04 38 00 00 	movl   $0x38,0x4(%esp)
c0004aea:	00 
c0004aeb:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c0004af2:	e8 29 ea ff ff       	call   c0003520 <panic_spin>
c0004af7:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004afb:	74 47                	je     c0004b44 <lst_remove+0x8d>
c0004afd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b00:	8b 40 04             	mov    0x4(%eax),%eax
c0004b03:	85 c0                	test   %eax,%eax
c0004b05:	75 09                	jne    c0004b10 <lst_remove+0x59>
c0004b07:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b0a:	8b 00                	mov    (%eax),%eax
c0004b0c:	85 c0                	test   %eax,%eax
c0004b0e:	74 07                	je     c0004b17 <lst_remove+0x60>
c0004b10:	b8 01 00 00 00       	mov    $0x1,%eax
c0004b15:	eb 05                	jmp    c0004b1c <lst_remove+0x65>
c0004b17:	b8 00 00 00 00       	mov    $0x0,%eax
c0004b1c:	85 c0                	test   %eax,%eax
c0004b1e:	75 24                	jne    c0004b44 <lst_remove+0x8d>
c0004b20:	c7 44 24 0c c8 64 00 	movl   $0xc00064c8,0xc(%esp)
c0004b27:	c0 
c0004b28:	c7 44 24 08 3e 65 00 	movl   $0xc000653e,0x8(%esp)
c0004b2f:	c0 
c0004b30:	c7 44 24 04 39 00 00 	movl   $0x39,0x4(%esp)
c0004b37:	00 
c0004b38:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c0004b3f:	e8 dc e9 ff ff       	call   c0003520 <panic_spin>
c0004b44:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b47:	8b 40 04             	mov    0x4(%eax),%eax
c0004b4a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004b4d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b50:	8b 00                	mov    (%eax),%eax
c0004b52:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004b55:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004b59:	75 15                	jne    c0004b70 <lst_remove+0xb9>
c0004b5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004b5e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004b65:	8b 45 08             	mov    0x8(%ebp),%eax
c0004b68:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004b6e:	eb 1b                	jmp    c0004b8b <lst_remove+0xd4>
c0004b70:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004b73:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0004b76:	89 10                	mov    %edx,(%eax)
c0004b78:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b7b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004b82:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b85:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004b8b:	c9                   	leave  
c0004b8c:	c3                   	ret    

c0004b8d <lst_head_insert>:
c0004b8d:	55                   	push   %ebp
c0004b8e:	89 e5                	mov    %esp,%ebp
c0004b90:	83 ec 18             	sub    $0x18,%esp
c0004b93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b96:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004b9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0004b9d:	89 04 24             	mov    %eax,(%esp)
c0004ba0:	e8 ad fe ff ff       	call   c0004a52 <lst_find>
c0004ba5:	85 c0                	test   %eax,%eax
c0004ba7:	74 24                	je     c0004bcd <lst_head_insert+0x40>
c0004ba9:	c7 44 24 0c 02 65 00 	movl   $0xc0006502,0xc(%esp)
c0004bb0:	c0 
c0004bb1:	c7 44 24 08 49 65 00 	movl   $0xc0006549,0x8(%esp)
c0004bb8:	c0 
c0004bb9:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%esp)
c0004bc0:	00 
c0004bc1:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c0004bc8:	e8 53 e9 ff ff       	call   c0003520 <panic_spin>
c0004bcd:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004bd1:	75 24                	jne    c0004bf7 <lst_head_insert+0x6a>
c0004bd3:	c7 44 24 0c 2c 64 00 	movl   $0xc000642c,0xc(%esp)
c0004bda:	c0 
c0004bdb:	c7 44 24 08 49 65 00 	movl   $0xc0006549,0x8(%esp)
c0004be2:	c0 
c0004be3:	c7 44 24 04 49 00 00 	movl   $0x49,0x4(%esp)
c0004bea:	00 
c0004beb:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c0004bf2:	e8 29 e9 ff ff       	call   c0003520 <panic_spin>
c0004bf7:	8b 45 08             	mov    0x8(%ebp),%eax
c0004bfa:	8b 40 04             	mov    0x4(%eax),%eax
c0004bfd:	85 c0                	test   %eax,%eax
c0004bff:	75 15                	jne    c0004c16 <lst_head_insert+0x89>
c0004c01:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c04:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c07:	89 10                	mov    %edx,(%eax)
c0004c09:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c0c:	8b 10                	mov    (%eax),%edx
c0004c0e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c11:	89 50 04             	mov    %edx,0x4(%eax)
c0004c14:	eb 2a                	jmp    c0004c40 <lst_head_insert+0xb3>
c0004c16:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c19:	8b 40 04             	mov    0x4(%eax),%eax
c0004c1c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c1f:	89 50 04             	mov    %edx,0x4(%eax)
c0004c22:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c25:	8b 50 04             	mov    0x4(%eax),%edx
c0004c28:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004c2b:	89 10                	mov    %edx,(%eax)
c0004c2d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004c30:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004c37:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c3a:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c3d:	89 50 04             	mov    %edx,0x4(%eax)
c0004c40:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c43:	8b 40 04             	mov    0x4(%eax),%eax
c0004c46:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004c49:	74 24                	je     c0004c6f <lst_head_insert+0xe2>
c0004c4b:	c7 44 24 0c 14 65 00 	movl   $0xc0006514,0xc(%esp)
c0004c52:	c0 
c0004c53:	c7 44 24 08 49 65 00 	movl   $0xc0006549,0x8(%esp)
c0004c5a:	c0 
c0004c5b:	c7 44 24 04 52 00 00 	movl   $0x52,0x4(%esp)
c0004c62:	00 
c0004c63:	c7 04 24 3c 64 00 c0 	movl   $0xc000643c,(%esp)
c0004c6a:	e8 b1 e8 ff ff       	call   c0003520 <panic_spin>
c0004c6f:	c9                   	leave  
c0004c70:	c3                   	ret    

c0004c71 <lst_empty>:
c0004c71:	55                   	push   %ebp
c0004c72:	89 e5                	mov    %esp,%ebp
c0004c74:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c77:	8b 40 04             	mov    0x4(%eax),%eax
c0004c7a:	85 c0                	test   %eax,%eax
c0004c7c:	0f 94 c0             	sete   %al
c0004c7f:	0f b6 c0             	movzbl %al,%eax
c0004c82:	5d                   	pop    %ebp
c0004c83:	c3                   	ret    
c0004c84:	66 90                	xchg   %ax,%ax
c0004c86:	66 90                	xchg   %ax,%ax
c0004c88:	66 90                	xchg   %ax,%ax
c0004c8a:	66 90                	xchg   %ax,%ax
c0004c8c:	66 90                	xchg   %ax,%ax
c0004c8e:	66 90                	xchg   %ax,%ax

c0004c90 <switch_on>:
c0004c90:	57                   	push   %edi
c0004c91:	56                   	push   %esi
c0004c92:	55                   	push   %ebp
c0004c93:	53                   	push   %ebx
c0004c94:	89 e5                	mov    %esp,%ebp
c0004c96:	8b 45 14             	mov    0x14(%ebp),%eax
c0004c99:	89 20                	mov    %esp,(%eax)
c0004c9b:	8b 45 18             	mov    0x18(%ebp),%eax
c0004c9e:	8b 20                	mov    (%eax),%esp
c0004ca0:	5b                   	pop    %ebx
c0004ca1:	5d                   	pop    %ebp
c0004ca2:	5e                   	pop    %esi
c0004ca3:	5f                   	pop    %edi
c0004ca4:	c3                   	ret    

c0004ca5 <init_mutex>:
c0004ca5:	55                   	push   %ebp
c0004ca6:	89 e5                	mov    %esp,%ebp
c0004ca8:	83 ec 18             	sub    $0x18,%esp
c0004cab:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cae:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0004cb4:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cb7:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004cbe:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cc1:	83 c0 08             	add    $0x8,%eax
c0004cc4:	89 04 24             	mov    %eax,(%esp)
c0004cc7:	e8 b7 fb ff ff       	call   c0004883 <init_list>
c0004ccc:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ccf:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0004cd6:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cd9:	c9                   	leave  
c0004cda:	c3                   	ret    

c0004cdb <lock>:
c0004cdb:	55                   	push   %ebp
c0004cdc:	89 e5                	mov    %esp,%ebp
c0004cde:	83 ec 18             	sub    $0x18,%esp
c0004ce1:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ce4:	89 04 24             	mov    %eax,(%esp)
c0004ce7:	e8 15 00 00 00       	call   c0004d01 <down>
c0004cec:	c9                   	leave  
c0004ced:	c3                   	ret    

c0004cee <unlock>:
c0004cee:	55                   	push   %ebp
c0004cef:	89 e5                	mov    %esp,%ebp
c0004cf1:	83 ec 18             	sub    $0x18,%esp
c0004cf4:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cf7:	89 04 24             	mov    %eax,(%esp)
c0004cfa:	e8 54 01 00 00       	call   c0004e53 <up>
c0004cff:	c9                   	leave  
c0004d00:	c3                   	ret    

c0004d01 <down>:
c0004d01:	55                   	push   %ebp
c0004d02:	89 e5                	mov    %esp,%ebp
c0004d04:	83 ec 28             	sub    $0x28,%esp
c0004d07:	e8 da e7 ff ff       	call   c00034e6 <int_disable>
c0004d0c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004d0f:	e8 1d f7 ff ff       	call   c0004431 <get_running>
c0004d14:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004d17:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d1a:	8b 40 10             	mov    0x10(%eax),%eax
c0004d1d:	85 c0                	test   %eax,%eax
c0004d1f:	74 1f                	je     c0004d40 <down+0x3f>
c0004d21:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d24:	8b 40 10             	mov    0x10(%eax),%eax
c0004d27:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0004d2a:	75 14                	jne    c0004d40 <down+0x3f>
c0004d2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d2f:	8b 40 04             	mov    0x4(%eax),%eax
c0004d32:	8d 50 01             	lea    0x1(%eax),%edx
c0004d35:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d38:	89 50 04             	mov    %edx,0x4(%eax)
c0004d3b:	e9 06 01 00 00       	jmp    c0004e46 <down+0x145>
c0004d40:	e9 82 00 00 00       	jmp    c0004dc7 <down+0xc6>
c0004d45:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004d48:	8d 50 38             	lea    0x38(%eax),%edx
c0004d4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d4e:	83 c0 08             	add    $0x8,%eax
c0004d51:	89 54 24 04          	mov    %edx,0x4(%esp)
c0004d55:	89 04 24             	mov    %eax,(%esp)
c0004d58:	e8 f5 fc ff ff       	call   c0004a52 <lst_find>
c0004d5d:	85 c0                	test   %eax,%eax
c0004d5f:	74 24                	je     c0004d85 <down+0x84>
c0004d61:	c7 44 24 0c 5c 65 00 	movl   $0xc000655c,0xc(%esp)
c0004d68:	c0 
c0004d69:	c7 44 24 08 4f 66 00 	movl   $0xc000664f,0x8(%esp)
c0004d70:	c0 
c0004d71:	c7 44 24 04 1f 00 00 	movl   $0x1f,0x4(%esp)
c0004d78:	00 
c0004d79:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004d80:	e8 9b e7 ff ff       	call   c0003520 <panic_spin>
c0004d85:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d88:	83 c0 08             	add    $0x8,%eax
c0004d8b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004d8f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004d92:	89 04 24             	mov    %eax,(%esp)
c0004d95:	e8 c9 01 00 00       	call   c0004f63 <thread_block>
c0004d9a:	e8 0f e7 ff ff       	call   c00034ae <get_int_status>
c0004d9f:	85 c0                	test   %eax,%eax
c0004da1:	74 24                	je     c0004dc7 <down+0xc6>
c0004da3:	c7 44 24 0c a2 65 00 	movl   $0xc00065a2,0xc(%esp)
c0004daa:	c0 
c0004dab:	c7 44 24 08 4f 66 00 	movl   $0xc000664f,0x8(%esp)
c0004db2:	c0 
c0004db3:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c0004dba:	00 
c0004dbb:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004dc2:	e8 59 e7 ff ff       	call   c0003520 <panic_spin>
c0004dc7:	8b 45 08             	mov    0x8(%ebp),%eax
c0004dca:	8b 00                	mov    (%eax),%eax
c0004dcc:	83 f8 01             	cmp    $0x1,%eax
c0004dcf:	0f 85 70 ff ff ff    	jne    c0004d45 <down+0x44>
c0004dd5:	8b 45 08             	mov    0x8(%ebp),%eax
c0004dd8:	8b 00                	mov    (%eax),%eax
c0004dda:	83 f8 01             	cmp    $0x1,%eax
c0004ddd:	74 24                	je     c0004e03 <down+0x102>
c0004ddf:	c7 44 24 0c be 65 00 	movl   $0xc00065be,0xc(%esp)
c0004de6:	c0 
c0004de7:	c7 44 24 08 4f 66 00 	movl   $0xc000664f,0x8(%esp)
c0004dee:	c0 
c0004def:	c7 44 24 04 24 00 00 	movl   $0x24,0x4(%esp)
c0004df6:	00 
c0004df7:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004dfe:	e8 1d e7 ff ff       	call   c0003520 <panic_spin>
c0004e03:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e06:	8b 00                	mov    (%eax),%eax
c0004e08:	8d 50 ff             	lea    -0x1(%eax),%edx
c0004e0b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e0e:	89 10                	mov    %edx,(%eax)
c0004e10:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e13:	8b 00                	mov    (%eax),%eax
c0004e15:	85 c0                	test   %eax,%eax
c0004e17:	74 24                	je     c0004e3d <down+0x13c>
c0004e19:	c7 44 24 0c d2 65 00 	movl   $0xc00065d2,0xc(%esp)
c0004e20:	c0 
c0004e21:	c7 44 24 08 4f 66 00 	movl   $0xc000664f,0x8(%esp)
c0004e28:	c0 
c0004e29:	c7 44 24 04 26 00 00 	movl   $0x26,0x4(%esp)
c0004e30:	00 
c0004e31:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004e38:	e8 e3 e6 ff ff       	call   c0003520 <panic_spin>
c0004e3d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e40:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0004e43:	89 50 10             	mov    %edx,0x10(%eax)
c0004e46:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004e49:	89 04 24             	mov    %eax,(%esp)
c0004e4c:	e8 a9 e6 ff ff       	call   c00034fa <set_int_status>
c0004e51:	c9                   	leave  
c0004e52:	c3                   	ret    

c0004e53 <up>:
c0004e53:	55                   	push   %ebp
c0004e54:	89 e5                	mov    %esp,%ebp
c0004e56:	83 ec 28             	sub    $0x28,%esp
c0004e59:	e8 88 e6 ff ff       	call   c00034e6 <int_disable>
c0004e5e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004e61:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e64:	8b 00                	mov    (%eax),%eax
c0004e66:	85 c0                	test   %eax,%eax
c0004e68:	74 24                	je     c0004e8e <up+0x3b>
c0004e6a:	c7 44 24 0c e6 65 00 	movl   $0xc00065e6,0xc(%esp)
c0004e71:	c0 
c0004e72:	c7 44 24 08 54 66 00 	movl   $0xc0006654,0x8(%esp)
c0004e79:	c0 
c0004e7a:	c7 44 24 04 2e 00 00 	movl   $0x2e,0x4(%esp)
c0004e81:	00 
c0004e82:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004e89:	e8 92 e6 ff ff       	call   c0003520 <panic_spin>
c0004e8e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e91:	8b 40 04             	mov    0x4(%eax),%eax
c0004e94:	85 c0                	test   %eax,%eax
c0004e96:	74 11                	je     c0004ea9 <up+0x56>
c0004e98:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e9b:	8b 40 04             	mov    0x4(%eax),%eax
c0004e9e:	8d 50 ff             	lea    -0x1(%eax),%edx
c0004ea1:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ea4:	89 50 04             	mov    %edx,0x4(%eax)
c0004ea7:	eb 7f                	jmp    c0004f28 <up+0xd5>
c0004ea9:	8b 45 08             	mov    0x8(%ebp),%eax
c0004eac:	8b 00                	mov    (%eax),%eax
c0004eae:	8d 50 01             	lea    0x1(%eax),%edx
c0004eb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0004eb4:	89 10                	mov    %edx,(%eax)
c0004eb6:	8b 45 08             	mov    0x8(%ebp),%eax
c0004eb9:	8b 00                	mov    (%eax),%eax
c0004ebb:	83 f8 01             	cmp    $0x1,%eax
c0004ebe:	74 24                	je     c0004ee4 <up+0x91>
c0004ec0:	c7 44 24 0c be 65 00 	movl   $0xc00065be,0xc(%esp)
c0004ec7:	c0 
c0004ec8:	c7 44 24 08 54 66 00 	movl   $0xc0006654,0x8(%esp)
c0004ecf:	c0 
c0004ed0:	c7 44 24 04 35 00 00 	movl   $0x35,0x4(%esp)
c0004ed7:	00 
c0004ed8:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004edf:	e8 3c e6 ff ff       	call   c0003520 <panic_spin>
c0004ee4:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ee7:	83 c0 08             	add    $0x8,%eax
c0004eea:	89 04 24             	mov    %eax,(%esp)
c0004eed:	e8 7f fd ff ff       	call   c0004c71 <lst_empty>
c0004ef2:	85 c0                	test   %eax,%eax
c0004ef4:	75 28                	jne    c0004f1e <up+0xcb>
c0004ef6:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ef9:	83 c0 08             	add    $0x8,%eax
c0004efc:	89 04 24             	mov    %eax,(%esp)
c0004eff:	e8 b0 fa ff ff       	call   c00049b4 <lst_pop>
c0004f04:	83 e8 38             	sub    $0x38,%eax
c0004f07:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004f0a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004f0d:	89 04 24             	mov    %eax,(%esp)
c0004f10:	e8 fb 00 00 00       	call   c0005010 <thread_unblock>
c0004f15:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f18:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0004f1b:	89 50 10             	mov    %edx,0x10(%eax)
c0004f1e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f21:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0004f28:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f2b:	8b 40 04             	mov    0x4(%eax),%eax
c0004f2e:	85 c0                	test   %eax,%eax
c0004f30:	79 24                	jns    c0004f56 <up+0x103>
c0004f32:	c7 44 24 0c f6 65 00 	movl   $0xc00065f6,0xc(%esp)
c0004f39:	c0 
c0004f3a:	c7 44 24 08 54 66 00 	movl   $0xc0006654,0x8(%esp)
c0004f41:	c0 
c0004f42:	c7 44 24 04 3d 00 00 	movl   $0x3d,0x4(%esp)
c0004f49:	00 
c0004f4a:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004f51:	e8 ca e5 ff ff       	call   c0003520 <panic_spin>
c0004f56:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004f59:	89 04 24             	mov    %eax,(%esp)
c0004f5c:	e8 99 e5 ff ff       	call   c00034fa <set_int_status>
c0004f61:	c9                   	leave  
c0004f62:	c3                   	ret    

c0004f63 <thread_block>:
c0004f63:	55                   	push   %ebp
c0004f64:	89 e5                	mov    %esp,%ebp
c0004f66:	83 ec 18             	sub    $0x18,%esp
c0004f69:	e8 40 e5 ff ff       	call   c00034ae <get_int_status>
c0004f6e:	85 c0                	test   %eax,%eax
c0004f70:	74 24                	je     c0004f96 <thread_block+0x33>
c0004f72:	c7 44 24 0c a2 65 00 	movl   $0xc00065a2,0xc(%esp)
c0004f79:	c0 
c0004f7a:	c7 44 24 08 57 66 00 	movl   $0xc0006657,0x8(%esp)
c0004f81:	c0 
c0004f82:	c7 44 24 04 42 00 00 	movl   $0x42,0x4(%esp)
c0004f89:	00 
c0004f8a:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004f91:	e8 8a e5 ff ff       	call   c0003520 <panic_spin>
c0004f96:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f99:	8b 40 28             	mov    0x28(%eax),%eax
c0004f9c:	85 c0                	test   %eax,%eax
c0004f9e:	74 2f                	je     c0004fcf <thread_block+0x6c>
c0004fa0:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fa3:	8b 40 28             	mov    0x28(%eax),%eax
c0004fa6:	83 f8 03             	cmp    $0x3,%eax
c0004fa9:	75 24                	jne    c0004fcf <thread_block+0x6c>
c0004fab:	c7 44 24 0c 10 66 00 	movl   $0xc0006610,0xc(%esp)
c0004fb2:	c0 
c0004fb3:	c7 44 24 08 57 66 00 	movl   $0xc0006657,0x8(%esp)
c0004fba:	c0 
c0004fbb:	c7 44 24 04 43 00 00 	movl   $0x43,0x4(%esp)
c0004fc2:	00 
c0004fc3:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c0004fca:	e8 51 e5 ff ff       	call   c0003520 <panic_spin>
c0004fcf:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fd2:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
c0004fd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fdc:	83 c0 38             	add    $0x38,%eax
c0004fdf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004fe3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004fe6:	89 04 24             	mov    %eax,(%esp)
c0004fe9:	e8 ad f8 ff ff       	call   c000489b <lst_push>
c0004fee:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ff1:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
c0004ff8:	e8 d5 e4 ff ff       	call   c00034d2 <int_enable>
c0004ffd:	90                   	nop
c0004ffe:	8b 45 08             	mov    0x8(%ebp),%eax
c0005001:	8b 40 2c             	mov    0x2c(%eax),%eax
c0005004:	83 f8 01             	cmp    $0x1,%eax
c0005007:	74 f5                	je     c0004ffe <thread_block+0x9b>
c0005009:	e8 d8 e4 ff ff       	call   c00034e6 <int_disable>
c000500e:	c9                   	leave  
c000500f:	c3                   	ret    

c0005010 <thread_unblock>:
c0005010:	55                   	push   %ebp
c0005011:	89 e5                	mov    %esp,%ebp
c0005013:	83 ec 18             	sub    $0x18,%esp
c0005016:	e8 93 e4 ff ff       	call   c00034ae <get_int_status>
c000501b:	85 c0                	test   %eax,%eax
c000501d:	74 24                	je     c0005043 <thread_unblock+0x33>
c000501f:	c7 44 24 0c a2 65 00 	movl   $0xc00065a2,0xc(%esp)
c0005026:	c0 
c0005027:	c7 44 24 08 64 66 00 	movl   $0xc0006664,0x8(%esp)
c000502e:	c0 
c000502f:	c7 44 24 04 4d 00 00 	movl   $0x4d,0x4(%esp)
c0005036:	00 
c0005037:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c000503e:	e8 dd e4 ff ff       	call   c0003520 <panic_spin>
c0005043:	8b 45 08             	mov    0x8(%ebp),%eax
c0005046:	8b 40 28             	mov    0x28(%eax),%eax
c0005049:	85 c0                	test   %eax,%eax
c000504b:	74 24                	je     c0005071 <thread_unblock+0x61>
c000504d:	c7 44 24 0c 3c 66 00 	movl   $0xc000663c,0xc(%esp)
c0005054:	c0 
c0005055:	c7 44 24 08 64 66 00 	movl   $0xc0006664,0x8(%esp)
c000505c:	c0 
c000505d:	c7 44 24 04 4e 00 00 	movl   $0x4e,0x4(%esp)
c0005064:	00 
c0005065:	c7 04 24 87 65 00 c0 	movl   $0xc0006587,(%esp)
c000506c:	e8 af e4 ff ff       	call   c0003520 <panic_spin>
c0005071:	8b 45 08             	mov    0x8(%ebp),%eax
c0005074:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c000507b:	8b 45 08             	mov    0x8(%ebp),%eax
c000507e:	83 c0 38             	add    $0x38,%eax
c0005081:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005085:	c7 04 24 80 95 00 c0 	movl   $0xc0009580,(%esp)
c000508c:	e8 fc fa ff ff       	call   c0004b8d <lst_head_insert>
c0005091:	c9                   	leave  
c0005092:	c3                   	ret    

c0005093 <init_console>:
c0005093:	55                   	push   %ebp
c0005094:	89 e5                	mov    %esp,%ebp
c0005096:	83 ec 18             	sub    $0x18,%esp
c0005099:	c7 04 24 60 91 00 c0 	movl   $0xc0009160,(%esp)
c00050a0:	e8 00 fc ff ff       	call   c0004ca5 <init_mutex>
c00050a5:	c9                   	leave  
c00050a6:	c3                   	ret    

c00050a7 <console_put_str>:
c00050a7:	55                   	push   %ebp
c00050a8:	89 e5                	mov    %esp,%ebp
c00050aa:	83 ec 18             	sub    $0x18,%esp
c00050ad:	c7 04 24 60 91 00 c0 	movl   $0xc0009160,(%esp)
c00050b4:	e8 22 fc ff ff       	call   c0004cdb <lock>
c00050b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00050bc:	89 04 24             	mov    %eax,(%esp)
c00050bf:	e8 c1 e3 ff ff       	call   c0003485 <put_str>
c00050c4:	c7 04 24 60 91 00 c0 	movl   $0xc0009160,(%esp)
c00050cb:	e8 1e fc ff ff       	call   c0004cee <unlock>
c00050d0:	c9                   	leave  
c00050d1:	c3                   	ret    

c00050d2 <console_put_char>:
c00050d2:	55                   	push   %ebp
c00050d3:	89 e5                	mov    %esp,%ebp
c00050d5:	83 ec 18             	sub    $0x18,%esp
c00050d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00050db:	88 45 f4             	mov    %al,-0xc(%ebp)
c00050de:	c7 04 24 60 91 00 c0 	movl   $0xc0009160,(%esp)
c00050e5:	e8 f1 fb ff ff       	call   c0004cdb <lock>
c00050ea:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c00050ee:	89 04 24             	mov    %eax,(%esp)
c00050f1:	e8 0a e2 ff ff       	call   c0003300 <put_char>
c00050f6:	c7 04 24 60 91 00 c0 	movl   $0xc0009160,(%esp)
c00050fd:	e8 ec fb ff ff       	call   c0004cee <unlock>
c0005102:	c9                   	leave  
c0005103:	c3                   	ret    

c0005104 <console_put_int>:
c0005104:	55                   	push   %ebp
c0005105:	89 e5                	mov    %esp,%ebp
c0005107:	83 ec 18             	sub    $0x18,%esp
c000510a:	c7 04 24 60 91 00 c0 	movl   $0xc0009160,(%esp)
c0005111:	e8 c5 fb ff ff       	call   c0004cdb <lock>
c0005116:	8b 45 08             	mov    0x8(%ebp),%eax
c0005119:	89 04 24             	mov    %eax,(%esp)
c000511c:	e8 c2 e2 ff ff       	call   c00033e3 <put_int>
c0005121:	c7 04 24 60 91 00 c0 	movl   $0xc0009160,(%esp)
c0005128:	e8 c1 fb ff ff       	call   c0004cee <unlock>
c000512d:	c9                   	leave  
c000512e:	c3                   	ret    

c000512f <read_port>:
c000512f:	55                   	push   %ebp
c0005130:	89 e5                	mov    %esp,%ebp
c0005132:	83 ec 14             	sub    $0x14,%esp
c0005135:	8b 45 08             	mov    0x8(%ebp),%eax
c0005138:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c000513c:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
c0005140:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c0005144:	ec                   	in     (%dx),%al
c0005145:	88 45 ff             	mov    %al,-0x1(%ebp)
c0005148:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c000514c:	c9                   	leave  
c000514d:	c3                   	ret    

c000514e <init_keyboard>:
c000514e:	55                   	push   %ebp
c000514f:	89 e5                	mov    %esp,%ebp
c0005151:	81 ec d8 00 00 00    	sub    $0xd8,%esp
c0005157:	c7 05 a4 9f 00 c0 00 	movl   $0x0,0xc0009fa4
c000515e:	00 00 00 
c0005161:	c7 05 bc 9f 00 c0 00 	movl   $0x0,0xc0009fbc
c0005168:	00 00 00 
c000516b:	c7 05 b8 9f 00 c0 00 	movl   $0x0,0xc0009fb8
c0005172:	00 00 00 
c0005175:	c7 05 f4 9e 00 c0 00 	movl   $0x0,0xc0009ef4
c000517c:	00 00 00 
c000517f:	c7 05 f0 9e 00 c0 00 	movl   $0x0,0xc0009ef0
c0005186:	00 00 00 
c0005189:	8d 85 38 ff ff ff    	lea    -0xc8(%ebp),%eax
c000518f:	c7 44 24 04 00 9f 00 	movl   $0xc0009f00,0x4(%esp)
c0005196:	c0 
c0005197:	89 04 24             	mov    %eax,(%esp)
c000519a:	e8 28 04 00 00       	call   c00055c7 <init_cq>
c000519f:	83 ec 04             	sub    $0x4,%esp
c00051a2:	c7 44 24 08 00 9f 00 	movl   $0xc0009f00,0x8(%esp)
c00051a9:	c0 
c00051aa:	c7 44 24 04 bf 56 00 	movl   $0xc00056bf,0x4(%esp)
c00051b1:	c0 
c00051b2:	c7 04 24 a8 9f 00 c0 	movl   $0xc0009fa8,(%esp)
c00051b9:	e8 3c 03 00 00       	call   c00054fa <init_condition_var>
c00051be:	c7 44 24 08 00 9f 00 	movl   $0xc0009f00,0x8(%esp)
c00051c5:	c0 
c00051c6:	c7 44 24 04 0a 57 00 	movl   $0xc000570a,0x4(%esp)
c00051cd:	c0 
c00051ce:	c7 04 24 e0 9e 00 c0 	movl   $0xc0009ee0,(%esp)
c00051d5:	e8 20 03 00 00       	call   c00054fa <init_condition_var>
c00051da:	c7 04 24 20 91 00 c0 	movl   $0xc0009120,(%esp)
c00051e1:	e8 bf fa ff ff       	call   c0004ca5 <init_mutex>
c00051e6:	c7 04 24 34 91 00 c0 	movl   $0xc0009134,(%esp)
c00051ed:	e8 b3 fa ff ff       	call   c0004ca5 <init_mutex>
c00051f2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00051f9:	00 
c00051fa:	c7 44 24 08 ab 54 00 	movl   $0xc00054ab,0x8(%esp)
c0005201:	c0 
c0005202:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c0005209:	00 
c000520a:	c7 04 24 73 66 00 c0 	movl   $0xc0006673,(%esp)
c0005211:	e8 26 f6 ff ff       	call   c000483c <thread_start>
c0005216:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005219:	c9                   	leave  
c000521a:	c3                   	ret    

c000521b <keyboard_int_handle>:
c000521b:	55                   	push   %ebp
c000521c:	89 e5                	mov    %esp,%ebp
c000521e:	83 ec 28             	sub    $0x28,%esp
c0005221:	c7 04 24 60 00 00 00 	movl   $0x60,(%esp)
c0005228:	e8 02 ff ff ff       	call   c000512f <read_port>
c000522d:	0f b6 c0             	movzbl %al,%eax
c0005230:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c0005234:	66 81 7d f6 e0 00    	cmpw   $0xe0,-0xa(%ebp)
c000523a:	75 0f                	jne    c000524b <keyboard_int_handle+0x30>
c000523c:	c7 05 a4 9f 00 c0 01 	movl   $0x1,0xc0009fa4
c0005243:	00 00 00 
c0005246:	e9 0c 02 00 00       	jmp    c0005457 <keyboard_int_handle+0x23c>
c000524b:	a1 a4 9f 00 c0       	mov    0xc0009fa4,%eax
c0005250:	85 c0                	test   %eax,%eax
c0005252:	74 06                	je     c000525a <keyboard_int_handle+0x3f>
c0005254:	66 c7 45 f6 01 00    	movw   $0x1,-0xa(%ebp)
c000525a:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000525e:	25 80 00 00 00       	and    $0x80,%eax
c0005263:	85 c0                	test   %eax,%eax
c0005265:	0f 95 c0             	setne  %al
c0005268:	0f b6 c0             	movzbl %al,%eax
c000526b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000526e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0005272:	74 5d                	je     c00052d1 <keyboard_int_handle+0xb6>
c0005274:	66 83 45 f6 80       	addw   $0xff80,-0xa(%ebp)
c0005279:	66 83 7d f6 38       	cmpw   $0x38,-0xa(%ebp)
c000527e:	74 08                	je     c0005288 <keyboard_int_handle+0x6d>
c0005280:	66 81 7d f6 38 e0    	cmpw   $0xe038,-0xa(%ebp)
c0005286:	75 0c                	jne    c0005294 <keyboard_int_handle+0x79>
c0005288:	c7 05 f4 9e 00 c0 00 	movl   $0x0,0xc0009ef4
c000528f:	00 00 00 
c0005292:	eb 38                	jmp    c00052cc <keyboard_int_handle+0xb1>
c0005294:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c0005299:	74 07                	je     c00052a2 <keyboard_int_handle+0x87>
c000529b:	66 83 7d f6 36       	cmpw   $0x36,-0xa(%ebp)
c00052a0:	75 0c                	jne    c00052ae <keyboard_int_handle+0x93>
c00052a2:	c7 05 bc 9f 00 c0 00 	movl   $0x0,0xc0009fbc
c00052a9:	00 00 00 
c00052ac:	eb 1e                	jmp    c00052cc <keyboard_int_handle+0xb1>
c00052ae:	66 83 7d f6 1d       	cmpw   $0x1d,-0xa(%ebp)
c00052b3:	74 08                	je     c00052bd <keyboard_int_handle+0xa2>
c00052b5:	66 81 7d f6 1d e0    	cmpw   $0xe01d,-0xa(%ebp)
c00052bb:	75 0f                	jne    c00052cc <keyboard_int_handle+0xb1>
c00052bd:	c7 05 b8 9f 00 c0 00 	movl   $0x0,0xc0009fb8
c00052c4:	00 00 00 
c00052c7:	e9 8b 01 00 00       	jmp    c0005457 <keyboard_int_handle+0x23c>
c00052cc:	e9 86 01 00 00       	jmp    c0005457 <keyboard_int_handle+0x23c>
c00052d1:	66 83 7d f6 38       	cmpw   $0x38,-0xa(%ebp)
c00052d6:	74 08                	je     c00052e0 <keyboard_int_handle+0xc5>
c00052d8:	66 81 7d f6 38 e0    	cmpw   $0xe038,-0xa(%ebp)
c00052de:	75 0f                	jne    c00052ef <keyboard_int_handle+0xd4>
c00052e0:	c7 05 f4 9e 00 c0 01 	movl   $0x1,0xc0009ef4
c00052e7:	00 00 00 
c00052ea:	e9 68 01 00 00       	jmp    c0005457 <keyboard_int_handle+0x23c>
c00052ef:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c00052f4:	74 07                	je     c00052fd <keyboard_int_handle+0xe2>
c00052f6:	66 83 7d f6 36       	cmpw   $0x36,-0xa(%ebp)
c00052fb:	75 0f                	jne    c000530c <keyboard_int_handle+0xf1>
c00052fd:	c7 05 bc 9f 00 c0 01 	movl   $0x1,0xc0009fbc
c0005304:	00 00 00 
c0005307:	e9 4b 01 00 00       	jmp    c0005457 <keyboard_int_handle+0x23c>
c000530c:	66 83 7d f6 1d       	cmpw   $0x1d,-0xa(%ebp)
c0005311:	74 08                	je     c000531b <keyboard_int_handle+0x100>
c0005313:	66 81 7d f6 1d e0    	cmpw   $0xe01d,-0xa(%ebp)
c0005319:	75 0f                	jne    c000532a <keyboard_int_handle+0x10f>
c000531b:	c7 05 b8 9f 00 c0 01 	movl   $0x1,0xc0009fb8
c0005322:	00 00 00 
c0005325:	e9 2d 01 00 00       	jmp    c0005457 <keyboard_int_handle+0x23c>
c000532a:	66 83 7d f6 3a       	cmpw   $0x3a,-0xa(%ebp)
c000532f:	75 17                	jne    c0005348 <keyboard_int_handle+0x12d>
c0005331:	a1 f0 9e 00 c0       	mov    0xc0009ef0,%eax
c0005336:	85 c0                	test   %eax,%eax
c0005338:	0f 94 c0             	sete   %al
c000533b:	0f b6 c0             	movzbl %al,%eax
c000533e:	a3 f0 9e 00 c0       	mov    %eax,0xc0009ef0
c0005343:	e9 0f 01 00 00       	jmp    c0005457 <keyboard_int_handle+0x23c>
c0005348:	66 83 7d f6 0f       	cmpw   $0xf,-0xa(%ebp)
c000534d:	76 07                	jbe    c0005356 <keyboard_int_handle+0x13b>
c000534f:	66 83 7d f6 19       	cmpw   $0x19,-0xa(%ebp)
c0005354:	76 1c                	jbe    c0005372 <keyboard_int_handle+0x157>
c0005356:	66 83 7d f6 1c       	cmpw   $0x1c,-0xa(%ebp)
c000535b:	76 07                	jbe    c0005364 <keyboard_int_handle+0x149>
c000535d:	66 83 7d f6 25       	cmpw   $0x25,-0xa(%ebp)
c0005362:	76 0e                	jbe    c0005372 <keyboard_int_handle+0x157>
c0005364:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c0005369:	76 0e                	jbe    c0005379 <keyboard_int_handle+0x15e>
c000536b:	66 83 7d f6 31       	cmpw   $0x31,-0xa(%ebp)
c0005370:	77 07                	ja     c0005379 <keyboard_int_handle+0x15e>
c0005372:	b8 01 00 00 00       	mov    $0x1,%eax
c0005377:	eb 05                	jmp    c000537e <keyboard_int_handle+0x163>
c0005379:	b8 00 00 00 00       	mov    $0x0,%eax
c000537e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005381:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0005385:	0f 84 93 00 00 00    	je     c000541e <keyboard_int_handle+0x203>
c000538b:	a1 bc 9f 00 c0       	mov    0xc0009fbc,%eax
c0005390:	85 c0                	test   %eax,%eax
c0005392:	74 22                	je     c00053b6 <keyboard_int_handle+0x19b>
c0005394:	a1 f0 9e 00 c0       	mov    0xc0009ef0,%eax
c0005399:	85 c0                	test   %eax,%eax
c000539b:	75 19                	jne    c00053b6 <keyboard_int_handle+0x19b>
c000539d:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00053a1:	0f b6 84 00 a1 90 00 	movzbl -0x3fff6f5f(%eax,%eax,1),%eax
c00053a8:	c0 
c00053a9:	0f be c0             	movsbl %al,%eax
c00053ac:	89 04 24             	mov    %eax,(%esp)
c00053af:	e8 a5 00 00 00       	call   c0005459 <give_char>
c00053b4:	eb 66                	jmp    c000541c <keyboard_int_handle+0x201>
c00053b6:	a1 bc 9f 00 c0       	mov    0xc0009fbc,%eax
c00053bb:	85 c0                	test   %eax,%eax
c00053bd:	74 22                	je     c00053e1 <keyboard_int_handle+0x1c6>
c00053bf:	a1 f0 9e 00 c0       	mov    0xc0009ef0,%eax
c00053c4:	85 c0                	test   %eax,%eax
c00053c6:	74 19                	je     c00053e1 <keyboard_int_handle+0x1c6>
c00053c8:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00053cc:	0f b6 84 00 a0 90 00 	movzbl -0x3fff6f60(%eax,%eax,1),%eax
c00053d3:	c0 
c00053d4:	0f be c0             	movsbl %al,%eax
c00053d7:	89 04 24             	mov    %eax,(%esp)
c00053da:	e8 7a 00 00 00       	call   c0005459 <give_char>
c00053df:	eb 3b                	jmp    c000541c <keyboard_int_handle+0x201>
c00053e1:	a1 f0 9e 00 c0       	mov    0xc0009ef0,%eax
c00053e6:	85 c0                	test   %eax,%eax
c00053e8:	74 19                	je     c0005403 <keyboard_int_handle+0x1e8>
c00053ea:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00053ee:	0f b6 84 00 a1 90 00 	movzbl -0x3fff6f5f(%eax,%eax,1),%eax
c00053f5:	c0 
c00053f6:	0f be c0             	movsbl %al,%eax
c00053f9:	89 04 24             	mov    %eax,(%esp)
c00053fc:	e8 58 00 00 00       	call   c0005459 <give_char>
c0005401:	eb 54                	jmp    c0005457 <keyboard_int_handle+0x23c>
c0005403:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005407:	0f b6 84 00 a0 90 00 	movzbl -0x3fff6f60(%eax,%eax,1),%eax
c000540e:	c0 
c000540f:	0f be c0             	movsbl %al,%eax
c0005412:	89 04 24             	mov    %eax,(%esp)
c0005415:	e8 3f 00 00 00       	call   c0005459 <give_char>
c000541a:	eb 3b                	jmp    c0005457 <keyboard_int_handle+0x23c>
c000541c:	eb 39                	jmp    c0005457 <keyboard_int_handle+0x23c>
c000541e:	a1 bc 9f 00 c0       	mov    0xc0009fbc,%eax
c0005423:	85 c0                	test   %eax,%eax
c0005425:	74 19                	je     c0005440 <keyboard_int_handle+0x225>
c0005427:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000542b:	0f b6 84 00 a1 90 00 	movzbl -0x3fff6f5f(%eax,%eax,1),%eax
c0005432:	c0 
c0005433:	0f be c0             	movsbl %al,%eax
c0005436:	89 04 24             	mov    %eax,(%esp)
c0005439:	e8 1b 00 00 00       	call   c0005459 <give_char>
c000543e:	eb 17                	jmp    c0005457 <keyboard_int_handle+0x23c>
c0005440:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005444:	0f b6 84 00 a0 90 00 	movzbl -0x3fff6f60(%eax,%eax,1),%eax
c000544b:	c0 
c000544c:	0f be c0             	movsbl %al,%eax
c000544f:	89 04 24             	mov    %eax,(%esp)
c0005452:	e8 02 00 00 00       	call   c0005459 <give_char>
c0005457:	c9                   	leave  
c0005458:	c3                   	ret    

c0005459 <give_char>:
c0005459:	55                   	push   %ebp
c000545a:	89 e5                	mov    %esp,%ebp
c000545c:	83 ec 18             	sub    $0x18,%esp
c000545f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005462:	88 45 f4             	mov    %al,-0xc(%ebp)
c0005465:	c7 04 24 34 91 00 c0 	movl   $0xc0009134,(%esp)
c000546c:	e8 6a f8 ff ff       	call   c0004cdb <lock>
c0005471:	c7 04 24 a8 9f 00 c0 	movl   $0xc0009fa8,(%esp)
c0005478:	e8 a4 00 00 00       	call   c0005521 <conditional_block>
c000547d:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c0005481:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005485:	c7 04 24 00 9f 00 c0 	movl   $0xc0009f00,(%esp)
c000548c:	e8 72 01 00 00       	call   c0005603 <cq_push>
c0005491:	c7 04 24 e0 9e 00 c0 	movl   $0xc0009ee0,(%esp)
c0005498:	e8 de 00 00 00       	call   c000557b <conditional_notify>
c000549d:	c7 04 24 34 91 00 c0 	movl   $0xc0009134,(%esp)
c00054a4:	e8 45 f8 ff ff       	call   c0004cee <unlock>
c00054a9:	c9                   	leave  
c00054aa:	c3                   	ret    

c00054ab <take_char>:
c00054ab:	55                   	push   %ebp
c00054ac:	89 e5                	mov    %esp,%ebp
c00054ae:	83 ec 18             	sub    $0x18,%esp
c00054b1:	c7 04 24 20 91 00 c0 	movl   $0xc0009120,(%esp)
c00054b8:	e8 1e f8 ff ff       	call   c0004cdb <lock>
c00054bd:	c7 04 24 e0 9e 00 c0 	movl   $0xc0009ee0,(%esp)
c00054c4:	e8 58 00 00 00       	call   c0005521 <conditional_block>
c00054c9:	c7 04 24 00 9f 00 c0 	movl   $0xc0009f00,(%esp)
c00054d0:	e8 8d 01 00 00       	call   c0005662 <cq_pop>
c00054d5:	0f be c0             	movsbl %al,%eax
c00054d8:	89 04 24             	mov    %eax,(%esp)
c00054db:	e8 f2 fb ff ff       	call   c00050d2 <console_put_char>
c00054e0:	c7 04 24 a8 9f 00 c0 	movl   $0xc0009fa8,(%esp)
c00054e7:	e8 8f 00 00 00       	call   c000557b <conditional_notify>
c00054ec:	c7 04 24 20 91 00 c0 	movl   $0xc0009120,(%esp)
c00054f3:	e8 f6 f7 ff ff       	call   c0004cee <unlock>
c00054f8:	eb b7                	jmp    c00054b1 <take_char+0x6>

c00054fa <init_condition_var>:
c00054fa:	55                   	push   %ebp
c00054fb:	89 e5                	mov    %esp,%ebp
c00054fd:	83 ec 18             	sub    $0x18,%esp
c0005500:	8b 45 08             	mov    0x8(%ebp),%eax
c0005503:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005506:	89 10                	mov    %edx,(%eax)
c0005508:	8b 45 08             	mov    0x8(%ebp),%eax
c000550b:	8b 55 10             	mov    0x10(%ebp),%edx
c000550e:	89 50 04             	mov    %edx,0x4(%eax)
c0005511:	8b 45 08             	mov    0x8(%ebp),%eax
c0005514:	83 c0 08             	add    $0x8,%eax
c0005517:	89 04 24             	mov    %eax,(%esp)
c000551a:	e8 64 f3 ff ff       	call   c0004883 <init_list>
c000551f:	c9                   	leave  
c0005520:	c3                   	ret    

c0005521 <conditional_block>:
c0005521:	55                   	push   %ebp
c0005522:	89 e5                	mov    %esp,%ebp
c0005524:	53                   	push   %ebx
c0005525:	83 ec 24             	sub    $0x24,%esp
c0005528:	8b 45 08             	mov    0x8(%ebp),%eax
c000552b:	8b 00                	mov    (%eax),%eax
c000552d:	8b 55 08             	mov    0x8(%ebp),%edx
c0005530:	8b 52 04             	mov    0x4(%edx),%edx
c0005533:	89 14 24             	mov    %edx,(%esp)
c0005536:	ff d0                	call   *%eax
c0005538:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000553b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c000553f:	75 02                	jne    c0005543 <conditional_block+0x22>
c0005541:	eb 32                	jmp    c0005575 <conditional_block+0x54>
c0005543:	e8 9e df ff ff       	call   c00034e6 <int_disable>
c0005548:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000554b:	e8 e1 ee ff ff       	call   c0004431 <get_running>
c0005550:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005553:	8b 45 08             	mov    0x8(%ebp),%eax
c0005556:	8d 58 08             	lea    0x8(%eax),%ebx
c0005559:	e8 d3 ee ff ff       	call   c0004431 <get_running>
c000555e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0005562:	89 04 24             	mov    %eax,(%esp)
c0005565:	e8 f9 f9 ff ff       	call   c0004f63 <thread_block>
c000556a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000556d:	89 04 24             	mov    %eax,(%esp)
c0005570:	e8 85 df ff ff       	call   c00034fa <set_int_status>
c0005575:	83 c4 24             	add    $0x24,%esp
c0005578:	5b                   	pop    %ebx
c0005579:	5d                   	pop    %ebp
c000557a:	c3                   	ret    

c000557b <conditional_notify>:
c000557b:	55                   	push   %ebp
c000557c:	89 e5                	mov    %esp,%ebp
c000557e:	83 ec 28             	sub    $0x28,%esp
c0005581:	e8 60 df ff ff       	call   c00034e6 <int_disable>
c0005586:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005589:	8b 45 08             	mov    0x8(%ebp),%eax
c000558c:	83 c0 08             	add    $0x8,%eax
c000558f:	89 04 24             	mov    %eax,(%esp)
c0005592:	e8 da f6 ff ff       	call   c0004c71 <lst_empty>
c0005597:	85 c0                	test   %eax,%eax
c0005599:	75 1f                	jne    c00055ba <conditional_notify+0x3f>
c000559b:	8b 45 08             	mov    0x8(%ebp),%eax
c000559e:	83 c0 08             	add    $0x8,%eax
c00055a1:	89 04 24             	mov    %eax,(%esp)
c00055a4:	e8 0b f4 ff ff       	call   c00049b4 <lst_pop>
c00055a9:	83 e8 38             	sub    $0x38,%eax
c00055ac:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00055af:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00055b2:	89 04 24             	mov    %eax,(%esp)
c00055b5:	e8 56 fa ff ff       	call   c0005010 <thread_unblock>
c00055ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00055bd:	89 04 24             	mov    %eax,(%esp)
c00055c0:	e8 35 df ff ff       	call   c00034fa <set_int_status>
c00055c5:	c9                   	leave  
c00055c6:	c3                   	ret    

c00055c7 <init_cq>:
c00055c7:	55                   	push   %ebp
c00055c8:	89 e5                	mov    %esp,%ebp
c00055ca:	83 ec 18             	sub    $0x18,%esp
c00055cd:	8b 45 0c             	mov    0xc(%ebp),%eax
c00055d0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00055d7:	00 
c00055d8:	c7 44 24 04 a0 00 00 	movl   $0xa0,0x4(%esp)
c00055df:	00 
c00055e0:	89 04 24             	mov    %eax,(%esp)
c00055e3:	e8 39 e0 ff ff       	call   c0003621 <memset_8>
c00055e8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00055eb:	c6 80 a0 00 00 00 00 	movb   $0x0,0xa0(%eax)
c00055f2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00055f5:	c6 80 a1 00 00 00 00 	movb   $0x0,0xa1(%eax)
c00055fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00055ff:	c9                   	leave  
c0005600:	c2 04 00             	ret    $0x4

c0005603 <cq_push>:
c0005603:	55                   	push   %ebp
c0005604:	89 e5                	mov    %esp,%ebp
c0005606:	83 ec 04             	sub    $0x4,%esp
c0005609:	8b 45 0c             	mov    0xc(%ebp),%eax
c000560c:	88 45 fc             	mov    %al,-0x4(%ebp)
c000560f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005612:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c0005619:	0f b6 c0             	movzbl %al,%eax
c000561c:	8b 55 08             	mov    0x8(%ebp),%edx
c000561f:	0f b6 4d fc          	movzbl -0x4(%ebp),%ecx
c0005623:	88 0c 02             	mov    %cl,(%edx,%eax,1)
c0005626:	8b 45 08             	mov    0x8(%ebp),%eax
c0005629:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c0005630:	0f b6 c0             	movzbl %al,%eax
c0005633:	8d 48 01             	lea    0x1(%eax),%ecx
c0005636:	ba 67 66 66 66       	mov    $0x66666667,%edx
c000563b:	89 c8                	mov    %ecx,%eax
c000563d:	f7 ea                	imul   %edx
c000563f:	c1 fa 06             	sar    $0x6,%edx
c0005642:	89 c8                	mov    %ecx,%eax
c0005644:	c1 f8 1f             	sar    $0x1f,%eax
c0005647:	29 c2                	sub    %eax,%edx
c0005649:	89 d0                	mov    %edx,%eax
c000564b:	c1 e0 02             	shl    $0x2,%eax
c000564e:	01 d0                	add    %edx,%eax
c0005650:	c1 e0 05             	shl    $0x5,%eax
c0005653:	29 c1                	sub    %eax,%ecx
c0005655:	89 ca                	mov    %ecx,%edx
c0005657:	8b 45 08             	mov    0x8(%ebp),%eax
c000565a:	88 90 a1 00 00 00    	mov    %dl,0xa1(%eax)
c0005660:	c9                   	leave  
c0005661:	c3                   	ret    

c0005662 <cq_pop>:
c0005662:	55                   	push   %ebp
c0005663:	89 e5                	mov    %esp,%ebp
c0005665:	83 ec 10             	sub    $0x10,%esp
c0005668:	8b 45 08             	mov    0x8(%ebp),%eax
c000566b:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005672:	0f b6 c0             	movzbl %al,%eax
c0005675:	8b 55 08             	mov    0x8(%ebp),%edx
c0005678:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c000567c:	88 45 ff             	mov    %al,-0x1(%ebp)
c000567f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005682:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005689:	0f b6 c0             	movzbl %al,%eax
c000568c:	8d 48 01             	lea    0x1(%eax),%ecx
c000568f:	ba 67 66 66 66       	mov    $0x66666667,%edx
c0005694:	89 c8                	mov    %ecx,%eax
c0005696:	f7 ea                	imul   %edx
c0005698:	c1 fa 06             	sar    $0x6,%edx
c000569b:	89 c8                	mov    %ecx,%eax
c000569d:	c1 f8 1f             	sar    $0x1f,%eax
c00056a0:	29 c2                	sub    %eax,%edx
c00056a2:	89 d0                	mov    %edx,%eax
c00056a4:	c1 e0 02             	shl    $0x2,%eax
c00056a7:	01 d0                	add    %edx,%eax
c00056a9:	c1 e0 05             	shl    $0x5,%eax
c00056ac:	29 c1                	sub    %eax,%ecx
c00056ae:	89 ca                	mov    %ecx,%edx
c00056b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00056b3:	88 90 a0 00 00 00    	mov    %dl,0xa0(%eax)
c00056b9:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c00056bd:	c9                   	leave  
c00056be:	c3                   	ret    

c00056bf <cq_full>:
c00056bf:	55                   	push   %ebp
c00056c0:	89 e5                	mov    %esp,%ebp
c00056c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00056c5:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c00056cc:	0f b6 c0             	movzbl %al,%eax
c00056cf:	8d 48 01             	lea    0x1(%eax),%ecx
c00056d2:	ba 67 66 66 66       	mov    $0x66666667,%edx
c00056d7:	89 c8                	mov    %ecx,%eax
c00056d9:	f7 ea                	imul   %edx
c00056db:	c1 fa 06             	sar    $0x6,%edx
c00056de:	89 c8                	mov    %ecx,%eax
c00056e0:	c1 f8 1f             	sar    $0x1f,%eax
c00056e3:	29 c2                	sub    %eax,%edx
c00056e5:	89 d0                	mov    %edx,%eax
c00056e7:	c1 e0 02             	shl    $0x2,%eax
c00056ea:	01 d0                	add    %edx,%eax
c00056ec:	c1 e0 05             	shl    $0x5,%eax
c00056ef:	29 c1                	sub    %eax,%ecx
c00056f1:	89 ca                	mov    %ecx,%edx
c00056f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00056f6:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c00056fd:	0f b6 c0             	movzbl %al,%eax
c0005700:	39 c2                	cmp    %eax,%edx
c0005702:	0f 94 c0             	sete   %al
c0005705:	0f b6 c0             	movzbl %al,%eax
c0005708:	5d                   	pop    %ebp
c0005709:	c3                   	ret    

c000570a <cq_empty>:
c000570a:	55                   	push   %ebp
c000570b:	89 e5                	mov    %esp,%ebp
c000570d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005710:	0f b6 90 a1 00 00 00 	movzbl 0xa1(%eax),%edx
c0005717:	8b 45 08             	mov    0x8(%ebp),%eax
c000571a:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005721:	38 c2                	cmp    %al,%dl
c0005723:	0f 94 c0             	sete   %al
c0005726:	0f b6 c0             	movzbl %al,%eax
c0005729:	5d                   	pop    %ebp
c000572a:	c3                   	ret    

c000572b <exchange_esp0>:
c000572b:	55                   	push   %ebp
c000572c:	89 e5                	mov    %esp,%ebp
c000572e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005731:	05 00 10 00 00       	add    $0x1000,%eax
c0005736:	a3 c4 9f 00 c0       	mov    %eax,0xc0009fc4
c000573b:	5d                   	pop    %ebp
c000573c:	c3                   	ret    

c000573d <init_proc_data>:
c000573d:	55                   	push   %ebp
c000573e:	89 e5                	mov    %esp,%ebp
c0005740:	53                   	push   %ebx
c0005741:	83 ec 34             	sub    $0x34,%esp
c0005744:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
c000574b:	e8 59 01 00 00       	call   c00058a9 <lgdt>
c0005750:	c7 45 f4 03 09 00 c0 	movl   $0xc0000903,-0xc(%ebp)
c0005757:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000575a:	8d 58 20             	lea    0x20(%eax),%ebx
c000575d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005760:	c7 44 24 10 f2 00 00 	movl   $0xf2,0x10(%esp)
c0005767:	00 
c0005768:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
c000576f:	00 
c0005770:	c7 44 24 08 ff ff 0f 	movl   $0xfffff,0x8(%esp)
c0005777:	00 
c0005778:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c000577f:	00 
c0005780:	89 04 24             	mov    %eax,(%esp)
c0005783:	e8 c2 00 00 00       	call   c000584a <make_seg_des>
c0005788:	83 ec 04             	sub    $0x4,%esp
c000578b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c000578e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005791:	89 03                	mov    %eax,(%ebx)
c0005793:	89 53 04             	mov    %edx,0x4(%ebx)
c0005796:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005799:	8d 58 28             	lea    0x28(%eax),%ebx
c000579c:	8d 45 e0             	lea    -0x20(%ebp),%eax
c000579f:	c7 44 24 10 f8 00 00 	movl   $0xf8,0x10(%esp)
c00057a6:	00 
c00057a7:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
c00057ae:	00 
c00057af:	c7 44 24 08 ff ff 0f 	movl   $0xfffff,0x8(%esp)
c00057b6:	00 
c00057b7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00057be:	00 
c00057bf:	89 04 24             	mov    %eax,(%esp)
c00057c2:	e8 83 00 00 00       	call   c000584a <make_seg_des>
c00057c7:	83 ec 04             	sub    $0x4,%esp
c00057ca:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00057cd:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00057d0:	89 03                	mov    %eax,(%ebx)
c00057d2:	89 53 04             	mov    %edx,0x4(%ebx)
c00057d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00057d8:	8d 58 30             	lea    0x30(%eax),%ebx
c00057db:	ba c0 9f 00 c0       	mov    $0xc0009fc0,%edx
c00057e0:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00057e3:	c7 44 24 10 89 00 00 	movl   $0x89,0x10(%esp)
c00057ea:	00 
c00057eb:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00057f2:	00 
c00057f3:	c7 44 24 08 63 00 00 	movl   $0x63,0x8(%esp)
c00057fa:	00 
c00057fb:	89 54 24 04          	mov    %edx,0x4(%esp)
c00057ff:	89 04 24             	mov    %eax,(%esp)
c0005802:	e8 43 00 00 00       	call   c000584a <make_seg_des>
c0005807:	83 ec 04             	sub    $0x4,%esp
c000580a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c000580d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005810:	89 03                	mov    %eax,(%ebx)
c0005812:	89 53 04             	mov    %edx,0x4(%ebx)
c0005815:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c000581c:	00 
c000581d:	c7 44 24 04 64 00 00 	movl   $0x64,0x4(%esp)
c0005824:	00 
c0005825:	c7 04 24 c0 9f 00 c0 	movl   $0xc0009fc0,(%esp)
c000582c:	e8 f0 dd ff ff       	call   c0003621 <memset_8>
c0005831:	c7 05 c8 9f 00 c0 10 	movl   $0x10,0xc0009fc8
c0005838:	00 00 00 
c000583b:	66 c7 45 f2 30 00    	movw   $0x30,-0xe(%ebp)
c0005841:	0f 00 5d f2          	ltr    -0xe(%ebp)
c0005845:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0005848:	c9                   	leave  
c0005849:	c3                   	ret    

c000584a <make_seg_des>:
c000584a:	55                   	push   %ebp
c000584b:	89 e5                	mov    %esp,%ebp
c000584d:	83 ec 18             	sub    $0x18,%esp
c0005850:	8b 55 14             	mov    0x14(%ebp),%edx
c0005853:	8b 45 18             	mov    0x18(%ebp),%eax
c0005856:	88 55 ec             	mov    %dl,-0x14(%ebp)
c0005859:	88 45 e8             	mov    %al,-0x18(%ebp)
c000585c:	8b 45 0c             	mov    0xc(%ebp),%eax
c000585f:	c1 e8 18             	shr    $0x18,%eax
c0005862:	88 45 ff             	mov    %al,-0x1(%ebp)
c0005865:	8b 45 10             	mov    0x10(%ebp),%eax
c0005868:	c1 e8 10             	shr    $0x10,%eax
c000586b:	89 c2                	mov    %eax,%edx
c000586d:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c0005871:	01 d0                	add    %edx,%eax
c0005873:	88 45 fe             	mov    %al,-0x2(%ebp)
c0005876:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
c000587a:	88 45 fd             	mov    %al,-0x3(%ebp)
c000587d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005880:	c1 e8 10             	shr    $0x10,%eax
c0005883:	88 45 fc             	mov    %al,-0x4(%ebp)
c0005886:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005889:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
c000588d:	8b 45 10             	mov    0x10(%ebp),%eax
c0005890:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
c0005894:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0005897:	8b 45 f8             	mov    -0x8(%ebp),%eax
c000589a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c000589d:	89 01                	mov    %eax,(%ecx)
c000589f:	89 51 04             	mov    %edx,0x4(%ecx)
c00058a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00058a5:	c9                   	leave  
c00058a6:	c2 04 00             	ret    $0x4

c00058a9 <lgdt>:
c00058a9:	55                   	push   %ebp
c00058aa:	89 e5                	mov    %esp,%ebp
c00058ac:	53                   	push   %ebx
c00058ad:	83 ec 18             	sub    $0x18,%esp
c00058b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00058b3:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
c00058b7:	c7 45 f0 03 09 00 c0 	movl   $0xc0000903,-0x10(%ebp)
c00058be:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00058c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00058c8:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00058cb:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c00058cf:	c1 e0 10             	shl    $0x10,%eax
c00058d2:	89 c1                	mov    %eax,%ecx
c00058d4:	89 d3                	mov    %edx,%ebx
c00058d6:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
c00058da:	c1 e0 03             	shl    $0x3,%eax
c00058dd:	99                   	cltd   
c00058de:	01 c8                	add    %ecx,%eax
c00058e0:	11 da                	adc    %ebx,%edx
c00058e2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00058e5:	89 55 f4             	mov    %edx,-0xc(%ebp)
c00058e8:	0f 01 55 f0          	lgdtl  -0x10(%ebp)
c00058ec:	83 c4 18             	add    $0x18,%esp
c00058ef:	5b                   	pop    %ebx
c00058f0:	5d                   	pop    %ebp
c00058f1:	c3                   	ret    

c00058f2 <proc_start>:
c00058f2:	55                   	push   %ebp
c00058f3:	89 e5                	mov    %esp,%ebp
c00058f5:	83 ec 28             	sub    $0x28,%esp
c00058f8:	8b 45 14             	mov    0x14(%ebp),%eax
c00058fb:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00058ff:	8b 45 10             	mov    0x10(%ebp),%eax
c0005902:	89 44 24 08          	mov    %eax,0x8(%esp)
c0005906:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005909:	89 44 24 04          	mov    %eax,0x4(%esp)
c000590d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005910:	89 04 24             	mov    %eax,(%esp)
c0005913:	e8 ee ec ff ff       	call   c0004606 <create_thread>
c0005918:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000591b:	8b 45 14             	mov    0x14(%ebp),%eax
c000591e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0005922:	8b 45 10             	mov    0x10(%ebp),%eax
c0005925:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005929:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000592c:	89 04 24             	mov    %eax,(%esp)
c000592f:	e8 0d 00 00 00       	call   c0005941 <init_proc>
c0005934:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005937:	89 04 24             	mov    %eax,(%esp)
c000593a:	e8 39 01 00 00       	call   c0005a78 <create_proc_page>
c000593f:	c9                   	leave  
c0005940:	c3                   	ret    

c0005941 <init_proc>:
c0005941:	55                   	push   %ebp
c0005942:	89 e5                	mov    %esp,%ebp
c0005944:	83 ec 28             	sub    $0x28,%esp
c0005947:	8b 45 08             	mov    0x8(%ebp),%eax
c000594a:	05 98 0f 00 00       	add    $0xf98,%eax
c000594f:	89 c2                	mov    %eax,%edx
c0005951:	8b 45 08             	mov    0x8(%ebp),%eax
c0005954:	89 10                	mov    %edx,(%eax)
c0005956:	8b 45 08             	mov    0x8(%ebp),%eax
c0005959:	8b 00                	mov    (%eax),%eax
c000595b:	83 c0 04             	add    $0x4,%eax
c000595e:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005965:	00 
c0005966:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c000596d:	00 
c000596e:	89 04 24             	mov    %eax,(%esp)
c0005971:	e8 0d dd ff ff       	call   c0003683 <memset_32>
c0005976:	8b 45 08             	mov    0x8(%ebp),%eax
c0005979:	8b 00                	mov    (%eax),%eax
c000597b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000597e:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005985:	00 
c0005986:	c7 44 24 04 68 00 00 	movl   $0x68,0x4(%esp)
c000598d:	00 
c000598e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005991:	89 04 24             	mov    %eax,(%esp)
c0005994:	e8 88 dc ff ff       	call   c0003621 <memset_8>
c0005999:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000599c:	c7 40 24 23 00 00 00 	movl   $0x23,0x24(%eax)
c00059a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059a6:	8b 50 24             	mov    0x24(%eax),%edx
c00059a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059ac:	89 50 20             	mov    %edx,0x20(%eax)
c00059af:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059b2:	8b 50 20             	mov    0x20(%eax),%edx
c00059b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059b8:	89 50 28             	mov    %edx,0x28(%eax)
c00059bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059be:	c7 40 10 00 5b 00 c0 	movl   $0xc0005b00,0x10(%eax)
c00059c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059c8:	8b 55 10             	mov    0x10(%ebp),%edx
c00059cb:	89 50 64             	mov    %edx,0x64(%eax)
c00059ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059d1:	c7 40 54 2b 00 00 00 	movl   $0x2b,0x54(%eax)
c00059d8:	8b 55 0c             	mov    0xc(%ebp),%edx
c00059db:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059de:	89 50 50             	mov    %edx,0x50(%eax)
c00059e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059e4:	c7 40 58 02 02 00 00 	movl   $0x202,0x58(%eax)
c00059eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059ee:	c7 40 60 23 00 00 00 	movl   $0x23,0x60(%eax)
c00059f5:	8b 45 08             	mov    0x8(%ebp),%eax
c00059f8:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
c00059fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005a01:	89 50 5c             	mov    %edx,0x5c(%eax)
c0005a04:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a07:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0005a0e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a11:	c7 40 10 00 00 00 c0 	movl   $0xc0000000,0x10(%eax)
c0005a18:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
c0005a1f:	00 
c0005a20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005a27:	e8 1f e1 ff ff       	call   c0003b4b <malloc_page>
c0005a2c:	8b 55 08             	mov    0x8(%ebp),%edx
c0005a2f:	89 42 08             	mov    %eax,0x8(%edx)
c0005a32:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a35:	c7 40 04 00 00 00 c0 	movl   $0xc0000000,0x4(%eax)
c0005a3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a3f:	83 c0 04             	add    $0x4,%eax
c0005a42:	89 04 24             	mov    %eax,(%esp)
c0005a45:	e8 76 dd ff ff       	call   c00037c0 <init_bit_map>
c0005a4a:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a4d:	83 c0 38             	add    $0x38,%eax
c0005a50:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005a54:	c7 04 24 80 95 00 c0 	movl   $0xc0009580,(%esp)
c0005a5b:	e8 3b ee ff ff       	call   c000489b <lst_push>
c0005a60:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a63:	83 c0 40             	add    $0x40,%eax
c0005a66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005a6a:	c7 04 24 44 96 00 c0 	movl   $0xc0009644,(%esp)
c0005a71:	e8 25 ee ff ff       	call   c000489b <lst_push>
c0005a76:	c9                   	leave  
c0005a77:	c3                   	ret    

c0005a78 <create_proc_page>:
c0005a78:	55                   	push   %ebp
c0005a79:	89 e5                	mov    %esp,%ebp
c0005a7b:	83 ec 28             	sub    $0x28,%esp
c0005a7e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0005a85:	00 
c0005a86:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005a8d:	e8 b9 e0 ff ff       	call   c0003b4b <malloc_page>
c0005a92:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005a95:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005a98:	89 04 24             	mov    %eax,(%esp)
c0005a9b:	e8 fe e8 ff ff       	call   c000439e <get_paddr>
c0005aa0:	89 c2                	mov    %eax,%edx
c0005aa2:	8b 45 08             	mov    0x8(%ebp),%eax
c0005aa5:	89 50 48             	mov    %edx,0x48(%eax)
c0005aa8:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0005aaf:	00 
c0005ab0:	c7 44 24 04 00 f0 ff 	movl   $0xfffff000,0x4(%esp)
c0005ab7:	ff 
c0005ab8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005abb:	89 04 24             	mov    %eax,(%esp)
c0005abe:	e8 1b dc ff ff       	call   c00036de <memcopy>
c0005ac3:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ac6:	8b 40 48             	mov    0x48(%eax),%eax
c0005ac9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0005ace:	83 c0 07             	add    $0x7,%eax
c0005ad1:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005ad4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005ad7:	05 fc 0f 00 00       	add    $0xffc,%eax
c0005adc:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0005adf:	89 10                	mov    %edx,(%eax)
c0005ae1:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%ebp)
c0005ae8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0005aeb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005aef:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005af6:	e8 50 e0 ff ff       	call   c0003b4b <malloc_page>
c0005afb:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0005afe:	eb fe                	jmp    c0005afe <create_proc_page+0x86>

c0005b00 <process_fun>:
c0005b00:	55                   	push   %ebp
c0005b01:	89 e5                	mov    %esp,%ebp
c0005b03:	83 ec 28             	sub    $0x28,%esp
c0005b06:	e8 c7 d9 ff ff       	call   c00034d2 <int_enable>
c0005b0b:	e8 21 e9 ff ff       	call   c0004431 <get_running>
c0005b10:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005b13:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005b16:	8b 00                	mov    (%eax),%eax
c0005b18:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005b1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005b1e:	8b 40 48             	mov    0x48(%eax),%eax
c0005b21:	0f 22 d8             	mov    %eax,%cr3
c0005b24:	c7 44 24 04 ff ff 00 	movl   $0x7000ffff,0x4(%esp)
c0005b2b:	70 
c0005b2c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0005b33:	e8 e0 e1 ff ff       	call   c0003d18 <create_page>
c0005b38:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005b3b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0005b3f:	75 24                	jne    c0005b65 <process_fun+0x65>
c0005b41:	c7 44 24 0c 7e 66 00 	movl   $0xc000667e,0xc(%esp)
c0005b48:	c0 
c0005b49:	c7 44 24 08 99 66 00 	movl   $0xc0006699,0x8(%esp)
c0005b50:	c0 
c0005b51:	c7 44 24 04 76 00 00 	movl   $0x76,0x4(%esp)
c0005b58:	00 
c0005b59:	c7 04 24 83 66 00 c0 	movl   $0xc0006683,(%esp)
c0005b60:	e8 bb d9 ff ff       	call   c0003520 <panic_spin>
c0005b65:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005b68:	c7 40 5c f7 ff 00 70 	movl   $0x7000fff7,0x5c(%eax)
c0005b6f:	b8 fb ff 00 70       	mov    $0x7000fffb,%eax
c0005b74:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0005b77:	8b 52 64             	mov    0x64(%edx),%edx
c0005b7a:	89 10                	mov    %edx,(%eax)
c0005b7c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005b7f:	83 c0 18             	add    $0x18,%eax
c0005b82:	89 c4                	mov    %eax,%esp
c0005b84:	e9 58 be ff ff       	jmp    c00019e1 <exit_int>
c0005b89:	c9                   	leave  
c0005b8a:	c3                   	ret    

c0005b8b <syscall_table_init>:
c0005b8b:	55                   	push   %ebp
c0005b8c:	89 e5                	mov    %esp,%ebp
c0005b8e:	c7 05 40 a0 00 c0 ae 	movl   $0xc0005bae,0xc000a040
c0005b95:	5b 00 c0 
c0005b98:	c7 05 44 a0 00 c0 be 	movl   $0xc0005bbe,0xc000a044
c0005b9f:	5b 00 c0 
c0005ba2:	c7 05 48 a0 00 c0 d9 	movl   $0xc0003fd9,0xc000a048
c0005ba9:	3f 00 c0 
c0005bac:	5d                   	pop    %ebp
c0005bad:	c3                   	ret    

c0005bae <sys_getPid>:
c0005bae:	55                   	push   %ebp
c0005baf:	89 e5                	mov    %esp,%ebp
c0005bb1:	83 ec 08             	sub    $0x8,%esp
c0005bb4:	e8 78 e8 ff ff       	call   c0004431 <get_running>
c0005bb9:	8b 40 24             	mov    0x24(%eax),%eax
c0005bbc:	c9                   	leave  
c0005bbd:	c3                   	ret    

c0005bbe <sys_write>:
c0005bbe:	55                   	push   %ebp
c0005bbf:	89 e5                	mov    %esp,%ebp
c0005bc1:	83 ec 18             	sub    $0x18,%esp
c0005bc4:	8b 45 08             	mov    0x8(%ebp),%eax
c0005bc7:	89 04 24             	mov    %eax,(%esp)
c0005bca:	e8 d8 f4 ff ff       	call   c00050a7 <console_put_str>
c0005bcf:	8b 45 08             	mov    0x8(%ebp),%eax
c0005bd2:	89 04 24             	mov    %eax,(%esp)
c0005bd5:	e8 c4 db ff ff       	call   c000379e <strlen>
c0005bda:	c9                   	leave  
c0005bdb:	c3                   	ret    

c0005bdc <printf>:
c0005bdc:	55                   	push   %ebp
c0005bdd:	89 e5                	mov    %esp,%ebp
c0005bdf:	83 ec 28             	sub    $0x28,%esp
c0005be2:	8d 45 08             	lea    0x8(%ebp),%eax
c0005be5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005be8:	8b 45 08             	mov    0x8(%ebp),%eax
c0005beb:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005bee:	89 54 24 08          	mov    %edx,0x8(%esp)
c0005bf2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005bf6:	c7 04 24 80 91 00 c0 	movl   $0xc0009180,(%esp)
c0005bfd:	e8 11 00 00 00       	call   c0005c13 <vsprintf>
c0005c02:	68 80 91 00 c0       	push   $0xc0009180
c0005c07:	6a 01                	push   $0x1
c0005c09:	cd 80                	int    $0x80
c0005c0b:	83 c4 08             	add    $0x8,%esp
c0005c0e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005c11:	c9                   	leave  
c0005c12:	c3                   	ret    

c0005c13 <vsprintf>:
c0005c13:	55                   	push   %ebp
c0005c14:	89 e5                	mov    %esp,%ebp
c0005c16:	83 ec 28             	sub    $0x28,%esp
c0005c19:	e9 e4 00 00 00       	jmp    c0005d02 <vsprintf+0xef>
c0005c1e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005c21:	0f b6 00             	movzbl (%eax),%eax
c0005c24:	3c 25                	cmp    $0x25,%al
c0005c26:	0f 85 be 00 00 00    	jne    c0005cea <vsprintf+0xd7>
c0005c2c:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0005c30:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005c33:	0f b6 00             	movzbl (%eax),%eax
c0005c36:	0f be c0             	movsbl %al,%eax
c0005c39:	83 e8 63             	sub    $0x63,%eax
c0005c3c:	83 f8 15             	cmp    $0x15,%eax
c0005c3f:	0f 87 9e 00 00 00    	ja     c0005ce3 <vsprintf+0xd0>
c0005c45:	8b 04 85 a8 66 00 c0 	mov    -0x3fff9958(,%eax,4),%eax
c0005c4c:	ff e0                	jmp    *%eax
c0005c4e:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005c52:	8b 45 10             	mov    0x10(%ebp),%eax
c0005c55:	8b 00                	mov    (%eax),%eax
c0005c57:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005c5b:	8d 45 08             	lea    0x8(%ebp),%eax
c0005c5e:	89 04 24             	mov    %eax,(%esp)
c0005c61:	e8 b2 00 00 00       	call   c0005d18 <hex_to_ascii>
c0005c66:	eb 7c                	jmp    c0005ce4 <vsprintf+0xd1>
c0005c68:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005c6c:	8b 45 10             	mov    0x10(%ebp),%eax
c0005c6f:	8b 00                	mov    (%eax),%eax
c0005c71:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005c75:	8d 45 08             	lea    0x8(%ebp),%eax
c0005c78:	89 04 24             	mov    %eax,(%esp)
c0005c7b:	e8 70 01 00 00       	call   c0005df0 <dec_to_ascii>
c0005c80:	eb 62                	jmp    c0005ce4 <vsprintf+0xd1>
c0005c82:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005c86:	8b 45 10             	mov    0x10(%ebp),%eax
c0005c89:	8b 00                	mov    (%eax),%eax
c0005c8b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005c8f:	8d 45 08             	lea    0x8(%ebp),%eax
c0005c92:	89 04 24             	mov    %eax,(%esp)
c0005c95:	e8 f6 01 00 00       	call   c0005e90 <unsign_to_ascii>
c0005c9a:	eb 48                	jmp    c0005ce4 <vsprintf+0xd1>
c0005c9c:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005ca0:	8b 45 10             	mov    0x10(%ebp),%eax
c0005ca3:	8b 00                	mov    (%eax),%eax
c0005ca5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005ca8:	eb 17                	jmp    c0005cc1 <vsprintf+0xae>
c0005caa:	8b 45 08             	mov    0x8(%ebp),%eax
c0005cad:	8d 50 01             	lea    0x1(%eax),%edx
c0005cb0:	89 55 08             	mov    %edx,0x8(%ebp)
c0005cb3:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005cb6:	8d 4a 01             	lea    0x1(%edx),%ecx
c0005cb9:	89 4d f4             	mov    %ecx,-0xc(%ebp)
c0005cbc:	0f b6 12             	movzbl (%edx),%edx
c0005cbf:	88 10                	mov    %dl,(%eax)
c0005cc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cc4:	0f b6 00             	movzbl (%eax),%eax
c0005cc7:	84 c0                	test   %al,%al
c0005cc9:	75 df                	jne    c0005caa <vsprintf+0x97>
c0005ccb:	eb 17                	jmp    c0005ce4 <vsprintf+0xd1>
c0005ccd:	8b 45 08             	mov    0x8(%ebp),%eax
c0005cd0:	8d 50 01             	lea    0x1(%eax),%edx
c0005cd3:	89 55 08             	mov    %edx,0x8(%ebp)
c0005cd6:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005cda:	8b 55 10             	mov    0x10(%ebp),%edx
c0005cdd:	8b 12                	mov    (%edx),%edx
c0005cdf:	88 10                	mov    %dl,(%eax)
c0005ce1:	eb 01                	jmp    c0005ce4 <vsprintf+0xd1>
c0005ce3:	90                   	nop
c0005ce4:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0005ce8:	eb 18                	jmp    c0005d02 <vsprintf+0xef>
c0005cea:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ced:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005cf0:	0f b6 12             	movzbl (%edx),%edx
c0005cf3:	88 10                	mov    %dl,(%eax)
c0005cf5:	8b 45 08             	mov    0x8(%ebp),%eax
c0005cf8:	83 c0 01             	add    $0x1,%eax
c0005cfb:	89 45 08             	mov    %eax,0x8(%ebp)
c0005cfe:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0005d02:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005d05:	0f b6 00             	movzbl (%eax),%eax
c0005d08:	84 c0                	test   %al,%al
c0005d0a:	0f 85 0e ff ff ff    	jne    c0005c1e <vsprintf+0xb>
c0005d10:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d13:	c6 00 00             	movb   $0x0,(%eax)
c0005d16:	c9                   	leave  
c0005d17:	c3                   	ret    

c0005d18 <hex_to_ascii>:
c0005d18:	55                   	push   %ebp
c0005d19:	89 e5                	mov    %esp,%ebp
c0005d1b:	53                   	push   %ebx
c0005d1c:	83 ec 10             	sub    $0x10,%esp
c0005d1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005d22:	85 c0                	test   %eax,%eax
c0005d24:	79 17                	jns    c0005d3d <hex_to_ascii+0x25>
c0005d26:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d29:	8b 00                	mov    (%eax),%eax
c0005d2b:	8d 48 01             	lea    0x1(%eax),%ecx
c0005d2e:	8b 55 08             	mov    0x8(%ebp),%edx
c0005d31:	89 0a                	mov    %ecx,(%edx)
c0005d33:	c6 00 2d             	movb   $0x2d,(%eax)
c0005d36:	81 65 0c ff ff ff 7f 	andl   $0x7fffffff,0xc(%ebp)
c0005d3d:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
c0005d44:	eb 04                	jmp    c0005d4a <hex_to_ascii+0x32>
c0005d46:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0005d4a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005d4d:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0005d50:	72 f4                	jb     c0005d46 <hex_to_ascii+0x2e>
c0005d52:	eb 5e                	jmp    c0005db2 <hex_to_ascii+0x9a>
c0005d54:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0005d57:	8d 58 01             	lea    0x1(%eax),%ebx
c0005d5a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005d5d:	ba 00 00 00 00       	mov    $0x0,%edx
c0005d62:	f7 f3                	div    %ebx
c0005d64:	88 45 f7             	mov    %al,-0x9(%ebp)
c0005d67:	80 7d f7 09          	cmpb   $0x9,-0x9(%ebp)
c0005d6b:	7f 18                	jg     c0005d85 <hex_to_ascii+0x6d>
c0005d6d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d70:	8b 00                	mov    (%eax),%eax
c0005d72:	8d 48 01             	lea    0x1(%eax),%ecx
c0005d75:	8b 55 08             	mov    0x8(%ebp),%edx
c0005d78:	89 0a                	mov    %ecx,(%edx)
c0005d7a:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0005d7e:	83 c2 30             	add    $0x30,%edx
c0005d81:	88 10                	mov    %dl,(%eax)
c0005d83:	eb 16                	jmp    c0005d9b <hex_to_ascii+0x83>
c0005d85:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d88:	8b 00                	mov    (%eax),%eax
c0005d8a:	8d 48 01             	lea    0x1(%eax),%ecx
c0005d8d:	8b 55 08             	mov    0x8(%ebp),%edx
c0005d90:	89 0a                	mov    %ecx,(%edx)
c0005d92:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0005d96:	83 c2 57             	add    $0x57,%edx
c0005d99:	88 10                	mov    %dl,(%eax)
c0005d9b:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0005d9e:	8d 48 01             	lea    0x1(%eax),%ecx
c0005da1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005da4:	ba 00 00 00 00       	mov    $0x0,%edx
c0005da9:	f7 f1                	div    %ecx
c0005dab:	89 55 0c             	mov    %edx,0xc(%ebp)
c0005dae:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0005db2:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0005db6:	75 9c                	jne    c0005d54 <hex_to_ascii+0x3c>
c0005db8:	83 7d 0c 09          	cmpl   $0x9,0xc(%ebp)
c0005dbc:	77 17                	ja     c0005dd5 <hex_to_ascii+0xbd>
c0005dbe:	8b 45 08             	mov    0x8(%ebp),%eax
c0005dc1:	8b 00                	mov    (%eax),%eax
c0005dc3:	8d 48 01             	lea    0x1(%eax),%ecx
c0005dc6:	8b 55 08             	mov    0x8(%ebp),%edx
c0005dc9:	89 0a                	mov    %ecx,(%edx)
c0005dcb:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005dce:	83 c2 30             	add    $0x30,%edx
c0005dd1:	88 10                	mov    %dl,(%eax)
c0005dd3:	eb 15                	jmp    c0005dea <hex_to_ascii+0xd2>
c0005dd5:	8b 45 08             	mov    0x8(%ebp),%eax
c0005dd8:	8b 00                	mov    (%eax),%eax
c0005dda:	8d 48 01             	lea    0x1(%eax),%ecx
c0005ddd:	8b 55 08             	mov    0x8(%ebp),%edx
c0005de0:	89 0a                	mov    %ecx,(%edx)
c0005de2:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005de5:	83 c2 57             	add    $0x57,%edx
c0005de8:	88 10                	mov    %dl,(%eax)
c0005dea:	83 c4 10             	add    $0x10,%esp
c0005ded:	5b                   	pop    %ebx
c0005dee:	5d                   	pop    %ebp
c0005def:	c3                   	ret    

c0005df0 <dec_to_ascii>:
c0005df0:	55                   	push   %ebp
c0005df1:	89 e5                	mov    %esp,%ebp
c0005df3:	83 ec 10             	sub    $0x10,%esp
c0005df6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005df9:	85 c0                	test   %eax,%eax
c0005dfb:	79 13                	jns    c0005e10 <dec_to_ascii+0x20>
c0005dfd:	8b 45 08             	mov    0x8(%ebp),%eax
c0005e00:	8b 00                	mov    (%eax),%eax
c0005e02:	8d 48 01             	lea    0x1(%eax),%ecx
c0005e05:	8b 55 08             	mov    0x8(%ebp),%edx
c0005e08:	89 0a                	mov    %ecx,(%edx)
c0005e0a:	c6 00 2d             	movb   $0x2d,(%eax)
c0005e0d:	f7 5d 0c             	negl   0xc(%ebp)
c0005e10:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c0005e17:	eb 0f                	jmp    c0005e28 <dec_to_ascii+0x38>
c0005e19:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0005e1c:	89 d0                	mov    %edx,%eax
c0005e1e:	c1 e0 02             	shl    $0x2,%eax
c0005e21:	01 d0                	add    %edx,%eax
c0005e23:	01 c0                	add    %eax,%eax
c0005e25:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0005e28:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005e2b:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c0005e2e:	73 e9                	jae    c0005e19 <dec_to_ascii+0x29>
c0005e30:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0005e33:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0005e38:	f7 e2                	mul    %edx
c0005e3a:	89 d0                	mov    %edx,%eax
c0005e3c:	c1 e8 03             	shr    $0x3,%eax
c0005e3f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0005e42:	eb 44                	jmp    c0005e88 <dec_to_ascii+0x98>
c0005e44:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005e47:	ba 00 00 00 00       	mov    $0x0,%edx
c0005e4c:	f7 75 fc             	divl   -0x4(%ebp)
c0005e4f:	88 45 fb             	mov    %al,-0x5(%ebp)
c0005e52:	8b 45 08             	mov    0x8(%ebp),%eax
c0005e55:	8b 00                	mov    (%eax),%eax
c0005e57:	8d 48 01             	lea    0x1(%eax),%ecx
c0005e5a:	8b 55 08             	mov    0x8(%ebp),%edx
c0005e5d:	89 0a                	mov    %ecx,(%edx)
c0005e5f:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c0005e63:	83 c2 30             	add    $0x30,%edx
c0005e66:	88 10                	mov    %dl,(%eax)
c0005e68:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005e6b:	ba 00 00 00 00       	mov    $0x0,%edx
c0005e70:	f7 75 fc             	divl   -0x4(%ebp)
c0005e73:	89 55 0c             	mov    %edx,0xc(%ebp)
c0005e76:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0005e79:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0005e7e:	f7 e2                	mul    %edx
c0005e80:	89 d0                	mov    %edx,%eax
c0005e82:	c1 e8 03             	shr    $0x3,%eax
c0005e85:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0005e88:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0005e8c:	75 b6                	jne    c0005e44 <dec_to_ascii+0x54>
c0005e8e:	c9                   	leave  
c0005e8f:	c3                   	ret    

c0005e90 <unsign_to_ascii>:
c0005e90:	55                   	push   %ebp
c0005e91:	89 e5                	mov    %esp,%ebp
c0005e93:	53                   	push   %ebx
c0005e94:	83 ec 10             	sub    $0x10,%esp
c0005e97:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
c0005e9b:	75 24                	jne    c0005ec1 <unsign_to_ascii+0x31>
c0005e9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ea0:	8b 00                	mov    (%eax),%eax
c0005ea2:	c7 00 66 66 66 66    	movl   $0x66666666,(%eax)
c0005ea8:	c7 40 04 66 66 66 66 	movl   $0x66666666,0x4(%eax)
c0005eaf:	8b 45 08             	mov    0x8(%ebp),%eax
c0005eb2:	8b 00                	mov    (%eax),%eax
c0005eb4:	8d 50 08             	lea    0x8(%eax),%edx
c0005eb7:	8b 45 08             	mov    0x8(%ebp),%eax
c0005eba:	89 10                	mov    %edx,(%eax)
c0005ebc:	e9 ae 00 00 00       	jmp    c0005f6f <unsign_to_ascii+0xdf>
c0005ec1:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
c0005ec8:	eb 04                	jmp    c0005ece <unsign_to_ascii+0x3e>
c0005eca:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0005ece:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005ed1:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0005ed4:	72 f4                	jb     c0005eca <unsign_to_ascii+0x3a>
c0005ed6:	eb 5e                	jmp    c0005f36 <unsign_to_ascii+0xa6>
c0005ed8:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0005edb:	8d 58 01             	lea    0x1(%eax),%ebx
c0005ede:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005ee1:	ba 00 00 00 00       	mov    $0x0,%edx
c0005ee6:	f7 f3                	div    %ebx
c0005ee8:	88 45 f7             	mov    %al,-0x9(%ebp)
c0005eeb:	80 7d f7 09          	cmpb   $0x9,-0x9(%ebp)
c0005eef:	7f 18                	jg     c0005f09 <unsign_to_ascii+0x79>
c0005ef1:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ef4:	8b 00                	mov    (%eax),%eax
c0005ef6:	8d 48 01             	lea    0x1(%eax),%ecx
c0005ef9:	8b 55 08             	mov    0x8(%ebp),%edx
c0005efc:	89 0a                	mov    %ecx,(%edx)
c0005efe:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0005f02:	83 c2 30             	add    $0x30,%edx
c0005f05:	88 10                	mov    %dl,(%eax)
c0005f07:	eb 16                	jmp    c0005f1f <unsign_to_ascii+0x8f>
c0005f09:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f0c:	8b 00                	mov    (%eax),%eax
c0005f0e:	8d 48 01             	lea    0x1(%eax),%ecx
c0005f11:	8b 55 08             	mov    0x8(%ebp),%edx
c0005f14:	89 0a                	mov    %ecx,(%edx)
c0005f16:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0005f1a:	83 c2 57             	add    $0x57,%edx
c0005f1d:	88 10                	mov    %dl,(%eax)
c0005f1f:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0005f22:	8d 48 01             	lea    0x1(%eax),%ecx
c0005f25:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005f28:	ba 00 00 00 00       	mov    $0x0,%edx
c0005f2d:	f7 f1                	div    %ecx
c0005f2f:	89 55 0c             	mov    %edx,0xc(%ebp)
c0005f32:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0005f36:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0005f3a:	75 9c                	jne    c0005ed8 <unsign_to_ascii+0x48>
c0005f3c:	83 7d 0c 09          	cmpl   $0x9,0xc(%ebp)
c0005f40:	77 17                	ja     c0005f59 <unsign_to_ascii+0xc9>
c0005f42:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f45:	8b 00                	mov    (%eax),%eax
c0005f47:	8d 48 01             	lea    0x1(%eax),%ecx
c0005f4a:	8b 55 08             	mov    0x8(%ebp),%edx
c0005f4d:	89 0a                	mov    %ecx,(%edx)
c0005f4f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005f52:	83 c2 30             	add    $0x30,%edx
c0005f55:	88 10                	mov    %dl,(%eax)
c0005f57:	eb 16                	jmp    c0005f6f <unsign_to_ascii+0xdf>
c0005f59:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f5c:	8b 00                	mov    (%eax),%eax
c0005f5e:	8d 48 01             	lea    0x1(%eax),%ecx
c0005f61:	8b 55 08             	mov    0x8(%ebp),%edx
c0005f64:	89 0a                	mov    %ecx,(%edx)
c0005f66:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0005f6a:	83 c2 57             	add    $0x57,%edx
c0005f6d:	88 10                	mov    %dl,(%eax)
c0005f6f:	83 c4 10             	add    $0x10,%esp
c0005f72:	5b                   	pop    %ebx
c0005f73:	5d                   	pop    %ebp
c0005f74:	c3                   	ret    

c0005f75 <getpid>:
c0005f75:	55                   	push   %ebp
c0005f76:	89 e5                	mov    %esp,%ebp
c0005f78:	83 ec 10             	sub    $0x10,%esp
c0005f7b:	6a 00                	push   $0x0
c0005f7d:	cd 80                	int    $0x80
c0005f7f:	83 c4 04             	add    $0x4,%esp
c0005f82:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0005f85:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0005f88:	c9                   	leave  
c0005f89:	c3                   	ret    

c0005f8a <malloc>:
c0005f8a:	55                   	push   %ebp
c0005f8b:	89 e5                	mov    %esp,%ebp
c0005f8d:	83 ec 10             	sub    $0x10,%esp
c0005f90:	ff 75 08             	pushl  0x8(%ebp)
c0005f93:	6a 02                	push   $0x2
c0005f95:	cd 80                	int    $0x80
c0005f97:	83 c4 08             	add    $0x8,%esp
c0005f9a:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0005f9d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0005fa0:	c9                   	leave  
c0005fa1:	c3                   	ret    
Contents of the .eh_frame section:

00000000 00000014 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -4
  Return address column: 8
  Augmentation data:     1b

  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_offset: r8 (eip) at cfa-4
  DW_CFA_nop
  DW_CFA_nop

00000018 00000018 0000001c FDE cie=00000000 pc=c0001500..c00015ce
  DW_CFA_advance_loc: 1 to c0001501
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001503
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000034 00000018 00000038 FDE cie=00000000 pc=c00015ce..c00015f8
  DW_CFA_advance_loc: 1 to c00015cf
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00015d1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000050 0000001c 00000054 FDE cie=00000000 pc=c00015f8..c000160f
  DW_CFA_advance_loc: 1 to c00015f9
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00015fb
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 19 to c000160e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000070 00000018 00000074 FDE cie=00000000 pc=c000160f..c0001636
  DW_CFA_advance_loc: 1 to c0001610
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001612
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

0000008c 0000001c 00000090 FDE cie=00000000 pc=c0001636..c0001692
  DW_CFA_advance_loc: 1 to c0001637
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001639
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 88 to c0001691
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000000ac 0000001c 000000b0 FDE cie=00000000 pc=c0001692..c0001795
  DW_CFA_advance_loc: 1 to c0001693
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001695
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 255 to c0001794
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000000cc 0000001c 000000d0 FDE cie=00000000 pc=c0001795..c00017cc
  DW_CFA_advance_loc: 1 to c0001796
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001798
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 51 to c00017cb
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000000ec 0000001c 000000f0 FDE cie=00000000 pc=c00017cc..c000180d
  DW_CFA_advance_loc: 1 to c00017cd
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00017cf
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 61 to c000180c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

0000010c 0000001c 00000110 FDE cie=00000000 pc=c000180d..c00018de
  DW_CFA_advance_loc: 1 to c000180e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001810
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 205 to c00018dd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

0000012c 0000001c 00000130 FDE cie=00000000 pc=c00018de..c0001939
  DW_CFA_advance_loc: 1 to c00018df
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00018e1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 87 to c0001938
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

0000014c 00000024 00000150 FDE cie=00000000 pc=c0001939..c000199a
  DW_CFA_advance_loc: 1 to c000193a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000193c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0001941
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 86 to c0001997
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0001998
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c0001999
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000174 0000001c 00000178 FDE cie=00000000 pc=c0003485..c00034ae
  DW_CFA_advance_loc: 1 to c0003486
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003488
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 37 to c00034ad
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000194 0000001c 00000198 FDE cie=00000000 pc=c00034ae..c00034d2
  DW_CFA_advance_loc: 1 to c00034af
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00034b1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 32 to c00034d1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000001b4 0000001c 000001b8 FDE cie=00000000 pc=c00034d2..c00034e6
  DW_CFA_advance_loc: 1 to c00034d3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00034d5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c00034e5
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000001d4 0000001c 000001d8 FDE cie=00000000 pc=c00034e6..c00034fa
  DW_CFA_advance_loc: 1 to c00034e7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00034e9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c00034f9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000001f4 0000001c 000001f8 FDE cie=00000000 pc=c00034fa..c0003520
  DW_CFA_advance_loc: 1 to c00034fb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00034fd
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 34 to c000351f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000214 00000018 00000218 FDE cie=00000000 pc=c0003520..c00035d4
  DW_CFA_advance_loc: 1 to c0003521
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003523
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000230 0000001c 00000234 FDE cie=00000000 pc=c00035d4..c0003621
  DW_CFA_advance_loc: 1 to c00035d5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00035d7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 73 to c0003620
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000250 0000001c 00000254 FDE cie=00000000 pc=c0003621..c0003683
  DW_CFA_advance_loc: 1 to c0003622
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003624
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 94 to c0003682
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000270 0000001c 00000274 FDE cie=00000000 pc=c0003683..c00036de
  DW_CFA_advance_loc: 1 to c0003684
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003686
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 87 to c00036dd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000290 0000001c 00000294 FDE cie=00000000 pc=c00036de..c000374e
  DW_CFA_advance_loc: 1 to c00036df
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00036e1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 108 to c000374d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000002b0 0000001c 000002b4 FDE cie=00000000 pc=c000374e..c000379e
  DW_CFA_advance_loc: 1 to c000374f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003751
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 76 to c000379d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000002d0 0000001c 000002d4 FDE cie=00000000 pc=c000379e..c00037c0
  DW_CFA_advance_loc: 1 to c000379f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00037a1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 30 to c00037bf
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000002f0 0000001c 000002f4 FDE cie=00000000 pc=c00037c0..c00037c5
  DW_CFA_advance_loc: 1 to c00037c1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00037c3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 1 to c00037c4
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000310 00000020 00000314 FDE cie=00000000 pc=c00037c5..c000383f
  DW_CFA_advance_loc: 1 to c00037c6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00037c8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c00037cc
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 113 to c000383d
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c000383e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000334 00000024 00000338 FDE cie=00000000 pc=c000383f..c00038e2
  DW_CFA_advance_loc: 1 to c0003840
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003842
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0003847
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 152 to c00038df
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00038e0
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c00038e1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

0000035c 00000024 00000360 FDE cie=00000000 pc=c00038e2..c00039d5
  DW_CFA_advance_loc: 1 to c00038e3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038e5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c00038ea
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 232 to c00039d2
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00039d3
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c00039d4
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000384 0000001c 00000388 FDE cie=00000000 pc=c00039d5..c0003a74
  DW_CFA_advance_loc: 1 to c00039d6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00039d8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 155 to c0003a73
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000003a4 0000001c 000003a8 FDE cie=00000000 pc=c0003a74..c0003afc
  DW_CFA_advance_loc: 1 to c0003a75
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003a77
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 132 to c0003afb
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000003c4 0000001c 000003c8 FDE cie=00000000 pc=c0003afc..c0003b4b
  DW_CFA_advance_loc: 1 to c0003afd
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003aff
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 75 to c0003b4a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000003e4 0000001c 000003e8 FDE cie=00000000 pc=c0003b4b..c0003c48
  DW_CFA_advance_loc: 1 to c0003b4c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003b4e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 249 to c0003c47
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000404 0000001c 00000408 FDE cie=00000000 pc=c0003c48..c0003d18
  DW_CFA_advance_loc: 1 to c0003c49
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003c4b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 204 to c0003d17
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000424 0000001c 00000428 FDE cie=00000000 pc=c0003d18..c0003dfd
  DW_CFA_advance_loc: 1 to c0003d19
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003d1b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 225 to c0003dfc
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000444 0000001c 00000448 FDE cie=00000000 pc=c0003dfd..c0003e44
  DW_CFA_advance_loc: 1 to c0003dfe
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003e00
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 67 to c0003e43
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000464 0000001c 00000468 FDE cie=00000000 pc=c0003e44..c0003f71
  DW_CFA_advance_loc: 1 to c0003e45
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003e47
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 297 to c0003f70
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000484 0000001c 00000488 FDE cie=00000000 pc=c0003f71..c0003fd9
  DW_CFA_advance_loc: 1 to c0003f72
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003f74
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 100 to c0003fd8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004a4 0000001c 000004a8 FDE cie=00000000 pc=c0003fd9..c000417e
  DW_CFA_advance_loc: 1 to c0003fda
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003fdc
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 417 to c000417d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000004c4 0000001c 000004c8 FDE cie=00000000 pc=c000417e..c00041d0
  DW_CFA_advance_loc: 1 to c000417f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004181
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 78 to c00041cf
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004e4 0000001c 000004e8 FDE cie=00000000 pc=c00041d0..c00042a4
  DW_CFA_advance_loc: 1 to c00041d1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00041d3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 208 to c00042a3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000504 0000001c 00000508 FDE cie=00000000 pc=c00042a4..c00042b7
  DW_CFA_advance_loc: 1 to c00042a5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00042a7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c00042b6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000524 0000001c 00000528 FDE cie=00000000 pc=c00042b7..c00042ca
  DW_CFA_advance_loc: 1 to c00042b8
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00042ba
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c00042c9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000544 0000001c 00000548 FDE cie=00000000 pc=c00042ca..c000439e
  DW_CFA_advance_loc: 1 to c00042cb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00042cd
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 208 to c000439d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000564 0000001c 00000568 FDE cie=00000000 pc=c000439e..c00043be
  DW_CFA_advance_loc: 1 to c000439f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00043a1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 28 to c00043bd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000584 0000001c 00000588 FDE cie=00000000 pc=c00043be..c0004431
  DW_CFA_advance_loc: 1 to c00043bf
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00043c1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 111 to c0004430
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000005a4 0000001c 000005a8 FDE cie=00000000 pc=c0004431..c0004446
  DW_CFA_advance_loc: 1 to c0004432
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004434
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 17 to c0004445
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000005c4 0000001c 000005c8 FDE cie=00000000 pc=c0004446..c000459f
  DW_CFA_advance_loc: 1 to c0004447
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004449
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 341 to c000459e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000005e4 0000001c 000005e8 FDE cie=00000000 pc=c000459f..c00045d2
  DW_CFA_advance_loc: 1 to c00045a0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00045a2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 47 to c00045d1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000604 0000001c 00000608 FDE cie=00000000 pc=c00045d2..c0004606
  DW_CFA_advance_loc: 1 to c00045d3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00045d5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c0004605
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000624 0000001c 00000628 FDE cie=00000000 pc=c0004606..c00046b4
  DW_CFA_advance_loc: 1 to c0004607
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004609
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 170 to c00046b3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000644 0000001c 00000648 FDE cie=00000000 pc=c00046b4..c0004747
  DW_CFA_advance_loc: 1 to c00046b5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00046b7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 143 to c0004746
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000664 0000001c 00000668 FDE cie=00000000 pc=c0004747..c0004801
  DW_CFA_advance_loc: 1 to c0004748
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000474a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 182 to c0004800
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000684 0000001c 00000688 FDE cie=00000000 pc=c0004801..c000483c
  DW_CFA_advance_loc: 1 to c0004802
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004804
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 55 to c000483b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006a4 0000001c 000006a8 FDE cie=00000000 pc=c000483c..c0004883
  DW_CFA_advance_loc: 1 to c000483d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000483f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 67 to c0004882
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000006c4 0000001c 000006c8 FDE cie=00000000 pc=c0004883..c000489b
  DW_CFA_advance_loc: 1 to c0004884
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004886
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 20 to c000489a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006e4 0000001c 000006e8 FDE cie=00000000 pc=c000489b..c00049b4
  DW_CFA_advance_loc: 1 to c000489c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000489e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 277 to c00049b3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000704 0000001c 00000708 FDE cie=00000000 pc=c00049b4..c0004a52
  DW_CFA_advance_loc: 1 to c00049b5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00049b7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 154 to c0004a51
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000724 0000001c 00000728 FDE cie=00000000 pc=c0004a52..c0004ab7
  DW_CFA_advance_loc: 1 to c0004a53
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004a55
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 97 to c0004ab6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000744 0000001c 00000748 FDE cie=00000000 pc=c0004ab7..c0004b8d
  DW_CFA_advance_loc: 1 to c0004ab8
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004aba
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 210 to c0004b8c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000764 0000001c 00000768 FDE cie=00000000 pc=c0004b8d..c0004c71
  DW_CFA_advance_loc: 1 to c0004b8e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004b90
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 224 to c0004c70
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000784 0000001c 00000788 FDE cie=00000000 pc=c0004c71..c0004c84
  DW_CFA_advance_loc: 1 to c0004c72
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004c74
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c0004c83
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000007a4 0000001c 000007a8 FDE cie=00000000 pc=c0004ca5..c0004cdb
  DW_CFA_advance_loc: 1 to c0004ca6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004ca8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 50 to c0004cda
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000007c4 0000001c 000007c8 FDE cie=00000000 pc=c0004cdb..c0004cee
  DW_CFA_advance_loc: 1 to c0004cdc
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004cde
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c0004ced
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000007e4 0000001c 000007e8 FDE cie=00000000 pc=c0004cee..c0004d01
  DW_CFA_advance_loc: 1 to c0004cef
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004cf1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c0004d00
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000804 0000001c 00000808 FDE cie=00000000 pc=c0004d01..c0004e53
  DW_CFA_advance_loc: 1 to c0004d02
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004d04
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 334 to c0004e52
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000824 0000001c 00000828 FDE cie=00000000 pc=c0004e53..c0004f63
  DW_CFA_advance_loc: 1 to c0004e54
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004e56
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 268 to c0004f62
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000844 0000001c 00000848 FDE cie=00000000 pc=c0004f63..c0005010
  DW_CFA_advance_loc: 1 to c0004f64
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004f66
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 169 to c000500f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000864 0000001c 00000868 FDE cie=00000000 pc=c0005010..c0005093
  DW_CFA_advance_loc: 1 to c0005011
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005013
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 127 to c0005092
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000884 0000001c 00000888 FDE cie=00000000 pc=c0005093..c00050a7
  DW_CFA_advance_loc: 1 to c0005094
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005096
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c00050a6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008a4 0000001c 000008a8 FDE cie=00000000 pc=c00050a7..c00050d2
  DW_CFA_advance_loc: 1 to c00050a8
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00050aa
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 39 to c00050d1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008c4 0000001c 000008c8 FDE cie=00000000 pc=c00050d2..c0005104
  DW_CFA_advance_loc: 1 to c00050d3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00050d5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 46 to c0005103
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008e4 0000001c 000008e8 FDE cie=00000000 pc=c0005104..c000512f
  DW_CFA_advance_loc: 1 to c0005105
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005107
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 39 to c000512e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000904 0000001c 00000908 FDE cie=00000000 pc=c000512f..c000514e
  DW_CFA_advance_loc: 1 to c0005130
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005132
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 27 to c000514d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000924 0000001c 00000928 FDE cie=00000000 pc=c000514e..c000521b
  DW_CFA_advance_loc: 1 to c000514f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005151
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 201 to c000521a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000944 0000001c 00000948 FDE cie=00000000 pc=c000521b..c0005459
  DW_CFA_advance_loc: 1 to c000521c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000521e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 570 to c0005458
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000964 0000001c 00000968 FDE cie=00000000 pc=c0005459..c00054ab
  DW_CFA_advance_loc: 1 to c000545a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000545c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 78 to c00054aa
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000984 00000018 00000988 FDE cie=00000000 pc=c00054ab..c00054fa
  DW_CFA_advance_loc: 1 to c00054ac
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00054ae
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000009a0 0000001c 000009a4 FDE cie=00000000 pc=c00054fa..c0005521
  DW_CFA_advance_loc: 1 to c00054fb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00054fd
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 35 to c0005520
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000009c0 00000020 000009c4 FDE cie=00000000 pc=c0005521..c000557b
  DW_CFA_advance_loc: 1 to c0005522
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005524
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005528
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 81 to c0005579
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c000557a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000009e4 0000001c 000009e8 FDE cie=00000000 pc=c000557b..c00055c7
  DW_CFA_advance_loc: 1 to c000557c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000557e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 72 to c00055c6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000a04 0000001c 00000a08 FDE cie=00000000 pc=c00055c7..c0005603
  DW_CFA_advance_loc: 1 to c00055c8
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00055ca
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 54 to c0005600
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a24 0000001c 00000a28 FDE cie=00000000 pc=c0005603..c0005662
  DW_CFA_advance_loc: 1 to c0005604
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005606
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 91 to c0005661
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000a44 0000001c 00000a48 FDE cie=00000000 pc=c0005662..c00056bf
  DW_CFA_advance_loc: 1 to c0005663
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005665
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 89 to c00056be
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000a64 0000001c 00000a68 FDE cie=00000000 pc=c00056bf..c000570a
  DW_CFA_advance_loc: 1 to c00056c0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00056c2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 71 to c0005709
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000a84 0000001c 00000a88 FDE cie=00000000 pc=c000570a..c000572b
  DW_CFA_advance_loc: 1 to c000570b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000570d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 29 to c000572a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000aa4 0000001c 00000aa8 FDE cie=00000000 pc=c000572b..c000573d
  DW_CFA_advance_loc: 1 to c000572c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000572e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 14 to c000573c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000ac4 00000020 00000ac8 FDE cie=00000000 pc=c000573d..c000584a
  DW_CFA_advance_loc: 1 to c000573e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005740
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005744
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc2: 261 to c0005849
  DW_CFA_restore: r5 (ebp)
  DW_CFA_restore: r3 (ebx)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000ae8 0000001c 00000aec FDE cie=00000000 pc=c000584a..c00058a9
  DW_CFA_advance_loc: 1 to c000584b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000584d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 89 to c00058a6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b08 00000020 00000b0c FDE cie=00000000 pc=c00058a9..c00058f2
  DW_CFA_advance_loc: 1 to c00058aa
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00058ac
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c00058b0
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 64 to c00058f0
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00058f1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000b2c 0000001c 00000b30 FDE cie=00000000 pc=c00058f2..c0005941
  DW_CFA_advance_loc: 1 to c00058f3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00058f5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 75 to c0005940
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b4c 0000001c 00000b50 FDE cie=00000000 pc=c0005941..c0005a78
  DW_CFA_advance_loc: 1 to c0005942
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005944
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 307 to c0005a77
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000b6c 00000018 00000b70 FDE cie=00000000 pc=c0005a78..c0005b00
  DW_CFA_advance_loc: 1 to c0005a79
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005a7b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000b88 0000001c 00000b8c FDE cie=00000000 pc=c0005b00..c0005b8b
  DW_CFA_advance_loc: 1 to c0005b01
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005b03
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 135 to c0005b8a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000ba8 0000001c 00000bac FDE cie=00000000 pc=c0005b8b..c0005bae
  DW_CFA_advance_loc: 1 to c0005b8c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005b8e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 31 to c0005bad
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000bc8 0000001c 00000bcc FDE cie=00000000 pc=c0005bae..c0005bbe
  DW_CFA_advance_loc: 1 to c0005baf
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005bb1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 12 to c0005bbd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000be8 0000001c 00000bec FDE cie=00000000 pc=c0005bbe..c0005bdc
  DW_CFA_advance_loc: 1 to c0005bbf
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005bc1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 26 to c0005bdb
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000c08 0000001c 00000c0c FDE cie=00000000 pc=c0005bdc..c0005c13
  DW_CFA_advance_loc: 1 to c0005bdd
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005bdf
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 51 to c0005c12
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000c28 0000001c 00000c2c FDE cie=00000000 pc=c0005c13..c0005d18
  DW_CFA_advance_loc: 1 to c0005c14
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005c16
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 257 to c0005d17
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000c48 00000020 00000c4c FDE cie=00000000 pc=c0005d18..c0005df0
  DW_CFA_advance_loc: 1 to c0005d19
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005d1b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005d1f
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 207 to c0005dee
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0005def
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000c6c 0000001c 00000c70 FDE cie=00000000 pc=c0005df0..c0005e90
  DW_CFA_advance_loc: 1 to c0005df1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005df3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 156 to c0005e8f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000c8c 00000020 00000c90 FDE cie=00000000 pc=c0005e90..c0005f75
  DW_CFA_advance_loc: 1 to c0005e91
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005e93
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005e97
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 220 to c0005f73
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0005f74
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000cb0 0000001c 00000cb4 FDE cie=00000000 pc=c0005f75..c0005f8a
  DW_CFA_advance_loc: 1 to c0005f76
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005f78
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 17 to c0005f89
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000cd0 0000001c 00000cd4 FDE cie=00000000 pc=c0005f8a..c0005fa2
  DW_CFA_advance_loc: 1 to c0005f8b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005f8d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 20 to c0005fa1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

