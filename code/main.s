
Disassembly of section .text:

c0001500 <main>:
c0001500:	55                   	push   %ebp
c0001501:	89 e5                	mov    %esp,%ebp
c0001503:	83 e4 f0             	and    $0xfffffff0,%esp
c0001506:	83 ec 10             	sub    $0x10,%esp
c0001509:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
c0001510:	e8 9c 1f 00 00       	call   c00034b1 <set_cursor>
c0001515:	e8 1c 20 00 00       	call   c0003536 <int_disable>
c000151a:	e8 59 04 00 00       	call   c0001978 <init_int>
c000151f:	c7 04 24 0c 6e 00 c0 	movl   $0xc0006e0c,(%esp)
c0001526:	e8 aa 1f 00 00       	call   c00034d5 <put_str>
c000152b:	e8 47 2e 00 00       	call   c0004377 <init_pool>
c0001530:	c7 04 24 18 6e 00 c0 	movl   $0xc0006e18,(%esp)
c0001537:	e8 99 1f 00 00       	call   c00034d5 <put_str>
c000153c:	e8 9e 34 00 00       	call   c00049df <init_thread_list>
c0001541:	c7 04 24 24 6e 00 c0 	movl   $0xc0006e24,(%esp)
c0001548:	e8 88 1f 00 00       	call   c00034d5 <put_str>
c000154d:	e8 d5 3d 00 00       	call   c0005327 <init_console>
c0001552:	c7 04 24 32 6e 00 c0 	movl   $0xc0006e32,(%esp)
c0001559:	e8 77 1f 00 00       	call   c00034d5 <put_str>
c000155e:	e8 7f 3e 00 00       	call   c00053e2 <init_keyboard>
c0001563:	c7 04 24 41 6e 00 c0 	movl   $0xc0006e41,(%esp)
c000156a:	e8 66 1f 00 00       	call   c00034d5 <put_str>
c000156f:	e8 59 44 00 00       	call   c00059cd <init_proc_data>
c0001574:	c7 04 24 51 6e 00 c0 	movl   $0xc0006e51,(%esp)
c000157b:	e8 bb 3d 00 00       	call   c000533b <console_put_str>
c0001580:	c7 04 24 20 a7 00 c0 	movl   $0xc000a720,(%esp)
c0001587:	e8 d9 2a 00 00       	call   c0004065 <mem_decs_init>
c000158c:	c7 04 24 5d 6e 00 c0 	movl   $0xc0006e5d,(%esp)
c0001593:	e8 a3 3d 00 00       	call   c000533b <console_put_str>
c0001598:	e8 d5 57 00 00       	call   c0006d72 <ide_init>
c000159d:	e8 80 1f 00 00       	call   c0003522 <int_enable>
c00015a2:	c9                   	leave  
c00015a3:	c3                   	ret    

c00015a4 <print>:
c00015a4:	55                   	push   %ebp
c00015a5:	89 e5                	mov    %esp,%ebp
c00015a7:	83 ec 28             	sub    $0x28,%esp
c00015aa:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c00015b1:	e8 6e 4c 00 00       	call   c0006224 <malloc>
c00015b6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00015b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00015bc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00015c0:	c7 04 24 68 6e 00 c0 	movl   $0xc0006e68,(%esp)
c00015c7:	e8 aa 48 00 00       	call   c0005e76 <printf>
c00015cc:	c9                   	leave  
c00015cd:	c3                   	ret    

c00015ce <write_port>:
c00015ce:	55                   	push   %ebp
c00015cf:	89 e5                	mov    %esp,%ebp
c00015d1:	83 ec 04             	sub    $0x4,%esp
c00015d4:	8b 45 08             	mov    0x8(%ebp),%eax
c00015d7:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00015db:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c00015df:	8b 45 0c             	mov    0xc(%ebp),%eax
c00015e2:	ee                   	out    %al,(%dx)
c00015e3:	c9                   	leave  
c00015e4:	c3                   	ret    

c00015e5 <gernal_handle>:
c00015e5:	55                   	push   %ebp
c00015e6:	89 e5                	mov    %esp,%ebp
c00015e8:	83 ec 18             	sub    $0x18,%esp
c00015eb:	fa                   	cli    
c00015ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00015ef:	8b 04 85 e0 a7 00 c0 	mov    -0x3fff5820(,%eax,4),%eax
c00015f6:	89 04 24             	mov    %eax,(%esp)
c00015f9:	e8 d7 1e 00 00       	call   c00034d5 <put_str>
c00015fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0001601:	89 04 24             	mov    %eax,(%esp)
c0001604:	e8 2a 1e 00 00       	call   c0003433 <put_int>
c0001609:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0001610:	e8 3b 1d 00 00       	call   c0003350 <put_char>
c0001615:	f4                   	hlt    
c0001616:	90                   	nop
c0001617:	c9                   	leave  
c0001618:	c3                   	ret    

c0001619 <handle_clock_intr>:
c0001619:	55                   	push   %ebp
c000161a:	89 e5                	mov    %esp,%ebp
c000161c:	83 ec 28             	sub    $0x28,%esp
c000161f:	e8 12 1f 00 00       	call   c0003536 <int_disable>
c0001624:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001627:	e8 ac 2f 00 00       	call   c00045d8 <get_running>
c000162c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000162f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001632:	8b 40 2c             	mov    0x2c(%eax),%eax
c0001635:	8d 50 ff             	lea    -0x1(%eax),%edx
c0001638:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000163b:	89 50 2c             	mov    %edx,0x2c(%eax)
c000163e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001641:	8b 40 34             	mov    0x34(%eax),%eax
c0001644:	8d 50 01             	lea    0x1(%eax),%edx
c0001647:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000164a:	89 50 34             	mov    %edx,0x34(%eax)
c000164d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001650:	8b 40 2c             	mov    0x2c(%eax),%eax
c0001653:	85 c0                	test   %eax,%eax
c0001655:	75 11                	jne    c0001668 <handle_clock_intr+0x4f>
c0001657:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000165a:	8b 50 30             	mov    0x30(%eax),%edx
c000165d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001660:	89 50 2c             	mov    %edx,0x2c(%eax)
c0001663:	e8 85 2f 00 00       	call   c00045ed <schedule>
c0001668:	a1 08 ae 00 c0       	mov    0xc000ae08,%eax
c000166d:	83 c0 01             	add    $0x1,%eax
c0001670:	a3 08 ae 00 c0       	mov    %eax,0xc000ae08
c0001675:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001678:	89 04 24             	mov    %eax,(%esp)
c000167b:	e8 ca 1e 00 00       	call   c000354a <set_int_status>
c0001680:	c9                   	leave  
c0001681:	c3                   	ret    

c0001682 <idt_table_init>:
c0001682:	55                   	push   %ebp
c0001683:	89 e5                	mov    %esp,%ebp
c0001685:	83 ec 10             	sub    $0x10,%esp
c0001688:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c000168f:	eb 20                	jmp    c00016b1 <idt_table_init+0x2f>
c0001691:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0001694:	c7 04 85 20 ae 00 c0 	movl   $0xc00015e5,-0x3fff51e0(,%eax,4)
c000169b:	e5 15 00 c0 
c000169f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00016a2:	c7 04 85 e0 a7 00 c0 	movl   $0xc0006e7c,-0x3fff5820(,%eax,4)
c00016a9:	7c 6e 00 c0 
c00016ad:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c00016b1:	81 7d fc 81 00 00 00 	cmpl   $0x81,-0x4(%ebp)
c00016b8:	7e d7                	jle    c0001691 <idt_table_init+0xf>
c00016ba:	c7 05 a0 ae 00 c0 19 	movl   $0xc0001619,0xc000aea0
c00016c1:	16 00 c0 
c00016c4:	c7 05 a4 ae 00 c0 af 	movl   $0xc00054af,0xc000aea4
c00016cb:	54 00 c0 
c00016ce:	c7 05 e0 a7 00 c0 87 	movl   $0xc0006e87,0xc000a7e0
c00016d5:	6e 00 c0 
c00016d8:	c7 05 e4 a7 00 c0 98 	movl   $0xc0006e98,0xc000a7e4
c00016df:	6e 00 c0 
c00016e2:	c7 05 ec a7 00 c0 a2 	movl   $0xc0006ea2,0xc000a7ec
c00016e9:	6e 00 c0 
c00016ec:	c7 05 f0 a7 00 c0 b2 	movl   $0xc0006eb2,0xc000a7f0
c00016f3:	6e 00 c0 
c00016f6:	c7 05 f4 a7 00 c0 bf 	movl   $0xc0006ebf,0xc000a7f4
c00016fd:	6e 00 c0 
c0001700:	c7 05 f8 a7 00 c0 d8 	movl   $0xc0006ed8,0xc000a7f8
c0001707:	6e 00 c0 
c000170a:	c7 05 fc a7 00 c0 eb 	movl   $0xc0006eeb,0xc000a7fc
c0001711:	6e 00 c0 
c0001714:	c7 05 00 a8 00 c0 04 	movl   $0xc0006f04,0xc000a800
c000171b:	6f 00 c0 
c000171e:	c7 05 08 a8 00 c0 15 	movl   $0xc0006f15,0xc000a808
c0001725:	6f 00 c0 
c0001728:	c7 05 0c a8 00 c0 25 	movl   $0xc0006f25,0xc000a80c
c000172f:	6f 00 c0 
c0001732:	c7 05 10 a8 00 c0 3d 	movl   $0xc0006f3d,0xc000a810
c0001739:	6f 00 c0 
c000173c:	c7 05 14 a8 00 c0 55 	movl   $0xc0006f55,0xc000a814
c0001743:	6f 00 c0 
c0001746:	c7 05 18 a8 00 c0 6c 	movl   $0xc0006f6c,0xc000a818
c000174d:	6f 00 c0 
c0001750:	c7 05 20 a8 00 c0 7c 	movl   $0xc0006f7c,0xc000a820
c0001757:	6f 00 c0 
c000175a:	c7 05 24 a8 00 c0 aa 	movl   $0xc0006faa,0xc000a824
c0001761:	6f 00 c0 
c0001764:	c7 05 28 a8 00 c0 be 	movl   $0xc0006fbe,0xc000a828
c000176b:	6f 00 c0 
c000176e:	c7 05 2c a8 00 c0 d0 	movl   $0xc0006fd0,0xc000a82c
c0001775:	6f 00 c0 
c0001778:	c7 05 30 a8 00 c0 f2 	movl   $0xc0006ff2,0xc000a830
c000177f:	6f 00 c0 
c0001782:	90                   	nop
c0001783:	c9                   	leave  
c0001784:	c3                   	ret    

c0001785 <register_int>:
c0001785:	55                   	push   %ebp
c0001786:	89 e5                	mov    %esp,%ebp
c0001788:	8b 45 08             	mov    0x8(%ebp),%eax
c000178b:	8b 55 0c             	mov    0xc(%ebp),%edx
c000178e:	89 14 85 20 ae 00 c0 	mov    %edx,-0x3fff51e0(,%eax,4)
c0001795:	5d                   	pop    %ebp
c0001796:	c3                   	ret    

c0001797 <make_idt_entry>:
c0001797:	55                   	push   %ebp
c0001798:	89 e5                	mov    %esp,%ebp
c000179a:	8b 45 0c             	mov    0xc(%ebp),%eax
c000179d:	c1 e8 10             	shr    $0x10,%eax
c00017a0:	89 c2                	mov    %eax,%edx
c00017a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00017a5:	66 89 50 06          	mov    %dx,0x6(%eax)
c00017a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00017ac:	c6 40 05 ee          	movb   $0xee,0x5(%eax)
c00017b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00017b3:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00017b7:	8b 45 08             	mov    0x8(%ebp),%eax
c00017ba:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c00017c0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00017c3:	89 c2                	mov    %eax,%edx
c00017c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00017c8:	66 89 10             	mov    %dx,(%eax)
c00017cb:	90                   	nop
c00017cc:	5d                   	pop    %ebp
c00017cd:	c3                   	ret    

c00017ce <init_int_des>:
c00017ce:	55                   	push   %ebp
c00017cf:	89 e5                	mov    %esp,%ebp
c00017d1:	83 ec 18             	sub    $0x18,%esp
c00017d4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00017db:	eb 26                	jmp    c0001803 <init_int_des+0x35>
c00017dd:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00017e0:	8b 04 85 00 a0 00 c0 	mov    -0x3fff6000(,%eax,4),%eax
c00017e7:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00017ea:	c1 e2 03             	shl    $0x3,%edx
c00017ed:	81 c2 00 aa 00 c0    	add    $0xc000aa00,%edx
c00017f3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00017f7:	89 14 24             	mov    %edx,(%esp)
c00017fa:	e8 98 ff ff ff       	call   c0001797 <make_idt_entry>
c00017ff:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001803:	81 7d fc 81 00 00 00 	cmpl   $0x81,-0x4(%ebp)
c000180a:	7e d1                	jle    c00017dd <init_int_des+0xf>
c000180c:	90                   	nop
c000180d:	c9                   	leave  
c000180e:	c3                   	ret    

c000180f <init_pic>:
c000180f:	55                   	push   %ebp
c0001810:	89 e5                	mov    %esp,%ebp
c0001812:	83 ec 08             	sub    $0x8,%esp
c0001815:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c000181c:	00 
c000181d:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0001824:	e8 a5 fd ff ff       	call   c00015ce <write_port>
c0001829:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0001830:	00 
c0001831:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0001838:	e8 91 fd ff ff       	call   c00015ce <write_port>
c000183d:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0001844:	00 
c0001845:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c000184c:	e8 7d fd ff ff       	call   c00015ce <write_port>
c0001851:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0001858:	00 
c0001859:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0001860:	e8 69 fd ff ff       	call   c00015ce <write_port>
c0001865:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c000186c:	00 
c000186d:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c0001874:	e8 55 fd ff ff       	call   c00015ce <write_port>
c0001879:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
c0001880:	00 
c0001881:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c0001888:	e8 41 fd ff ff       	call   c00015ce <write_port>
c000188d:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
c0001894:	00 
c0001895:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c000189c:	e8 2d fd ff ff       	call   c00015ce <write_port>
c00018a1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00018a8:	00 
c00018a9:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c00018b0:	e8 19 fd ff ff       	call   c00015ce <write_port>
c00018b5:	c7 44 24 04 f8 00 00 	movl   $0xf8,0x4(%esp)
c00018bc:	00 
c00018bd:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c00018c4:	e8 05 fd ff ff       	call   c00015ce <write_port>
c00018c9:	c7 44 24 04 cf 00 00 	movl   $0xcf,0x4(%esp)
c00018d0:	00 
c00018d1:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c00018d8:	e8 f1 fc ff ff       	call   c00015ce <write_port>
c00018dd:	90                   	nop
c00018de:	c9                   	leave  
c00018df:	c3                   	ret    

c00018e0 <init_timer>:
c00018e0:	55                   	push   %ebp
c00018e1:	89 e5                	mov    %esp,%ebp
c00018e3:	83 ec 1c             	sub    $0x1c,%esp
c00018e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00018e9:	88 45 ec             	mov    %al,-0x14(%ebp)
c00018ec:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c00018f0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00018f4:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
c00018fb:	e8 ce fc ff ff       	call   c00015ce <write_port>
c0001900:	66 c7 45 fe 9b 2e    	movw   $0x2e9b,-0x2(%ebp)
c0001906:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c000190a:	0f b6 c0             	movzbl %al,%eax
c000190d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0001911:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c0001918:	e8 b1 fc ff ff       	call   c00015ce <write_port>
c000191d:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c0001921:	66 c1 e8 08          	shr    $0x8,%ax
c0001925:	0f b6 c0             	movzbl %al,%eax
c0001928:	89 44 24 04          	mov    %eax,0x4(%esp)
c000192c:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c0001933:	e8 96 fc ff ff       	call   c00015ce <write_port>
c0001938:	90                   	nop
c0001939:	c9                   	leave  
c000193a:	c3                   	ret    

c000193b <mtime_sleep>:
c000193b:	55                   	push   %ebp
c000193c:	89 e5                	mov    %esp,%ebp
c000193e:	83 ec 18             	sub    $0x18,%esp
c0001941:	a1 08 ae 00 c0       	mov    0xc000ae08,%eax
c0001946:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001949:	8b 45 08             	mov    0x8(%ebp),%eax
c000194c:	6b c0 64             	imul   $0x64,%eax,%eax
c000194f:	83 e8 01             	sub    $0x1,%eax
c0001952:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
c0001957:	f7 e2                	mul    %edx
c0001959:	89 d0                	mov    %edx,%eax
c000195b:	c1 e8 06             	shr    $0x6,%eax
c000195e:	83 c0 01             	add    $0x1,%eax
c0001961:	89 45 08             	mov    %eax,0x8(%ebp)
c0001964:	a1 08 ae 00 c0       	mov    0xc000ae08,%eax
c0001969:	2b 45 f4             	sub    -0xc(%ebp),%eax
c000196c:	3b 45 08             	cmp    0x8(%ebp),%eax
c000196f:	73 05                	jae    c0001976 <mtime_sleep+0x3b>
c0001971:	e8 09 31 00 00       	call   c0004a7f <thread_yield>
c0001976:	c9                   	leave  
c0001977:	c3                   	ret    

c0001978 <init_int>:
c0001978:	55                   	push   %ebp
c0001979:	89 e5                	mov    %esp,%ebp
c000197b:	56                   	push   %esi
c000197c:	53                   	push   %ebx
c000197d:	83 ec 20             	sub    $0x20,%esp
c0001980:	e8 b3 14 00 00       	call   c0002e38 <int_entry_fill>
c0001985:	e8 44 fe ff ff       	call   c00017ce <init_int_des>
c000198a:	e8 80 fe ff ff       	call   c000180f <init_pic>
c000198f:	e8 ee fc ff ff       	call   c0001682 <idt_table_init>
c0001994:	e8 82 44 00 00       	call   c0005e1b <syscall_table_init>
c0001999:	c7 04 24 34 00 00 00 	movl   $0x34,(%esp)
c00019a0:	e8 3b ff ff ff       	call   c00018e0 <init_timer>
c00019a5:	b8 00 aa 00 c0       	mov    $0xc000aa00,%eax
c00019aa:	ba 00 00 00 00       	mov    $0x0,%edx
c00019af:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c00019b3:	c1 e0 10             	shl    $0x10,%eax
c00019b6:	89 c1                	mov    %eax,%ecx
c00019b8:	81 c9 07 04 00 00    	or     $0x407,%ecx
c00019be:	89 cb                	mov    %ecx,%ebx
c00019c0:	89 d0                	mov    %edx,%eax
c00019c2:	80 cc 00             	or     $0x0,%ah
c00019c5:	89 c6                	mov    %eax,%esi
c00019c7:	89 5d f0             	mov    %ebx,-0x10(%ebp)
c00019ca:	89 75 f4             	mov    %esi,-0xc(%ebp)
c00019cd:	0f 01 5d f0          	lidtl  -0x10(%ebp)
c00019d1:	c7 05 08 ae 00 c0 00 	movl   $0x0,0xc000ae08
c00019d8:	00 00 00 
c00019db:	90                   	nop
c00019dc:	83 c4 20             	add    $0x20,%esp
c00019df:	5b                   	pop    %ebx
c00019e0:	5e                   	pop    %esi
c00019e1:	5d                   	pop    %ebp
c00019e2:	c3                   	ret    
c00019e3:	66 90                	xchg   %ax,%ax
c00019e5:	66 90                	xchg   %ax,%ax
c00019e7:	66 90                	xchg   %ax,%ax
c00019e9:	66 90                	xchg   %ax,%ax
c00019eb:	66 90                	xchg   %ax,%ax
c00019ed:	66 90                	xchg   %ax,%ax
c00019ef:	90                   	nop

c00019f0 <int128_entry>:
c00019f0:	fa                   	cli    
c00019f1:	6a 00                	push   $0x0
c00019f3:	60                   	pusha  
c00019f4:	1e                   	push   %ds
c00019f5:	06                   	push   %es
c00019f6:	0f a0                	push   %fs
c00019f8:	0f a8                	push   %gs
c00019fa:	66 b8 10 00          	mov    $0x10,%ax
c00019fe:	8e d8                	mov    %eax,%ds
c0001a00:	8e c0                	mov    %eax,%es
c0001a02:	8e e0                	mov    %eax,%fs
c0001a04:	b0 20                	mov    $0x20,%al
c0001a06:	e6 20                	out    %al,$0x20
c0001a08:	e6 a0                	out    %al,$0xa0
c0001a0a:	68 80 00 00 00       	push   $0x80
c0001a0f:	8b 5c 24 44          	mov    0x44(%esp),%ebx
c0001a13:	ff 73 0c             	pushl  0xc(%ebx)
c0001a16:	ff 73 08             	pushl  0x8(%ebx)
c0001a19:	ff 73 04             	pushl  0x4(%ebx)
c0001a1c:	8b 33                	mov    (%ebx),%esi
c0001a1e:	c1 e6 02             	shl    $0x2,%esi
c0001a21:	fb                   	sti    
c0001a22:	ff 96 c0 b1 00 c0    	call   *-0x3fff4e40(%esi)
c0001a28:	83 c4 0c             	add    $0xc,%esp
c0001a2b:	89 44 24 30          	mov    %eax,0x30(%esp)
c0001a2f:	eb 00                	jmp    c0001a31 <exit_int>

c0001a31 <exit_int>:
c0001a31:	83 c4 04             	add    $0x4,%esp
c0001a34:	58                   	pop    %eax
c0001a35:	8e e8                	mov    %eax,%gs
c0001a37:	58                   	pop    %eax
c0001a38:	8e e0                	mov    %eax,%fs
c0001a3a:	58                   	pop    %eax
c0001a3b:	8e c0                	mov    %eax,%es
c0001a3d:	58                   	pop    %eax
c0001a3e:	8e d8                	mov    %eax,%ds
c0001a40:	61                   	popa   
c0001a41:	83 c4 04             	add    $0x4,%esp
c0001a44:	cf                   	iret   

c0001a45 <int0_entry>:
c0001a45:	fa                   	cli    
c0001a46:	6a 00                	push   $0x0
c0001a48:	60                   	pusha  
c0001a49:	1e                   	push   %ds
c0001a4a:	06                   	push   %es
c0001a4b:	0f a0                	push   %fs
c0001a4d:	0f a8                	push   %gs
c0001a4f:	66 b8 10 00          	mov    $0x10,%ax
c0001a53:	8e d8                	mov    %eax,%ds
c0001a55:	8e c0                	mov    %eax,%es
c0001a57:	8e e0                	mov    %eax,%fs
c0001a59:	b0 20                	mov    $0x20,%al
c0001a5b:	e6 20                	out    %al,$0x20
c0001a5d:	e6 a0                	out    %al,$0xa0
c0001a5f:	6a 00                	push   $0x0
c0001a61:	fb                   	sti    
c0001a62:	ff 15 20 ae 00 c0    	call   *0xc000ae20
c0001a68:	eb c7                	jmp    c0001a31 <exit_int>

c0001a6a <int1_entry>:
c0001a6a:	fa                   	cli    
c0001a6b:	6a 00                	push   $0x0
c0001a6d:	60                   	pusha  
c0001a6e:	1e                   	push   %ds
c0001a6f:	06                   	push   %es
c0001a70:	0f a0                	push   %fs
c0001a72:	0f a8                	push   %gs
c0001a74:	66 b8 10 00          	mov    $0x10,%ax
c0001a78:	8e d8                	mov    %eax,%ds
c0001a7a:	8e c0                	mov    %eax,%es
c0001a7c:	8e e0                	mov    %eax,%fs
c0001a7e:	b0 20                	mov    $0x20,%al
c0001a80:	e6 20                	out    %al,$0x20
c0001a82:	e6 a0                	out    %al,$0xa0
c0001a84:	6a 01                	push   $0x1
c0001a86:	fb                   	sti    
c0001a87:	ff 15 24 ae 00 c0    	call   *0xc000ae24
c0001a8d:	eb a2                	jmp    c0001a31 <exit_int>

c0001a8f <int2_entry>:
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
c0001aa9:	6a 02                	push   $0x2
c0001aab:	fb                   	sti    
c0001aac:	ff 15 28 ae 00 c0    	call   *0xc000ae28
c0001ab2:	e9 7a ff ff ff       	jmp    c0001a31 <exit_int>

c0001ab7 <int3_entry>:
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
c0001ad1:	6a 03                	push   $0x3
c0001ad3:	fb                   	sti    
c0001ad4:	ff 15 2c ae 00 c0    	call   *0xc000ae2c
c0001ada:	e9 52 ff ff ff       	jmp    c0001a31 <exit_int>

c0001adf <int4_entry>:
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
c0001af9:	6a 04                	push   $0x4
c0001afb:	fb                   	sti    
c0001afc:	ff 15 30 ae 00 c0    	call   *0xc000ae30
c0001b02:	e9 2a ff ff ff       	jmp    c0001a31 <exit_int>

c0001b07 <int5_entry>:
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
c0001b21:	6a 05                	push   $0x5
c0001b23:	fb                   	sti    
c0001b24:	ff 15 34 ae 00 c0    	call   *0xc000ae34
c0001b2a:	e9 02 ff ff ff       	jmp    c0001a31 <exit_int>

c0001b2f <int6_entry>:
c0001b2f:	fa                   	cli    
c0001b30:	6a 00                	push   $0x0
c0001b32:	60                   	pusha  
c0001b33:	1e                   	push   %ds
c0001b34:	06                   	push   %es
c0001b35:	0f a0                	push   %fs
c0001b37:	0f a8                	push   %gs
c0001b39:	66 b8 10 00          	mov    $0x10,%ax
c0001b3d:	8e d8                	mov    %eax,%ds
c0001b3f:	8e c0                	mov    %eax,%es
c0001b41:	8e e0                	mov    %eax,%fs
c0001b43:	b0 20                	mov    $0x20,%al
c0001b45:	e6 20                	out    %al,$0x20
c0001b47:	e6 a0                	out    %al,$0xa0
c0001b49:	6a 06                	push   $0x6
c0001b4b:	fb                   	sti    
c0001b4c:	ff 15 38 ae 00 c0    	call   *0xc000ae38
c0001b52:	e9 da fe ff ff       	jmp    c0001a31 <exit_int>

c0001b57 <int7_entry>:
c0001b57:	fa                   	cli    
c0001b58:	6a 00                	push   $0x0
c0001b5a:	60                   	pusha  
c0001b5b:	1e                   	push   %ds
c0001b5c:	06                   	push   %es
c0001b5d:	0f a0                	push   %fs
c0001b5f:	0f a8                	push   %gs
c0001b61:	66 b8 10 00          	mov    $0x10,%ax
c0001b65:	8e d8                	mov    %eax,%ds
c0001b67:	8e c0                	mov    %eax,%es
c0001b69:	8e e0                	mov    %eax,%fs
c0001b6b:	b0 20                	mov    $0x20,%al
c0001b6d:	e6 20                	out    %al,$0x20
c0001b6f:	e6 a0                	out    %al,$0xa0
c0001b71:	6a 07                	push   $0x7
c0001b73:	fb                   	sti    
c0001b74:	ff 15 3c ae 00 c0    	call   *0xc000ae3c
c0001b7a:	e9 b2 fe ff ff       	jmp    c0001a31 <exit_int>

c0001b7f <int8_entry>:
c0001b7f:	fa                   	cli    
c0001b80:	90                   	nop
c0001b81:	60                   	pusha  
c0001b82:	1e                   	push   %ds
c0001b83:	06                   	push   %es
c0001b84:	0f a0                	push   %fs
c0001b86:	0f a8                	push   %gs
c0001b88:	66 b8 10 00          	mov    $0x10,%ax
c0001b8c:	8e d8                	mov    %eax,%ds
c0001b8e:	8e c0                	mov    %eax,%es
c0001b90:	8e e0                	mov    %eax,%fs
c0001b92:	b0 20                	mov    $0x20,%al
c0001b94:	e6 20                	out    %al,$0x20
c0001b96:	e6 a0                	out    %al,$0xa0
c0001b98:	6a 08                	push   $0x8
c0001b9a:	fb                   	sti    
c0001b9b:	ff 15 40 ae 00 c0    	call   *0xc000ae40
c0001ba1:	e9 8b fe ff ff       	jmp    c0001a31 <exit_int>

c0001ba6 <int9_entry>:
c0001ba6:	fa                   	cli    
c0001ba7:	6a 00                	push   $0x0
c0001ba9:	60                   	pusha  
c0001baa:	1e                   	push   %ds
c0001bab:	06                   	push   %es
c0001bac:	0f a0                	push   %fs
c0001bae:	0f a8                	push   %gs
c0001bb0:	66 b8 10 00          	mov    $0x10,%ax
c0001bb4:	8e d8                	mov    %eax,%ds
c0001bb6:	8e c0                	mov    %eax,%es
c0001bb8:	8e e0                	mov    %eax,%fs
c0001bba:	b0 20                	mov    $0x20,%al
c0001bbc:	e6 20                	out    %al,$0x20
c0001bbe:	e6 a0                	out    %al,$0xa0
c0001bc0:	6a 09                	push   $0x9
c0001bc2:	fb                   	sti    
c0001bc3:	ff 15 44 ae 00 c0    	call   *0xc000ae44
c0001bc9:	e9 63 fe ff ff       	jmp    c0001a31 <exit_int>

c0001bce <int10_entry>:
c0001bce:	fa                   	cli    
c0001bcf:	90                   	nop
c0001bd0:	60                   	pusha  
c0001bd1:	1e                   	push   %ds
c0001bd2:	06                   	push   %es
c0001bd3:	0f a0                	push   %fs
c0001bd5:	0f a8                	push   %gs
c0001bd7:	66 b8 10 00          	mov    $0x10,%ax
c0001bdb:	8e d8                	mov    %eax,%ds
c0001bdd:	8e c0                	mov    %eax,%es
c0001bdf:	8e e0                	mov    %eax,%fs
c0001be1:	b0 20                	mov    $0x20,%al
c0001be3:	e6 20                	out    %al,$0x20
c0001be5:	e6 a0                	out    %al,$0xa0
c0001be7:	6a 0a                	push   $0xa
c0001be9:	fb                   	sti    
c0001bea:	ff 15 48 ae 00 c0    	call   *0xc000ae48
c0001bf0:	e9 3c fe ff ff       	jmp    c0001a31 <exit_int>

c0001bf5 <int11_entry>:
c0001bf5:	fa                   	cli    
c0001bf6:	90                   	nop
c0001bf7:	60                   	pusha  
c0001bf8:	1e                   	push   %ds
c0001bf9:	06                   	push   %es
c0001bfa:	0f a0                	push   %fs
c0001bfc:	0f a8                	push   %gs
c0001bfe:	66 b8 10 00          	mov    $0x10,%ax
c0001c02:	8e d8                	mov    %eax,%ds
c0001c04:	8e c0                	mov    %eax,%es
c0001c06:	8e e0                	mov    %eax,%fs
c0001c08:	b0 20                	mov    $0x20,%al
c0001c0a:	e6 20                	out    %al,$0x20
c0001c0c:	e6 a0                	out    %al,$0xa0
c0001c0e:	6a 0b                	push   $0xb
c0001c10:	fb                   	sti    
c0001c11:	ff 15 4c ae 00 c0    	call   *0xc000ae4c
c0001c17:	e9 15 fe ff ff       	jmp    c0001a31 <exit_int>

c0001c1c <int12_entry>:
c0001c1c:	fa                   	cli    
c0001c1d:	90                   	nop
c0001c1e:	60                   	pusha  
c0001c1f:	1e                   	push   %ds
c0001c20:	06                   	push   %es
c0001c21:	0f a0                	push   %fs
c0001c23:	0f a8                	push   %gs
c0001c25:	66 b8 10 00          	mov    $0x10,%ax
c0001c29:	8e d8                	mov    %eax,%ds
c0001c2b:	8e c0                	mov    %eax,%es
c0001c2d:	8e e0                	mov    %eax,%fs
c0001c2f:	b0 20                	mov    $0x20,%al
c0001c31:	e6 20                	out    %al,$0x20
c0001c33:	e6 a0                	out    %al,$0xa0
c0001c35:	6a 0c                	push   $0xc
c0001c37:	fb                   	sti    
c0001c38:	ff 15 50 ae 00 c0    	call   *0xc000ae50
c0001c3e:	e9 ee fd ff ff       	jmp    c0001a31 <exit_int>

c0001c43 <int13_entry>:
c0001c43:	fa                   	cli    
c0001c44:	90                   	nop
c0001c45:	60                   	pusha  
c0001c46:	1e                   	push   %ds
c0001c47:	06                   	push   %es
c0001c48:	0f a0                	push   %fs
c0001c4a:	0f a8                	push   %gs
c0001c4c:	66 b8 10 00          	mov    $0x10,%ax
c0001c50:	8e d8                	mov    %eax,%ds
c0001c52:	8e c0                	mov    %eax,%es
c0001c54:	8e e0                	mov    %eax,%fs
c0001c56:	b0 20                	mov    $0x20,%al
c0001c58:	e6 20                	out    %al,$0x20
c0001c5a:	e6 a0                	out    %al,$0xa0
c0001c5c:	6a 0d                	push   $0xd
c0001c5e:	fb                   	sti    
c0001c5f:	ff 15 54 ae 00 c0    	call   *0xc000ae54
c0001c65:	e9 c7 fd ff ff       	jmp    c0001a31 <exit_int>

c0001c6a <int14_entry>:
c0001c6a:	fa                   	cli    
c0001c6b:	90                   	nop
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
c0001c83:	6a 0e                	push   $0xe
c0001c85:	fb                   	sti    
c0001c86:	ff 15 58 ae 00 c0    	call   *0xc000ae58
c0001c8c:	e9 a0 fd ff ff       	jmp    c0001a31 <exit_int>

c0001c91 <int15_entry>:
c0001c91:	fa                   	cli    
c0001c92:	6a 00                	push   $0x0
c0001c94:	60                   	pusha  
c0001c95:	1e                   	push   %ds
c0001c96:	06                   	push   %es
c0001c97:	0f a0                	push   %fs
c0001c99:	0f a8                	push   %gs
c0001c9b:	66 b8 10 00          	mov    $0x10,%ax
c0001c9f:	8e d8                	mov    %eax,%ds
c0001ca1:	8e c0                	mov    %eax,%es
c0001ca3:	8e e0                	mov    %eax,%fs
c0001ca5:	b0 20                	mov    $0x20,%al
c0001ca7:	e6 20                	out    %al,$0x20
c0001ca9:	e6 a0                	out    %al,$0xa0
c0001cab:	6a 0f                	push   $0xf
c0001cad:	fb                   	sti    
c0001cae:	ff 15 5c ae 00 c0    	call   *0xc000ae5c
c0001cb4:	e9 78 fd ff ff       	jmp    c0001a31 <exit_int>

c0001cb9 <int16_entry>:
c0001cb9:	fa                   	cli    
c0001cba:	6a 00                	push   $0x0
c0001cbc:	60                   	pusha  
c0001cbd:	1e                   	push   %ds
c0001cbe:	06                   	push   %es
c0001cbf:	0f a0                	push   %fs
c0001cc1:	0f a8                	push   %gs
c0001cc3:	66 b8 10 00          	mov    $0x10,%ax
c0001cc7:	8e d8                	mov    %eax,%ds
c0001cc9:	8e c0                	mov    %eax,%es
c0001ccb:	8e e0                	mov    %eax,%fs
c0001ccd:	b0 20                	mov    $0x20,%al
c0001ccf:	e6 20                	out    %al,$0x20
c0001cd1:	e6 a0                	out    %al,$0xa0
c0001cd3:	6a 10                	push   $0x10
c0001cd5:	fb                   	sti    
c0001cd6:	ff 15 60 ae 00 c0    	call   *0xc000ae60
c0001cdc:	e9 50 fd ff ff       	jmp    c0001a31 <exit_int>

c0001ce1 <int17_entry>:
c0001ce1:	fa                   	cli    
c0001ce2:	90                   	nop
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
c0001cfa:	6a 11                	push   $0x11
c0001cfc:	fb                   	sti    
c0001cfd:	ff 15 64 ae 00 c0    	call   *0xc000ae64
c0001d03:	e9 29 fd ff ff       	jmp    c0001a31 <exit_int>

c0001d08 <int18_entry>:
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
c0001d22:	6a 12                	push   $0x12
c0001d24:	fb                   	sti    
c0001d25:	ff 15 68 ae 00 c0    	call   *0xc000ae68
c0001d2b:	e9 01 fd ff ff       	jmp    c0001a31 <exit_int>

c0001d30 <int19_entry>:
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
c0001d4a:	6a 13                	push   $0x13
c0001d4c:	fb                   	sti    
c0001d4d:	ff 15 6c ae 00 c0    	call   *0xc000ae6c
c0001d53:	e9 d9 fc ff ff       	jmp    c0001a31 <exit_int>

c0001d58 <int20_entry>:
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
c0001d72:	6a 14                	push   $0x14
c0001d74:	fb                   	sti    
c0001d75:	ff 15 70 ae 00 c0    	call   *0xc000ae70
c0001d7b:	e9 b1 fc ff ff       	jmp    c0001a31 <exit_int>

c0001d80 <int21_entry>:
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
c0001d9a:	6a 15                	push   $0x15
c0001d9c:	fb                   	sti    
c0001d9d:	ff 15 74 ae 00 c0    	call   *0xc000ae74
c0001da3:	e9 89 fc ff ff       	jmp    c0001a31 <exit_int>

c0001da8 <int22_entry>:
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
c0001dc2:	6a 16                	push   $0x16
c0001dc4:	fb                   	sti    
c0001dc5:	ff 15 78 ae 00 c0    	call   *0xc000ae78
c0001dcb:	e9 61 fc ff ff       	jmp    c0001a31 <exit_int>

c0001dd0 <int23_entry>:
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
c0001dea:	6a 17                	push   $0x17
c0001dec:	fb                   	sti    
c0001ded:	ff 15 7c ae 00 c0    	call   *0xc000ae7c
c0001df3:	e9 39 fc ff ff       	jmp    c0001a31 <exit_int>

c0001df8 <int24_entry>:
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
c0001e12:	6a 18                	push   $0x18
c0001e14:	fb                   	sti    
c0001e15:	ff 15 80 ae 00 c0    	call   *0xc000ae80
c0001e1b:	e9 11 fc ff ff       	jmp    c0001a31 <exit_int>

c0001e20 <int25_entry>:
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
c0001e3a:	6a 19                	push   $0x19
c0001e3c:	fb                   	sti    
c0001e3d:	ff 15 84 ae 00 c0    	call   *0xc000ae84
c0001e43:	e9 e9 fb ff ff       	jmp    c0001a31 <exit_int>

c0001e48 <int26_entry>:
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
c0001e62:	6a 1a                	push   $0x1a
c0001e64:	fb                   	sti    
c0001e65:	ff 15 88 ae 00 c0    	call   *0xc000ae88
c0001e6b:	e9 c1 fb ff ff       	jmp    c0001a31 <exit_int>

c0001e70 <int27_entry>:
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
c0001e8a:	6a 1b                	push   $0x1b
c0001e8c:	fb                   	sti    
c0001e8d:	ff 15 8c ae 00 c0    	call   *0xc000ae8c
c0001e93:	e9 99 fb ff ff       	jmp    c0001a31 <exit_int>

c0001e98 <int28_entry>:
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
c0001eb2:	6a 1c                	push   $0x1c
c0001eb4:	fb                   	sti    
c0001eb5:	ff 15 90 ae 00 c0    	call   *0xc000ae90
c0001ebb:	e9 71 fb ff ff       	jmp    c0001a31 <exit_int>

c0001ec0 <int29_entry>:
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
c0001eda:	6a 1d                	push   $0x1d
c0001edc:	fb                   	sti    
c0001edd:	ff 15 94 ae 00 c0    	call   *0xc000ae94
c0001ee3:	e9 49 fb ff ff       	jmp    c0001a31 <exit_int>

c0001ee8 <int30_entry>:
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
c0001f02:	6a 1e                	push   $0x1e
c0001f04:	fb                   	sti    
c0001f05:	ff 15 98 ae 00 c0    	call   *0xc000ae98
c0001f0b:	e9 21 fb ff ff       	jmp    c0001a31 <exit_int>

c0001f10 <int31_entry>:
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
c0001f2a:	6a 1f                	push   $0x1f
c0001f2c:	fb                   	sti    
c0001f2d:	ff 15 9c ae 00 c0    	call   *0xc000ae9c
c0001f33:	e9 f9 fa ff ff       	jmp    c0001a31 <exit_int>

c0001f38 <int32_entry>:
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
c0001f52:	6a 20                	push   $0x20
c0001f54:	fb                   	sti    
c0001f55:	ff 15 a0 ae 00 c0    	call   *0xc000aea0
c0001f5b:	e9 d1 fa ff ff       	jmp    c0001a31 <exit_int>

c0001f60 <int33_entry>:
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
c0001f7a:	6a 21                	push   $0x21
c0001f7c:	fb                   	sti    
c0001f7d:	ff 15 a4 ae 00 c0    	call   *0xc000aea4
c0001f83:	e9 a9 fa ff ff       	jmp    c0001a31 <exit_int>

c0001f88 <int34_entry>:
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
c0001fa2:	6a 22                	push   $0x22
c0001fa4:	fb                   	sti    
c0001fa5:	ff 15 a8 ae 00 c0    	call   *0xc000aea8
c0001fab:	e9 81 fa ff ff       	jmp    c0001a31 <exit_int>

c0001fb0 <int35_entry>:
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
c0001fca:	6a 23                	push   $0x23
c0001fcc:	fb                   	sti    
c0001fcd:	ff 15 ac ae 00 c0    	call   *0xc000aeac
c0001fd3:	e9 59 fa ff ff       	jmp    c0001a31 <exit_int>

c0001fd8 <int36_entry>:
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
c0001ff2:	6a 24                	push   $0x24
c0001ff4:	fb                   	sti    
c0001ff5:	ff 15 b0 ae 00 c0    	call   *0xc000aeb0
c0001ffb:	e9 31 fa ff ff       	jmp    c0001a31 <exit_int>

c0002000 <int37_entry>:
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
c000201a:	6a 25                	push   $0x25
c000201c:	fb                   	sti    
c000201d:	ff 15 b4 ae 00 c0    	call   *0xc000aeb4
c0002023:	e9 09 fa ff ff       	jmp    c0001a31 <exit_int>

c0002028 <int38_entry>:
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
c0002042:	6a 26                	push   $0x26
c0002044:	fb                   	sti    
c0002045:	ff 15 b8 ae 00 c0    	call   *0xc000aeb8
c000204b:	e9 e1 f9 ff ff       	jmp    c0001a31 <exit_int>

c0002050 <int39_entry>:
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
c000206a:	6a 27                	push   $0x27
c000206c:	fb                   	sti    
c000206d:	ff 15 bc ae 00 c0    	call   *0xc000aebc
c0002073:	e9 b9 f9 ff ff       	jmp    c0001a31 <exit_int>

c0002078 <int40_entry>:
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
c0002092:	6a 28                	push   $0x28
c0002094:	fb                   	sti    
c0002095:	ff 15 c0 ae 00 c0    	call   *0xc000aec0
c000209b:	e9 91 f9 ff ff       	jmp    c0001a31 <exit_int>

c00020a0 <int41_entry>:
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
c00020ba:	6a 29                	push   $0x29
c00020bc:	fb                   	sti    
c00020bd:	ff 15 c4 ae 00 c0    	call   *0xc000aec4
c00020c3:	e9 69 f9 ff ff       	jmp    c0001a31 <exit_int>

c00020c8 <int42_entry>:
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
c00020e2:	6a 2a                	push   $0x2a
c00020e4:	fb                   	sti    
c00020e5:	ff 15 c8 ae 00 c0    	call   *0xc000aec8
c00020eb:	e9 41 f9 ff ff       	jmp    c0001a31 <exit_int>

c00020f0 <int43_entry>:
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
c000210a:	6a 2b                	push   $0x2b
c000210c:	fb                   	sti    
c000210d:	ff 15 cc ae 00 c0    	call   *0xc000aecc
c0002113:	e9 19 f9 ff ff       	jmp    c0001a31 <exit_int>

c0002118 <int44_entry>:
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
c0002132:	6a 2c                	push   $0x2c
c0002134:	fb                   	sti    
c0002135:	ff 15 d0 ae 00 c0    	call   *0xc000aed0
c000213b:	e9 f1 f8 ff ff       	jmp    c0001a31 <exit_int>

c0002140 <int45_entry>:
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
c000215a:	6a 2d                	push   $0x2d
c000215c:	fb                   	sti    
c000215d:	ff 15 d4 ae 00 c0    	call   *0xc000aed4
c0002163:	e9 c9 f8 ff ff       	jmp    c0001a31 <exit_int>

c0002168 <int46_entry>:
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
c0002182:	6a 2e                	push   $0x2e
c0002184:	fb                   	sti    
c0002185:	ff 15 d8 ae 00 c0    	call   *0xc000aed8
c000218b:	e9 a1 f8 ff ff       	jmp    c0001a31 <exit_int>

c0002190 <int47_entry>:
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
c00021aa:	6a 2f                	push   $0x2f
c00021ac:	fb                   	sti    
c00021ad:	ff 15 dc ae 00 c0    	call   *0xc000aedc
c00021b3:	e9 79 f8 ff ff       	jmp    c0001a31 <exit_int>

c00021b8 <int48_entry>:
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
c00021d2:	6a 30                	push   $0x30
c00021d4:	fb                   	sti    
c00021d5:	ff 15 e0 ae 00 c0    	call   *0xc000aee0
c00021db:	e9 51 f8 ff ff       	jmp    c0001a31 <exit_int>

c00021e0 <int49_entry>:
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
c00021fa:	6a 31                	push   $0x31
c00021fc:	fb                   	sti    
c00021fd:	ff 15 e4 ae 00 c0    	call   *0xc000aee4
c0002203:	e9 29 f8 ff ff       	jmp    c0001a31 <exit_int>

c0002208 <int50_entry>:
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
c0002222:	6a 32                	push   $0x32
c0002224:	fb                   	sti    
c0002225:	ff 15 e8 ae 00 c0    	call   *0xc000aee8
c000222b:	e9 01 f8 ff ff       	jmp    c0001a31 <exit_int>

c0002230 <int51_entry>:
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
c000224a:	6a 33                	push   $0x33
c000224c:	fb                   	sti    
c000224d:	ff 15 ec ae 00 c0    	call   *0xc000aeec
c0002253:	e9 d9 f7 ff ff       	jmp    c0001a31 <exit_int>

c0002258 <int52_entry>:
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
c0002272:	6a 34                	push   $0x34
c0002274:	fb                   	sti    
c0002275:	ff 15 f0 ae 00 c0    	call   *0xc000aef0
c000227b:	e9 b1 f7 ff ff       	jmp    c0001a31 <exit_int>

c0002280 <int53_entry>:
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
c000229a:	6a 35                	push   $0x35
c000229c:	fb                   	sti    
c000229d:	ff 15 f4 ae 00 c0    	call   *0xc000aef4
c00022a3:	e9 89 f7 ff ff       	jmp    c0001a31 <exit_int>

c00022a8 <int54_entry>:
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
c00022c2:	6a 36                	push   $0x36
c00022c4:	fb                   	sti    
c00022c5:	ff 15 f8 ae 00 c0    	call   *0xc000aef8
c00022cb:	e9 61 f7 ff ff       	jmp    c0001a31 <exit_int>

c00022d0 <int55_entry>:
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
c00022ea:	6a 37                	push   $0x37
c00022ec:	fb                   	sti    
c00022ed:	ff 15 fc ae 00 c0    	call   *0xc000aefc
c00022f3:	e9 39 f7 ff ff       	jmp    c0001a31 <exit_int>

c00022f8 <int56_entry>:
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
c0002312:	6a 38                	push   $0x38
c0002314:	fb                   	sti    
c0002315:	ff 15 00 af 00 c0    	call   *0xc000af00
c000231b:	e9 11 f7 ff ff       	jmp    c0001a31 <exit_int>

c0002320 <int57_entry>:
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
c000233a:	6a 39                	push   $0x39
c000233c:	fb                   	sti    
c000233d:	ff 15 04 af 00 c0    	call   *0xc000af04
c0002343:	e9 e9 f6 ff ff       	jmp    c0001a31 <exit_int>

c0002348 <int58_entry>:
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
c0002362:	6a 3a                	push   $0x3a
c0002364:	fb                   	sti    
c0002365:	ff 15 08 af 00 c0    	call   *0xc000af08
c000236b:	e9 c1 f6 ff ff       	jmp    c0001a31 <exit_int>

c0002370 <int59_entry>:
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
c000238a:	6a 3b                	push   $0x3b
c000238c:	fb                   	sti    
c000238d:	ff 15 0c af 00 c0    	call   *0xc000af0c
c0002393:	e9 99 f6 ff ff       	jmp    c0001a31 <exit_int>

c0002398 <int60_entry>:
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
c00023b2:	6a 3c                	push   $0x3c
c00023b4:	fb                   	sti    
c00023b5:	ff 15 10 af 00 c0    	call   *0xc000af10
c00023bb:	e9 71 f6 ff ff       	jmp    c0001a31 <exit_int>

c00023c0 <int61_entry>:
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
c00023da:	6a 3d                	push   $0x3d
c00023dc:	fb                   	sti    
c00023dd:	ff 15 14 af 00 c0    	call   *0xc000af14
c00023e3:	e9 49 f6 ff ff       	jmp    c0001a31 <exit_int>

c00023e8 <int62_entry>:
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
c0002402:	6a 3e                	push   $0x3e
c0002404:	fb                   	sti    
c0002405:	ff 15 18 af 00 c0    	call   *0xc000af18
c000240b:	e9 21 f6 ff ff       	jmp    c0001a31 <exit_int>

c0002410 <int63_entry>:
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
c000242a:	6a 3f                	push   $0x3f
c000242c:	fb                   	sti    
c000242d:	ff 15 1c af 00 c0    	call   *0xc000af1c
c0002433:	e9 f9 f5 ff ff       	jmp    c0001a31 <exit_int>

c0002438 <int64_entry>:
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
c0002452:	6a 40                	push   $0x40
c0002454:	fb                   	sti    
c0002455:	ff 15 20 af 00 c0    	call   *0xc000af20
c000245b:	e9 d1 f5 ff ff       	jmp    c0001a31 <exit_int>

c0002460 <int65_entry>:
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
c000247a:	6a 41                	push   $0x41
c000247c:	fb                   	sti    
c000247d:	ff 15 24 af 00 c0    	call   *0xc000af24
c0002483:	e9 a9 f5 ff ff       	jmp    c0001a31 <exit_int>

c0002488 <int66_entry>:
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
c00024a2:	6a 42                	push   $0x42
c00024a4:	fb                   	sti    
c00024a5:	ff 15 28 af 00 c0    	call   *0xc000af28
c00024ab:	e9 81 f5 ff ff       	jmp    c0001a31 <exit_int>

c00024b0 <int67_entry>:
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
c00024ca:	6a 43                	push   $0x43
c00024cc:	fb                   	sti    
c00024cd:	ff 15 2c af 00 c0    	call   *0xc000af2c
c00024d3:	e9 59 f5 ff ff       	jmp    c0001a31 <exit_int>

c00024d8 <int68_entry>:
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
c00024f2:	6a 44                	push   $0x44
c00024f4:	fb                   	sti    
c00024f5:	ff 15 30 af 00 c0    	call   *0xc000af30
c00024fb:	e9 31 f5 ff ff       	jmp    c0001a31 <exit_int>

c0002500 <int69_entry>:
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
c000251a:	6a 45                	push   $0x45
c000251c:	fb                   	sti    
c000251d:	ff 15 34 af 00 c0    	call   *0xc000af34
c0002523:	e9 09 f5 ff ff       	jmp    c0001a31 <exit_int>

c0002528 <int70_entry>:
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
c0002542:	6a 46                	push   $0x46
c0002544:	fb                   	sti    
c0002545:	ff 15 38 af 00 c0    	call   *0xc000af38
c000254b:	e9 e1 f4 ff ff       	jmp    c0001a31 <exit_int>

c0002550 <int71_entry>:
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
c000256a:	6a 47                	push   $0x47
c000256c:	fb                   	sti    
c000256d:	ff 15 3c af 00 c0    	call   *0xc000af3c
c0002573:	e9 b9 f4 ff ff       	jmp    c0001a31 <exit_int>

c0002578 <int72_entry>:
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
c0002592:	6a 48                	push   $0x48
c0002594:	fb                   	sti    
c0002595:	ff 15 40 af 00 c0    	call   *0xc000af40
c000259b:	e9 91 f4 ff ff       	jmp    c0001a31 <exit_int>

c00025a0 <int73_entry>:
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
c00025ba:	6a 49                	push   $0x49
c00025bc:	fb                   	sti    
c00025bd:	ff 15 44 af 00 c0    	call   *0xc000af44
c00025c3:	e9 69 f4 ff ff       	jmp    c0001a31 <exit_int>

c00025c8 <int74_entry>:
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
c00025e2:	6a 4a                	push   $0x4a
c00025e4:	fb                   	sti    
c00025e5:	ff 15 48 af 00 c0    	call   *0xc000af48
c00025eb:	e9 41 f4 ff ff       	jmp    c0001a31 <exit_int>

c00025f0 <int75_entry>:
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
c000260a:	6a 4b                	push   $0x4b
c000260c:	fb                   	sti    
c000260d:	ff 15 4c af 00 c0    	call   *0xc000af4c
c0002613:	e9 19 f4 ff ff       	jmp    c0001a31 <exit_int>

c0002618 <int76_entry>:
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
c0002632:	6a 4c                	push   $0x4c
c0002634:	fb                   	sti    
c0002635:	ff 15 50 af 00 c0    	call   *0xc000af50
c000263b:	e9 f1 f3 ff ff       	jmp    c0001a31 <exit_int>

c0002640 <int77_entry>:
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
c000265a:	6a 4d                	push   $0x4d
c000265c:	fb                   	sti    
c000265d:	ff 15 54 af 00 c0    	call   *0xc000af54
c0002663:	e9 c9 f3 ff ff       	jmp    c0001a31 <exit_int>

c0002668 <int78_entry>:
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
c0002682:	6a 4e                	push   $0x4e
c0002684:	fb                   	sti    
c0002685:	ff 15 58 af 00 c0    	call   *0xc000af58
c000268b:	e9 a1 f3 ff ff       	jmp    c0001a31 <exit_int>

c0002690 <int79_entry>:
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
c00026aa:	6a 4f                	push   $0x4f
c00026ac:	fb                   	sti    
c00026ad:	ff 15 5c af 00 c0    	call   *0xc000af5c
c00026b3:	e9 79 f3 ff ff       	jmp    c0001a31 <exit_int>

c00026b8 <int80_entry>:
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
c00026d2:	6a 50                	push   $0x50
c00026d4:	fb                   	sti    
c00026d5:	ff 15 60 af 00 c0    	call   *0xc000af60
c00026db:	e9 51 f3 ff ff       	jmp    c0001a31 <exit_int>

c00026e0 <int81_entry>:
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
c00026fa:	6a 51                	push   $0x51
c00026fc:	fb                   	sti    
c00026fd:	ff 15 64 af 00 c0    	call   *0xc000af64
c0002703:	e9 29 f3 ff ff       	jmp    c0001a31 <exit_int>

c0002708 <int82_entry>:
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
c0002722:	6a 52                	push   $0x52
c0002724:	fb                   	sti    
c0002725:	ff 15 68 af 00 c0    	call   *0xc000af68
c000272b:	e9 01 f3 ff ff       	jmp    c0001a31 <exit_int>

c0002730 <int83_entry>:
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
c000274a:	6a 53                	push   $0x53
c000274c:	fb                   	sti    
c000274d:	ff 15 6c af 00 c0    	call   *0xc000af6c
c0002753:	e9 d9 f2 ff ff       	jmp    c0001a31 <exit_int>

c0002758 <int84_entry>:
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
c0002772:	6a 54                	push   $0x54
c0002774:	fb                   	sti    
c0002775:	ff 15 70 af 00 c0    	call   *0xc000af70
c000277b:	e9 b1 f2 ff ff       	jmp    c0001a31 <exit_int>

c0002780 <int85_entry>:
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
c000279a:	6a 55                	push   $0x55
c000279c:	fb                   	sti    
c000279d:	ff 15 74 af 00 c0    	call   *0xc000af74
c00027a3:	e9 89 f2 ff ff       	jmp    c0001a31 <exit_int>

c00027a8 <int86_entry>:
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
c00027c2:	6a 56                	push   $0x56
c00027c4:	fb                   	sti    
c00027c5:	ff 15 78 af 00 c0    	call   *0xc000af78
c00027cb:	e9 61 f2 ff ff       	jmp    c0001a31 <exit_int>

c00027d0 <int87_entry>:
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
c00027ea:	6a 57                	push   $0x57
c00027ec:	fb                   	sti    
c00027ed:	ff 15 7c af 00 c0    	call   *0xc000af7c
c00027f3:	e9 39 f2 ff ff       	jmp    c0001a31 <exit_int>

c00027f8 <int88_entry>:
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
c0002812:	6a 58                	push   $0x58
c0002814:	fb                   	sti    
c0002815:	ff 15 80 af 00 c0    	call   *0xc000af80
c000281b:	e9 11 f2 ff ff       	jmp    c0001a31 <exit_int>

c0002820 <int89_entry>:
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
c000283a:	6a 59                	push   $0x59
c000283c:	fb                   	sti    
c000283d:	ff 15 84 af 00 c0    	call   *0xc000af84
c0002843:	e9 e9 f1 ff ff       	jmp    c0001a31 <exit_int>

c0002848 <int90_entry>:
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
c0002862:	6a 5a                	push   $0x5a
c0002864:	fb                   	sti    
c0002865:	ff 15 88 af 00 c0    	call   *0xc000af88
c000286b:	e9 c1 f1 ff ff       	jmp    c0001a31 <exit_int>

c0002870 <int91_entry>:
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
c000288a:	6a 5b                	push   $0x5b
c000288c:	fb                   	sti    
c000288d:	ff 15 8c af 00 c0    	call   *0xc000af8c
c0002893:	e9 99 f1 ff ff       	jmp    c0001a31 <exit_int>

c0002898 <int92_entry>:
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
c00028b2:	6a 5c                	push   $0x5c
c00028b4:	fb                   	sti    
c00028b5:	ff 15 90 af 00 c0    	call   *0xc000af90
c00028bb:	e9 71 f1 ff ff       	jmp    c0001a31 <exit_int>

c00028c0 <int93_entry>:
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
c00028da:	6a 5d                	push   $0x5d
c00028dc:	fb                   	sti    
c00028dd:	ff 15 94 af 00 c0    	call   *0xc000af94
c00028e3:	e9 49 f1 ff ff       	jmp    c0001a31 <exit_int>

c00028e8 <int94_entry>:
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
c0002902:	6a 5e                	push   $0x5e
c0002904:	fb                   	sti    
c0002905:	ff 15 98 af 00 c0    	call   *0xc000af98
c000290b:	e9 21 f1 ff ff       	jmp    c0001a31 <exit_int>

c0002910 <int95_entry>:
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
c000292a:	6a 5f                	push   $0x5f
c000292c:	fb                   	sti    
c000292d:	ff 15 9c af 00 c0    	call   *0xc000af9c
c0002933:	e9 f9 f0 ff ff       	jmp    c0001a31 <exit_int>

c0002938 <int96_entry>:
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
c0002952:	6a 60                	push   $0x60
c0002954:	fb                   	sti    
c0002955:	ff 15 a0 af 00 c0    	call   *0xc000afa0
c000295b:	e9 d1 f0 ff ff       	jmp    c0001a31 <exit_int>

c0002960 <int97_entry>:
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
c000297a:	6a 61                	push   $0x61
c000297c:	fb                   	sti    
c000297d:	ff 15 a4 af 00 c0    	call   *0xc000afa4
c0002983:	e9 a9 f0 ff ff       	jmp    c0001a31 <exit_int>

c0002988 <int98_entry>:
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
c00029a2:	6a 62                	push   $0x62
c00029a4:	fb                   	sti    
c00029a5:	ff 15 a8 af 00 c0    	call   *0xc000afa8
c00029ab:	e9 81 f0 ff ff       	jmp    c0001a31 <exit_int>

c00029b0 <int99_entry>:
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
c00029ca:	6a 63                	push   $0x63
c00029cc:	fb                   	sti    
c00029cd:	ff 15 ac af 00 c0    	call   *0xc000afac
c00029d3:	e9 59 f0 ff ff       	jmp    c0001a31 <exit_int>

c00029d8 <int100_entry>:
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
c00029f2:	6a 64                	push   $0x64
c00029f4:	fb                   	sti    
c00029f5:	ff 15 b0 af 00 c0    	call   *0xc000afb0
c00029fb:	e9 31 f0 ff ff       	jmp    c0001a31 <exit_int>

c0002a00 <int101_entry>:
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
c0002a1a:	6a 65                	push   $0x65
c0002a1c:	fb                   	sti    
c0002a1d:	ff 15 b4 af 00 c0    	call   *0xc000afb4
c0002a23:	e9 09 f0 ff ff       	jmp    c0001a31 <exit_int>

c0002a28 <int102_entry>:
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
c0002a42:	6a 66                	push   $0x66
c0002a44:	fb                   	sti    
c0002a45:	ff 15 b8 af 00 c0    	call   *0xc000afb8
c0002a4b:	e9 e1 ef ff ff       	jmp    c0001a31 <exit_int>

c0002a50 <int103_entry>:
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
c0002a6a:	6a 67                	push   $0x67
c0002a6c:	fb                   	sti    
c0002a6d:	ff 15 bc af 00 c0    	call   *0xc000afbc
c0002a73:	e9 b9 ef ff ff       	jmp    c0001a31 <exit_int>

c0002a78 <int104_entry>:
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
c0002a92:	6a 68                	push   $0x68
c0002a94:	fb                   	sti    
c0002a95:	ff 15 c0 af 00 c0    	call   *0xc000afc0
c0002a9b:	e9 91 ef ff ff       	jmp    c0001a31 <exit_int>

c0002aa0 <int105_entry>:
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
c0002aba:	6a 69                	push   $0x69
c0002abc:	fb                   	sti    
c0002abd:	ff 15 c4 af 00 c0    	call   *0xc000afc4
c0002ac3:	e9 69 ef ff ff       	jmp    c0001a31 <exit_int>

c0002ac8 <int106_entry>:
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
c0002ae2:	6a 6a                	push   $0x6a
c0002ae4:	fb                   	sti    
c0002ae5:	ff 15 c8 af 00 c0    	call   *0xc000afc8
c0002aeb:	e9 41 ef ff ff       	jmp    c0001a31 <exit_int>

c0002af0 <int107_entry>:
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
c0002b0a:	6a 6b                	push   $0x6b
c0002b0c:	fb                   	sti    
c0002b0d:	ff 15 cc af 00 c0    	call   *0xc000afcc
c0002b13:	e9 19 ef ff ff       	jmp    c0001a31 <exit_int>

c0002b18 <int108_entry>:
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
c0002b32:	6a 6c                	push   $0x6c
c0002b34:	fb                   	sti    
c0002b35:	ff 15 d0 af 00 c0    	call   *0xc000afd0
c0002b3b:	e9 f1 ee ff ff       	jmp    c0001a31 <exit_int>

c0002b40 <int109_entry>:
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
c0002b5a:	6a 6d                	push   $0x6d
c0002b5c:	fb                   	sti    
c0002b5d:	ff 15 d4 af 00 c0    	call   *0xc000afd4
c0002b63:	e9 c9 ee ff ff       	jmp    c0001a31 <exit_int>

c0002b68 <int110_entry>:
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
c0002b82:	6a 6e                	push   $0x6e
c0002b84:	fb                   	sti    
c0002b85:	ff 15 d8 af 00 c0    	call   *0xc000afd8
c0002b8b:	e9 a1 ee ff ff       	jmp    c0001a31 <exit_int>

c0002b90 <int111_entry>:
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
c0002baa:	6a 6f                	push   $0x6f
c0002bac:	fb                   	sti    
c0002bad:	ff 15 dc af 00 c0    	call   *0xc000afdc
c0002bb3:	e9 79 ee ff ff       	jmp    c0001a31 <exit_int>

c0002bb8 <int112_entry>:
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
c0002bd2:	6a 70                	push   $0x70
c0002bd4:	fb                   	sti    
c0002bd5:	ff 15 e0 af 00 c0    	call   *0xc000afe0
c0002bdb:	e9 51 ee ff ff       	jmp    c0001a31 <exit_int>

c0002be0 <int113_entry>:
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
c0002bfa:	6a 71                	push   $0x71
c0002bfc:	fb                   	sti    
c0002bfd:	ff 15 e4 af 00 c0    	call   *0xc000afe4
c0002c03:	e9 29 ee ff ff       	jmp    c0001a31 <exit_int>

c0002c08 <int114_entry>:
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
c0002c22:	6a 72                	push   $0x72
c0002c24:	fb                   	sti    
c0002c25:	ff 15 e8 af 00 c0    	call   *0xc000afe8
c0002c2b:	e9 01 ee ff ff       	jmp    c0001a31 <exit_int>

c0002c30 <int115_entry>:
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
c0002c4a:	6a 73                	push   $0x73
c0002c4c:	fb                   	sti    
c0002c4d:	ff 15 ec af 00 c0    	call   *0xc000afec
c0002c53:	e9 d9 ed ff ff       	jmp    c0001a31 <exit_int>

c0002c58 <int116_entry>:
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
c0002c72:	6a 74                	push   $0x74
c0002c74:	fb                   	sti    
c0002c75:	ff 15 f0 af 00 c0    	call   *0xc000aff0
c0002c7b:	e9 b1 ed ff ff       	jmp    c0001a31 <exit_int>

c0002c80 <int117_entry>:
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
c0002c9a:	6a 75                	push   $0x75
c0002c9c:	fb                   	sti    
c0002c9d:	ff 15 f4 af 00 c0    	call   *0xc000aff4
c0002ca3:	e9 89 ed ff ff       	jmp    c0001a31 <exit_int>

c0002ca8 <int118_entry>:
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
c0002cc2:	6a 76                	push   $0x76
c0002cc4:	fb                   	sti    
c0002cc5:	ff 15 f8 af 00 c0    	call   *0xc000aff8
c0002ccb:	e9 61 ed ff ff       	jmp    c0001a31 <exit_int>

c0002cd0 <int119_entry>:
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
c0002cea:	6a 77                	push   $0x77
c0002cec:	fb                   	sti    
c0002ced:	ff 15 fc af 00 c0    	call   *0xc000affc
c0002cf3:	e9 39 ed ff ff       	jmp    c0001a31 <exit_int>

c0002cf8 <int120_entry>:
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
c0002d12:	6a 78                	push   $0x78
c0002d14:	fb                   	sti    
c0002d15:	ff 15 00 b0 00 c0    	call   *0xc000b000
c0002d1b:	e9 11 ed ff ff       	jmp    c0001a31 <exit_int>

c0002d20 <int121_entry>:
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
c0002d3a:	6a 79                	push   $0x79
c0002d3c:	fb                   	sti    
c0002d3d:	ff 15 04 b0 00 c0    	call   *0xc000b004
c0002d43:	e9 e9 ec ff ff       	jmp    c0001a31 <exit_int>

c0002d48 <int122_entry>:
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
c0002d62:	6a 7a                	push   $0x7a
c0002d64:	fb                   	sti    
c0002d65:	ff 15 08 b0 00 c0    	call   *0xc000b008
c0002d6b:	e9 c1 ec ff ff       	jmp    c0001a31 <exit_int>

c0002d70 <int123_entry>:
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
c0002d8a:	6a 7b                	push   $0x7b
c0002d8c:	fb                   	sti    
c0002d8d:	ff 15 0c b0 00 c0    	call   *0xc000b00c
c0002d93:	e9 99 ec ff ff       	jmp    c0001a31 <exit_int>

c0002d98 <int124_entry>:
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
c0002db2:	6a 7c                	push   $0x7c
c0002db4:	fb                   	sti    
c0002db5:	ff 15 10 b0 00 c0    	call   *0xc000b010
c0002dbb:	e9 71 ec ff ff       	jmp    c0001a31 <exit_int>

c0002dc0 <int125_entry>:
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
c0002dda:	6a 7d                	push   $0x7d
c0002ddc:	fb                   	sti    
c0002ddd:	ff 15 14 b0 00 c0    	call   *0xc000b014
c0002de3:	e9 49 ec ff ff       	jmp    c0001a31 <exit_int>

c0002de8 <int126_entry>:
c0002de8:	fa                   	cli    
c0002de9:	6a 00                	push   $0x0
c0002deb:	60                   	pusha  
c0002dec:	1e                   	push   %ds
c0002ded:	06                   	push   %es
c0002dee:	0f a0                	push   %fs
c0002df0:	0f a8                	push   %gs
c0002df2:	66 b8 10 00          	mov    $0x10,%ax
c0002df6:	8e d8                	mov    %eax,%ds
c0002df8:	8e c0                	mov    %eax,%es
c0002dfa:	8e e0                	mov    %eax,%fs
c0002dfc:	b0 20                	mov    $0x20,%al
c0002dfe:	e6 20                	out    %al,$0x20
c0002e00:	e6 a0                	out    %al,$0xa0
c0002e02:	6a 7e                	push   $0x7e
c0002e04:	fb                   	sti    
c0002e05:	ff 15 18 b0 00 c0    	call   *0xc000b018
c0002e0b:	e9 21 ec ff ff       	jmp    c0001a31 <exit_int>

c0002e10 <int127_entry>:
c0002e10:	fa                   	cli    
c0002e11:	6a 00                	push   $0x0
c0002e13:	60                   	pusha  
c0002e14:	1e                   	push   %ds
c0002e15:	06                   	push   %es
c0002e16:	0f a0                	push   %fs
c0002e18:	0f a8                	push   %gs
c0002e1a:	66 b8 10 00          	mov    $0x10,%ax
c0002e1e:	8e d8                	mov    %eax,%ds
c0002e20:	8e c0                	mov    %eax,%es
c0002e22:	8e e0                	mov    %eax,%fs
c0002e24:	b0 20                	mov    $0x20,%al
c0002e26:	e6 20                	out    %al,$0x20
c0002e28:	e6 a0                	out    %al,$0xa0
c0002e2a:	6a 7f                	push   $0x7f
c0002e2c:	fb                   	sti    
c0002e2d:	ff 15 1c b0 00 c0    	call   *0xc000b01c
c0002e33:	e9 f9 eb ff ff       	jmp    c0001a31 <exit_int>

c0002e38 <int_entry_fill>:
c0002e38:	c7 05 00 a0 00 c0 45 	movl   $0xc0001a45,0xc000a000
c0002e3f:	1a 00 c0 
c0002e42:	c7 05 04 a0 00 c0 6a 	movl   $0xc0001a6a,0xc000a004
c0002e49:	1a 00 c0 
c0002e4c:	c7 05 08 a0 00 c0 8f 	movl   $0xc0001a8f,0xc000a008
c0002e53:	1a 00 c0 
c0002e56:	c7 05 0c a0 00 c0 b7 	movl   $0xc0001ab7,0xc000a00c
c0002e5d:	1a 00 c0 
c0002e60:	c7 05 10 a0 00 c0 df 	movl   $0xc0001adf,0xc000a010
c0002e67:	1a 00 c0 
c0002e6a:	c7 05 14 a0 00 c0 07 	movl   $0xc0001b07,0xc000a014
c0002e71:	1b 00 c0 
c0002e74:	c7 05 18 a0 00 c0 2f 	movl   $0xc0001b2f,0xc000a018
c0002e7b:	1b 00 c0 
c0002e7e:	c7 05 1c a0 00 c0 57 	movl   $0xc0001b57,0xc000a01c
c0002e85:	1b 00 c0 
c0002e88:	c7 05 20 a0 00 c0 7f 	movl   $0xc0001b7f,0xc000a020
c0002e8f:	1b 00 c0 
c0002e92:	c7 05 24 a0 00 c0 a6 	movl   $0xc0001ba6,0xc000a024
c0002e99:	1b 00 c0 
c0002e9c:	c7 05 28 a0 00 c0 ce 	movl   $0xc0001bce,0xc000a028
c0002ea3:	1b 00 c0 
c0002ea6:	c7 05 2c a0 00 c0 f5 	movl   $0xc0001bf5,0xc000a02c
c0002ead:	1b 00 c0 
c0002eb0:	c7 05 30 a0 00 c0 1c 	movl   $0xc0001c1c,0xc000a030
c0002eb7:	1c 00 c0 
c0002eba:	c7 05 34 a0 00 c0 43 	movl   $0xc0001c43,0xc000a034
c0002ec1:	1c 00 c0 
c0002ec4:	c7 05 38 a0 00 c0 6a 	movl   $0xc0001c6a,0xc000a038
c0002ecb:	1c 00 c0 
c0002ece:	c7 05 3c a0 00 c0 91 	movl   $0xc0001c91,0xc000a03c
c0002ed5:	1c 00 c0 
c0002ed8:	c7 05 40 a0 00 c0 b9 	movl   $0xc0001cb9,0xc000a040
c0002edf:	1c 00 c0 
c0002ee2:	c7 05 44 a0 00 c0 e1 	movl   $0xc0001ce1,0xc000a044
c0002ee9:	1c 00 c0 
c0002eec:	c7 05 48 a0 00 c0 08 	movl   $0xc0001d08,0xc000a048
c0002ef3:	1d 00 c0 
c0002ef6:	c7 05 4c a0 00 c0 30 	movl   $0xc0001d30,0xc000a04c
c0002efd:	1d 00 c0 
c0002f00:	c7 05 50 a0 00 c0 58 	movl   $0xc0001d58,0xc000a050
c0002f07:	1d 00 c0 
c0002f0a:	c7 05 54 a0 00 c0 80 	movl   $0xc0001d80,0xc000a054
c0002f11:	1d 00 c0 
c0002f14:	c7 05 58 a0 00 c0 a8 	movl   $0xc0001da8,0xc000a058
c0002f1b:	1d 00 c0 
c0002f1e:	c7 05 5c a0 00 c0 d0 	movl   $0xc0001dd0,0xc000a05c
c0002f25:	1d 00 c0 
c0002f28:	c7 05 60 a0 00 c0 f8 	movl   $0xc0001df8,0xc000a060
c0002f2f:	1d 00 c0 
c0002f32:	c7 05 64 a0 00 c0 20 	movl   $0xc0001e20,0xc000a064
c0002f39:	1e 00 c0 
c0002f3c:	c7 05 68 a0 00 c0 48 	movl   $0xc0001e48,0xc000a068
c0002f43:	1e 00 c0 
c0002f46:	c7 05 6c a0 00 c0 70 	movl   $0xc0001e70,0xc000a06c
c0002f4d:	1e 00 c0 
c0002f50:	c7 05 70 a0 00 c0 98 	movl   $0xc0001e98,0xc000a070
c0002f57:	1e 00 c0 
c0002f5a:	c7 05 74 a0 00 c0 c0 	movl   $0xc0001ec0,0xc000a074
c0002f61:	1e 00 c0 
c0002f64:	c7 05 78 a0 00 c0 e8 	movl   $0xc0001ee8,0xc000a078
c0002f6b:	1e 00 c0 
c0002f6e:	c7 05 7c a0 00 c0 10 	movl   $0xc0001f10,0xc000a07c
c0002f75:	1f 00 c0 
c0002f78:	c7 05 80 a0 00 c0 38 	movl   $0xc0001f38,0xc000a080
c0002f7f:	1f 00 c0 
c0002f82:	c7 05 84 a0 00 c0 60 	movl   $0xc0001f60,0xc000a084
c0002f89:	1f 00 c0 
c0002f8c:	c7 05 88 a0 00 c0 88 	movl   $0xc0001f88,0xc000a088
c0002f93:	1f 00 c0 
c0002f96:	c7 05 8c a0 00 c0 b0 	movl   $0xc0001fb0,0xc000a08c
c0002f9d:	1f 00 c0 
c0002fa0:	c7 05 90 a0 00 c0 d8 	movl   $0xc0001fd8,0xc000a090
c0002fa7:	1f 00 c0 
c0002faa:	c7 05 94 a0 00 c0 00 	movl   $0xc0002000,0xc000a094
c0002fb1:	20 00 c0 
c0002fb4:	c7 05 98 a0 00 c0 28 	movl   $0xc0002028,0xc000a098
c0002fbb:	20 00 c0 
c0002fbe:	c7 05 9c a0 00 c0 50 	movl   $0xc0002050,0xc000a09c
c0002fc5:	20 00 c0 
c0002fc8:	c7 05 a0 a0 00 c0 78 	movl   $0xc0002078,0xc000a0a0
c0002fcf:	20 00 c0 
c0002fd2:	c7 05 a4 a0 00 c0 a0 	movl   $0xc00020a0,0xc000a0a4
c0002fd9:	20 00 c0 
c0002fdc:	c7 05 a8 a0 00 c0 c8 	movl   $0xc00020c8,0xc000a0a8
c0002fe3:	20 00 c0 
c0002fe6:	c7 05 ac a0 00 c0 f0 	movl   $0xc00020f0,0xc000a0ac
c0002fed:	20 00 c0 
c0002ff0:	c7 05 b0 a0 00 c0 18 	movl   $0xc0002118,0xc000a0b0
c0002ff7:	21 00 c0 
c0002ffa:	c7 05 b4 a0 00 c0 40 	movl   $0xc0002140,0xc000a0b4
c0003001:	21 00 c0 
c0003004:	c7 05 b8 a0 00 c0 68 	movl   $0xc0002168,0xc000a0b8
c000300b:	21 00 c0 
c000300e:	c7 05 bc a0 00 c0 90 	movl   $0xc0002190,0xc000a0bc
c0003015:	21 00 c0 
c0003018:	c7 05 c0 a0 00 c0 b8 	movl   $0xc00021b8,0xc000a0c0
c000301f:	21 00 c0 
c0003022:	c7 05 c4 a0 00 c0 e0 	movl   $0xc00021e0,0xc000a0c4
c0003029:	21 00 c0 
c000302c:	c7 05 c8 a0 00 c0 08 	movl   $0xc0002208,0xc000a0c8
c0003033:	22 00 c0 
c0003036:	c7 05 cc a0 00 c0 30 	movl   $0xc0002230,0xc000a0cc
c000303d:	22 00 c0 
c0003040:	c7 05 d0 a0 00 c0 58 	movl   $0xc0002258,0xc000a0d0
c0003047:	22 00 c0 
c000304a:	c7 05 d4 a0 00 c0 80 	movl   $0xc0002280,0xc000a0d4
c0003051:	22 00 c0 
c0003054:	c7 05 d8 a0 00 c0 a8 	movl   $0xc00022a8,0xc000a0d8
c000305b:	22 00 c0 
c000305e:	c7 05 dc a0 00 c0 d0 	movl   $0xc00022d0,0xc000a0dc
c0003065:	22 00 c0 
c0003068:	c7 05 e0 a0 00 c0 f8 	movl   $0xc00022f8,0xc000a0e0
c000306f:	22 00 c0 
c0003072:	c7 05 e4 a0 00 c0 20 	movl   $0xc0002320,0xc000a0e4
c0003079:	23 00 c0 
c000307c:	c7 05 e8 a0 00 c0 48 	movl   $0xc0002348,0xc000a0e8
c0003083:	23 00 c0 
c0003086:	c7 05 ec a0 00 c0 70 	movl   $0xc0002370,0xc000a0ec
c000308d:	23 00 c0 
c0003090:	c7 05 f0 a0 00 c0 98 	movl   $0xc0002398,0xc000a0f0
c0003097:	23 00 c0 
c000309a:	c7 05 f4 a0 00 c0 c0 	movl   $0xc00023c0,0xc000a0f4
c00030a1:	23 00 c0 
c00030a4:	c7 05 f8 a0 00 c0 e8 	movl   $0xc00023e8,0xc000a0f8
c00030ab:	23 00 c0 
c00030ae:	c7 05 fc a0 00 c0 10 	movl   $0xc0002410,0xc000a0fc
c00030b5:	24 00 c0 
c00030b8:	c7 05 00 a1 00 c0 38 	movl   $0xc0002438,0xc000a100
c00030bf:	24 00 c0 
c00030c2:	c7 05 04 a1 00 c0 60 	movl   $0xc0002460,0xc000a104
c00030c9:	24 00 c0 
c00030cc:	c7 05 08 a1 00 c0 88 	movl   $0xc0002488,0xc000a108
c00030d3:	24 00 c0 
c00030d6:	c7 05 0c a1 00 c0 b0 	movl   $0xc00024b0,0xc000a10c
c00030dd:	24 00 c0 
c00030e0:	c7 05 10 a1 00 c0 d8 	movl   $0xc00024d8,0xc000a110
c00030e7:	24 00 c0 
c00030ea:	c7 05 14 a1 00 c0 00 	movl   $0xc0002500,0xc000a114
c00030f1:	25 00 c0 
c00030f4:	c7 05 18 a1 00 c0 28 	movl   $0xc0002528,0xc000a118
c00030fb:	25 00 c0 
c00030fe:	c7 05 1c a1 00 c0 50 	movl   $0xc0002550,0xc000a11c
c0003105:	25 00 c0 
c0003108:	c7 05 20 a1 00 c0 78 	movl   $0xc0002578,0xc000a120
c000310f:	25 00 c0 
c0003112:	c7 05 24 a1 00 c0 a0 	movl   $0xc00025a0,0xc000a124
c0003119:	25 00 c0 
c000311c:	c7 05 28 a1 00 c0 c8 	movl   $0xc00025c8,0xc000a128
c0003123:	25 00 c0 
c0003126:	c7 05 2c a1 00 c0 f0 	movl   $0xc00025f0,0xc000a12c
c000312d:	25 00 c0 
c0003130:	c7 05 30 a1 00 c0 18 	movl   $0xc0002618,0xc000a130
c0003137:	26 00 c0 
c000313a:	c7 05 34 a1 00 c0 40 	movl   $0xc0002640,0xc000a134
c0003141:	26 00 c0 
c0003144:	c7 05 38 a1 00 c0 68 	movl   $0xc0002668,0xc000a138
c000314b:	26 00 c0 
c000314e:	c7 05 3c a1 00 c0 90 	movl   $0xc0002690,0xc000a13c
c0003155:	26 00 c0 
c0003158:	c7 05 40 a1 00 c0 b8 	movl   $0xc00026b8,0xc000a140
c000315f:	26 00 c0 
c0003162:	c7 05 44 a1 00 c0 e0 	movl   $0xc00026e0,0xc000a144
c0003169:	26 00 c0 
c000316c:	c7 05 48 a1 00 c0 08 	movl   $0xc0002708,0xc000a148
c0003173:	27 00 c0 
c0003176:	c7 05 4c a1 00 c0 30 	movl   $0xc0002730,0xc000a14c
c000317d:	27 00 c0 
c0003180:	c7 05 50 a1 00 c0 58 	movl   $0xc0002758,0xc000a150
c0003187:	27 00 c0 
c000318a:	c7 05 54 a1 00 c0 80 	movl   $0xc0002780,0xc000a154
c0003191:	27 00 c0 
c0003194:	c7 05 58 a1 00 c0 a8 	movl   $0xc00027a8,0xc000a158
c000319b:	27 00 c0 
c000319e:	c7 05 5c a1 00 c0 d0 	movl   $0xc00027d0,0xc000a15c
c00031a5:	27 00 c0 
c00031a8:	c7 05 60 a1 00 c0 f8 	movl   $0xc00027f8,0xc000a160
c00031af:	27 00 c0 
c00031b2:	c7 05 64 a1 00 c0 20 	movl   $0xc0002820,0xc000a164
c00031b9:	28 00 c0 
c00031bc:	c7 05 68 a1 00 c0 48 	movl   $0xc0002848,0xc000a168
c00031c3:	28 00 c0 
c00031c6:	c7 05 6c a1 00 c0 70 	movl   $0xc0002870,0xc000a16c
c00031cd:	28 00 c0 
c00031d0:	c7 05 70 a1 00 c0 98 	movl   $0xc0002898,0xc000a170
c00031d7:	28 00 c0 
c00031da:	c7 05 74 a1 00 c0 c0 	movl   $0xc00028c0,0xc000a174
c00031e1:	28 00 c0 
c00031e4:	c7 05 78 a1 00 c0 e8 	movl   $0xc00028e8,0xc000a178
c00031eb:	28 00 c0 
c00031ee:	c7 05 7c a1 00 c0 10 	movl   $0xc0002910,0xc000a17c
c00031f5:	29 00 c0 
c00031f8:	c7 05 80 a1 00 c0 38 	movl   $0xc0002938,0xc000a180
c00031ff:	29 00 c0 
c0003202:	c7 05 84 a1 00 c0 60 	movl   $0xc0002960,0xc000a184
c0003209:	29 00 c0 
c000320c:	c7 05 88 a1 00 c0 88 	movl   $0xc0002988,0xc000a188
c0003213:	29 00 c0 
c0003216:	c7 05 8c a1 00 c0 b0 	movl   $0xc00029b0,0xc000a18c
c000321d:	29 00 c0 
c0003220:	c7 05 90 a1 00 c0 d8 	movl   $0xc00029d8,0xc000a190
c0003227:	29 00 c0 
c000322a:	c7 05 94 a1 00 c0 00 	movl   $0xc0002a00,0xc000a194
c0003231:	2a 00 c0 
c0003234:	c7 05 98 a1 00 c0 28 	movl   $0xc0002a28,0xc000a198
c000323b:	2a 00 c0 
c000323e:	c7 05 9c a1 00 c0 50 	movl   $0xc0002a50,0xc000a19c
c0003245:	2a 00 c0 
c0003248:	c7 05 a0 a1 00 c0 78 	movl   $0xc0002a78,0xc000a1a0
c000324f:	2a 00 c0 
c0003252:	c7 05 a4 a1 00 c0 a0 	movl   $0xc0002aa0,0xc000a1a4
c0003259:	2a 00 c0 
c000325c:	c7 05 a8 a1 00 c0 c8 	movl   $0xc0002ac8,0xc000a1a8
c0003263:	2a 00 c0 
c0003266:	c7 05 ac a1 00 c0 f0 	movl   $0xc0002af0,0xc000a1ac
c000326d:	2a 00 c0 
c0003270:	c7 05 b0 a1 00 c0 18 	movl   $0xc0002b18,0xc000a1b0
c0003277:	2b 00 c0 
c000327a:	c7 05 b4 a1 00 c0 40 	movl   $0xc0002b40,0xc000a1b4
c0003281:	2b 00 c0 
c0003284:	c7 05 b8 a1 00 c0 68 	movl   $0xc0002b68,0xc000a1b8
c000328b:	2b 00 c0 
c000328e:	c7 05 bc a1 00 c0 90 	movl   $0xc0002b90,0xc000a1bc
c0003295:	2b 00 c0 
c0003298:	c7 05 c0 a1 00 c0 b8 	movl   $0xc0002bb8,0xc000a1c0
c000329f:	2b 00 c0 
c00032a2:	c7 05 c4 a1 00 c0 e0 	movl   $0xc0002be0,0xc000a1c4
c00032a9:	2b 00 c0 
c00032ac:	c7 05 c8 a1 00 c0 08 	movl   $0xc0002c08,0xc000a1c8
c00032b3:	2c 00 c0 
c00032b6:	c7 05 cc a1 00 c0 30 	movl   $0xc0002c30,0xc000a1cc
c00032bd:	2c 00 c0 
c00032c0:	c7 05 d0 a1 00 c0 58 	movl   $0xc0002c58,0xc000a1d0
c00032c7:	2c 00 c0 
c00032ca:	c7 05 d4 a1 00 c0 80 	movl   $0xc0002c80,0xc000a1d4
c00032d1:	2c 00 c0 
c00032d4:	c7 05 d8 a1 00 c0 a8 	movl   $0xc0002ca8,0xc000a1d8
c00032db:	2c 00 c0 
c00032de:	c7 05 dc a1 00 c0 d0 	movl   $0xc0002cd0,0xc000a1dc
c00032e5:	2c 00 c0 
c00032e8:	c7 05 e0 a1 00 c0 f8 	movl   $0xc0002cf8,0xc000a1e0
c00032ef:	2c 00 c0 
c00032f2:	c7 05 e4 a1 00 c0 20 	movl   $0xc0002d20,0xc000a1e4
c00032f9:	2d 00 c0 
c00032fc:	c7 05 e8 a1 00 c0 48 	movl   $0xc0002d48,0xc000a1e8
c0003303:	2d 00 c0 
c0003306:	c7 05 ec a1 00 c0 70 	movl   $0xc0002d70,0xc000a1ec
c000330d:	2d 00 c0 
c0003310:	c7 05 f0 a1 00 c0 98 	movl   $0xc0002d98,0xc000a1f0
c0003317:	2d 00 c0 
c000331a:	c7 05 f4 a1 00 c0 c0 	movl   $0xc0002dc0,0xc000a1f4
c0003321:	2d 00 c0 
c0003324:	c7 05 f8 a1 00 c0 e8 	movl   $0xc0002de8,0xc000a1f8
c000332b:	2d 00 c0 
c000332e:	c7 05 fc a1 00 c0 10 	movl   $0xc0002e10,0xc000a1fc
c0003335:	2e 00 c0 
c0003338:	c7 05 00 a2 00 c0 f0 	movl   $0xc00019f0,0xc000a200
c000333f:	19 00 c0 
c0003342:	c3                   	ret    
c0003343:	66 90                	xchg   %ax,%ax
c0003345:	66 90                	xchg   %ax,%ax
c0003347:	66 90                	xchg   %ax,%ax
c0003349:	66 90                	xchg   %ax,%ax
c000334b:	66 90                	xchg   %ax,%ax
c000334d:	66 90                	xchg   %ax,%ax
c000334f:	90                   	nop

c0003350 <put_char>:
c0003350:	60                   	pusha  
c0003351:	66 ba d4 03          	mov    $0x3d4,%dx
c0003355:	b0 0e                	mov    $0xe,%al
c0003357:	ee                   	out    %al,(%dx)
c0003358:	66 ba d5 03          	mov    $0x3d5,%dx
c000335c:	ec                   	in     (%dx),%al
c000335d:	88 c7                	mov    %al,%bh
c000335f:	66 ba d4 03          	mov    $0x3d4,%dx
c0003363:	b0 0f                	mov    $0xf,%al
c0003365:	ee                   	out    %al,(%dx)
c0003366:	66 ba d5 03          	mov    $0x3d5,%dx
c000336a:	ec                   	in     (%dx),%al
c000336b:	88 c3                	mov    %al,%bl
c000336d:	89 e5                	mov    %esp,%ebp
c000336f:	b5 07                	mov    $0x7,%ch
c0003371:	8a 4d 24             	mov    0x24(%ebp),%cl
c0003374:	66 b8 18 00          	mov    $0x18,%ax
c0003378:	8e e8                	mov    %eax,%gs
c000337a:	66 81 fb d0 07       	cmp    $0x7d0,%bx
c000337f:	7d 73                	jge    c00033f4 <put_char.roll_screen>

c0003381 <put_char.current>:
c0003381:	80 f9 08             	cmp    $0x8,%cl
c0003384:	74 39                	je     c00033bf <put_char.bs_p>
c0003386:	80 f9 0d             	cmp    $0xd,%cl
c0003389:	74 45                	je     c00033d0 <put_char.lf_p>
c000338b:	80 f9 0a             	cmp    $0xa,%cl
c000338e:	74 50                	je     c00033e0 <put_char.cr_p>
c0003390:	eb 00                	jmp    c0003392 <put_char.put_other>

c0003392 <put_char.put_other>:
c0003392:	66 d1 e3             	shl    %bx
c0003395:	65 66 67 89 0f       	mov    %cx,%gs:(%bx)
c000339a:	66 d1 eb             	shr    %bx
c000339d:	66 43                	inc    %bx
c000339f:	eb 00                	jmp    c00033a1 <put_char.set_cursor>

c00033a1 <put_char.set_cursor>:
c00033a1:	66 ba d4 03          	mov    $0x3d4,%dx
c00033a5:	b0 0e                	mov    $0xe,%al
c00033a7:	ee                   	out    %al,(%dx)
c00033a8:	66 ba d5 03          	mov    $0x3d5,%dx
c00033ac:	88 f8                	mov    %bh,%al
c00033ae:	ee                   	out    %al,(%dx)
c00033af:	66 ba d4 03          	mov    $0x3d4,%dx
c00033b3:	b0 0f                	mov    $0xf,%al
c00033b5:	ee                   	out    %al,(%dx)
c00033b6:	66 ba d5 03          	mov    $0x3d5,%dx
c00033ba:	88 d8                	mov    %bl,%al
c00033bc:	ee                   	out    %al,(%dx)
c00033bd:	61                   	popa   
c00033be:	c3                   	ret    

c00033bf <put_char.bs_p>:
c00033bf:	66 4b                	dec    %bx
c00033c1:	66 d1 e3             	shl    %bx
c00033c4:	65 66 67 c7 07 00 07 	movw   $0x700,%gs:(%bx)
c00033cb:	66 d1 eb             	shr    %bx
c00033ce:	eb d1                	jmp    c00033a1 <put_char.set_cursor>

c00033d0 <put_char.lf_p>:
c00033d0:	66 89 d8             	mov    %bx,%ax
c00033d3:	b2 50                	mov    $0x50,%dl
c00033d5:	f6 f2                	div    %dl
c00033d7:	66 c1 e8 08          	shr    $0x8,%ax
c00033db:	66 29 c3             	sub    %ax,%bx
c00033de:	eb c1                	jmp    c00033a1 <put_char.set_cursor>

c00033e0 <put_char.cr_p>:
c00033e0:	66 89 d8             	mov    %bx,%ax
c00033e3:	b2 50                	mov    $0x50,%dl
c00033e5:	f6 f2                	div    %dl
c00033e7:	66 c1 e8 08          	shr    $0x8,%ax
c00033eb:	66 29 c3             	sub    %ax,%bx
c00033ee:	66 83 c3 50          	add    $0x50,%bx
c00033f2:	eb ad                	jmp    c00033a1 <put_char.set_cursor>

c00033f4 <put_char.roll_screen>:
c00033f4:	60                   	pusha  
c00033f5:	06                   	push   %es
c00033f6:	1e                   	push   %ds
c00033f7:	66 b8 18 00          	mov    $0x18,%ax
c00033fb:	8e d8                	mov    %eax,%ds
c00033fd:	8e c0                	mov    %eax,%es
c00033ff:	fc                   	cld    
c0003400:	be a0 00 00 00       	mov    $0xa0,%esi
c0003405:	bf 00 00 00 00       	mov    $0x0,%edi
c000340a:	b9 00 0f 00 00       	mov    $0xf00,%ecx
c000340f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0003411:	b9 50 00 00 00       	mov    $0x50,%ecx
c0003416:	b8 00 0f 00 00       	mov    $0xf00,%eax

c000341b <put_char.clear_last_row>:
c000341b:	65 66 c7 00 00 07    	movw   $0x700,%gs:(%eax)
c0003421:	66 83 c0 02          	add    $0x2,%ax
c0003425:	e2 f4                	loop   c000341b <put_char.clear_last_row>
c0003427:	1f                   	pop    %ds
c0003428:	07                   	pop    %es
c0003429:	61                   	popa   
c000342a:	66 bb 80 07          	mov    $0x780,%bx
c000342e:	e9 4e ff ff ff       	jmp    c0003381 <put_char.current>

c0003433 <put_int>:
c0003433:	60                   	pusha  
c0003434:	b0 30                	mov    $0x30,%al
c0003436:	66 50                	push   %ax
c0003438:	e8 13 ff ff ff       	call   c0003350 <put_char>
c000343d:	83 c4 02             	add    $0x2,%esp
c0003440:	b0 78                	mov    $0x78,%al
c0003442:	66 50                	push   %ax
c0003444:	e8 07 ff ff ff       	call   c0003350 <put_char>
c0003449:	83 c4 02             	add    $0x2,%esp
c000344c:	89 e5                	mov    %esp,%ebp
c000344e:	8b 45 24             	mov    0x24(%ebp),%eax
c0003451:	b9 08 00 00 00       	mov    $0x8,%ecx
c0003456:	89 c3                	mov    %eax,%ebx
c0003458:	66 ba 00 00          	mov    $0x0,%dx

c000345c <put_int.print_int>:
c000345c:	81 e3 00 00 00 f0    	and    $0xf0000000,%ebx
c0003462:	66 83 fa 00          	cmp    $0x0,%dx
c0003466:	75 05                	jne    c000346d <put_int.not_0>
c0003468:	83 fb 00             	cmp    $0x0,%ebx
c000346b:	74 2b                	je     c0003498 <put_int.is_first_0>

c000346d <put_int.not_0>:
c000346d:	66 83 c2 01          	add    $0x1,%dx
c0003471:	c1 eb 04             	shr    $0x4,%ebx
c0003474:	81 fb 00 00 00 0a    	cmp    $0xa000000,%ebx
c000347a:	7d 08                	jge    c0003484 <put_int.handle_letter>
c000347c:	81 c3 00 00 00 30    	add    $0x30000000,%ebx
c0003482:	eb 08                	jmp    c000348c <put_int.call_print>

c0003484 <put_int.handle_letter>:
c0003484:	81 c3 00 00 00 57    	add    $0x57000000,%ebx
c000348a:	eb 00                	jmp    c000348c <put_int.call_print>

c000348c <put_int.call_print>:
c000348c:	c1 eb 18             	shr    $0x18,%ebx
c000348f:	53                   	push   %ebx
c0003490:	e8 bb fe ff ff       	call   c0003350 <put_char>
c0003495:	83 c4 04             	add    $0x4,%esp

c0003498 <put_int.is_first_0>:
c0003498:	c1 e0 04             	shl    $0x4,%eax
c000349b:	89 c3                	mov    %eax,%ebx
c000349d:	e2 bd                	loop   c000345c <put_int.print_int>
c000349f:	66 83 fa 00          	cmp    $0x0,%dx
c00034a3:	75 0a                	jne    c00034af <put_int.end_print_int>
c00034a5:	6a 30                	push   $0x30
c00034a7:	e8 a4 fe ff ff       	call   c0003350 <put_char>
c00034ac:	83 c4 04             	add    $0x4,%esp

c00034af <put_int.end_print_int>:
c00034af:	61                   	popa   
c00034b0:	c3                   	ret    

c00034b1 <set_cursor>:
c00034b1:	60                   	pusha  
c00034b2:	89 e5                	mov    %esp,%ebp
c00034b4:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00034b7:	66 ba d4 03          	mov    $0x3d4,%dx
c00034bb:	b0 0e                	mov    $0xe,%al
c00034bd:	ee                   	out    %al,(%dx)
c00034be:	66 ba d5 03          	mov    $0x3d5,%dx
c00034c2:	88 f8                	mov    %bh,%al
c00034c4:	ee                   	out    %al,(%dx)
c00034c5:	66 ba d4 03          	mov    $0x3d4,%dx
c00034c9:	b0 0f                	mov    $0xf,%al
c00034cb:	ee                   	out    %al,(%dx)
c00034cc:	66 ba d5 03          	mov    $0x3d5,%dx
c00034d0:	88 d8                	mov    %bl,%al
c00034d2:	ee                   	out    %al,(%dx)
c00034d3:	61                   	popa   
c00034d4:	c3                   	ret    

c00034d5 <put_str>:
c00034d5:	55                   	push   %ebp
c00034d6:	89 e5                	mov    %esp,%ebp
c00034d8:	83 ec 18             	sub    $0x18,%esp
c00034db:	eb 15                	jmp    c00034f2 <put_str+0x1d>
c00034dd:	8b 45 08             	mov    0x8(%ebp),%eax
c00034e0:	0f b6 00             	movzbl (%eax),%eax
c00034e3:	0f be c0             	movsbl %al,%eax
c00034e6:	89 04 24             	mov    %eax,(%esp)
c00034e9:	e8 62 fe ff ff       	call   c0003350 <put_char>
c00034ee:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c00034f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00034f5:	0f b6 00             	movzbl (%eax),%eax
c00034f8:	84 c0                	test   %al,%al
c00034fa:	75 e1                	jne    c00034dd <put_str+0x8>
c00034fc:	c9                   	leave  
c00034fd:	c3                   	ret    

c00034fe <get_int_status>:
c00034fe:	55                   	push   %ebp
c00034ff:	89 e5                	mov    %esp,%ebp
c0003501:	83 ec 10             	sub    $0x10,%esp
c0003504:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c000350b:	9c                   	pushf  
c000350c:	58                   	pop    %eax
c000350d:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003510:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003513:	25 00 02 00 00       	and    $0x200,%eax
c0003518:	85 c0                	test   %eax,%eax
c000351a:	0f 9f c0             	setg   %al
c000351d:	0f b6 c0             	movzbl %al,%eax
c0003520:	c9                   	leave  
c0003521:	c3                   	ret    

c0003522 <int_enable>:
c0003522:	55                   	push   %ebp
c0003523:	89 e5                	mov    %esp,%ebp
c0003525:	83 ec 10             	sub    $0x10,%esp
c0003528:	e8 d1 ff ff ff       	call   c00034fe <get_int_status>
c000352d:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003530:	fb                   	sti    
c0003531:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003534:	c9                   	leave  
c0003535:	c3                   	ret    

c0003536 <int_disable>:
c0003536:	55                   	push   %ebp
c0003537:	89 e5                	mov    %esp,%ebp
c0003539:	83 ec 10             	sub    $0x10,%esp
c000353c:	e8 bd ff ff ff       	call   c00034fe <get_int_status>
c0003541:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003544:	fa                   	cli    
c0003545:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003548:	c9                   	leave  
c0003549:	c3                   	ret    

c000354a <set_int_status>:
c000354a:	55                   	push   %ebp
c000354b:	89 e5                	mov    %esp,%ebp
c000354d:	83 ec 10             	sub    $0x10,%esp
c0003550:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0003557:	9c                   	pushf  
c0003558:	58                   	pop    %eax
c0003559:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000355c:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003560:	75 07                	jne    c0003569 <set_int_status+0x1f>
c0003562:	e8 bb ff ff ff       	call   c0003522 <int_enable>
c0003567:	eb 05                	jmp    c000356e <set_int_status+0x24>
c0003569:	e8 c8 ff ff ff       	call   c0003536 <int_disable>
c000356e:	c9                   	leave  
c000356f:	c3                   	ret    

c0003570 <panic_spin>:
c0003570:	55                   	push   %ebp
c0003571:	89 e5                	mov    %esp,%ebp
c0003573:	83 ec 28             	sub    $0x28,%esp
c0003576:	e8 bb ff ff ff       	call   c0003536 <int_disable>
c000357b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000357e:	c7 04 24 0f 70 00 c0 	movl   $0xc000700f,(%esp)
c0003585:	e8 4b ff ff ff       	call   c00034d5 <put_str>
c000358a:	c7 04 24 1b 70 00 c0 	movl   $0xc000701b,(%esp)
c0003591:	e8 3f ff ff ff       	call   c00034d5 <put_str>
c0003596:	c7 04 24 1d 70 00 c0 	movl   $0xc000701d,(%esp)
c000359d:	e8 33 ff ff ff       	call   c00034d5 <put_str>
c00035a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00035a5:	89 04 24             	mov    %eax,(%esp)
c00035a8:	e8 28 ff ff ff       	call   c00034d5 <put_str>
c00035ad:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00035b4:	e8 97 fd ff ff       	call   c0003350 <put_char>
c00035b9:	c7 04 24 27 70 00 c0 	movl   $0xc0007027,(%esp)
c00035c0:	e8 10 ff ff ff       	call   c00034d5 <put_str>
c00035c5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00035c8:	89 04 24             	mov    %eax,(%esp)
c00035cb:	e8 63 fe ff ff       	call   c0003433 <put_int>
c00035d0:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00035d7:	e8 74 fd ff ff       	call   c0003350 <put_char>
c00035dc:	c7 04 24 2d 70 00 c0 	movl   $0xc000702d,(%esp)
c00035e3:	e8 ed fe ff ff       	call   c00034d5 <put_str>
c00035e8:	8b 45 10             	mov    0x10(%ebp),%eax
c00035eb:	89 04 24             	mov    %eax,(%esp)
c00035ee:	e8 e2 fe ff ff       	call   c00034d5 <put_str>
c00035f3:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00035fa:	e8 51 fd ff ff       	call   c0003350 <put_char>
c00035ff:	c7 04 24 37 70 00 c0 	movl   $0xc0007037,(%esp)
c0003606:	e8 ca fe ff ff       	call   c00034d5 <put_str>
c000360b:	8b 45 14             	mov    0x14(%ebp),%eax
c000360e:	89 04 24             	mov    %eax,(%esp)
c0003611:	e8 bf fe ff ff       	call   c00034d5 <put_str>
c0003616:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c000361d:	e8 2e fd ff ff       	call   c0003350 <put_char>
c0003622:	f4                   	hlt    
c0003623:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003626:	89 04 24             	mov    %eax,(%esp)
c0003629:	e8 1c ff ff ff       	call   c000354a <set_int_status>
c000362e:	c9                   	leave  
c000362f:	c3                   	ret    

c0003630 <debug_msg>:
c0003630:	55                   	push   %ebp
c0003631:	89 e5                	mov    %esp,%ebp
c0003633:	83 ec 18             	sub    $0x18,%esp
c0003636:	c7 04 24 2d 70 00 c0 	movl   $0xc000702d,(%esp)
c000363d:	e8 93 fe ff ff       	call   c00034d5 <put_str>
c0003642:	8b 45 08             	mov    0x8(%ebp),%eax
c0003645:	89 04 24             	mov    %eax,(%esp)
c0003648:	e8 88 fe ff ff       	call   c00034d5 <put_str>
c000364d:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0003654:	e8 f7 fc ff ff       	call   c0003350 <put_char>
c0003659:	8b 45 0c             	mov    0xc(%ebp),%eax
c000365c:	89 04 24             	mov    %eax,(%esp)
c000365f:	e8 71 fe ff ff       	call   c00034d5 <put_str>
c0003664:	8b 45 10             	mov    0x10(%ebp),%eax
c0003667:	89 04 24             	mov    %eax,(%esp)
c000366a:	e8 c4 fd ff ff       	call   c0003433 <put_int>
c000366f:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0003676:	e8 d5 fc ff ff       	call   c0003350 <put_char>
c000367b:	c9                   	leave  
c000367c:	c3                   	ret    

c000367d <memset_8>:
c000367d:	55                   	push   %ebp
c000367e:	89 e5                	mov    %esp,%ebp
c0003680:	83 ec 38             	sub    $0x38,%esp
c0003683:	8b 45 10             	mov    0x10(%ebp),%eax
c0003686:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0003689:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000368d:	75 24                	jne    c00036b3 <memset_8+0x36>
c000368f:	c7 44 24 0c 44 70 00 	movl   $0xc0007044,0xc(%esp)
c0003696:	c0 
c0003697:	c7 44 24 08 95 70 00 	movl   $0xc0007095,0x8(%esp)
c000369e:	c0 
c000369f:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c00036a6:	00 
c00036a7:	c7 04 24 57 70 00 c0 	movl   $0xc0007057,(%esp)
c00036ae:	e8 bd fe ff ff       	call   c0003570 <panic_spin>
c00036b3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00036ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00036bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00036c0:	eb 13                	jmp    c00036d5 <memset_8+0x58>
c00036c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00036c5:	8d 50 01             	lea    0x1(%eax),%edx
c00036c8:	89 55 f0             	mov    %edx,-0x10(%ebp)
c00036cb:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
c00036cf:	88 10                	mov    %dl,(%eax)
c00036d1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00036d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00036d8:	3b 45 0c             	cmp    0xc(%ebp),%eax
c00036db:	72 e5                	jb     c00036c2 <memset_8+0x45>
c00036dd:	c9                   	leave  
c00036de:	c3                   	ret    

c00036df <memset_32>:
c00036df:	55                   	push   %ebp
c00036e0:	89 e5                	mov    %esp,%ebp
c00036e2:	83 ec 28             	sub    $0x28,%esp
c00036e5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c00036e9:	75 24                	jne    c000370f <memset_32+0x30>
c00036eb:	c7 44 24 0c 44 70 00 	movl   $0xc0007044,0xc(%esp)
c00036f2:	c0 
c00036f3:	c7 44 24 08 9e 70 00 	movl   $0xc000709e,0x8(%esp)
c00036fa:	c0 
c00036fb:	c7 44 24 04 12 00 00 	movl   $0x12,0x4(%esp)
c0003702:	00 
c0003703:	c7 04 24 57 70 00 c0 	movl   $0xc0007057,(%esp)
c000370a:	e8 61 fe ff ff       	call   c0003570 <panic_spin>
c000370f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003716:	8b 45 08             	mov    0x8(%ebp),%eax
c0003719:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000371c:	eb 12                	jmp    c0003730 <memset_32+0x51>
c000371e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003721:	8d 50 04             	lea    0x4(%eax),%edx
c0003724:	89 55 f0             	mov    %edx,-0x10(%ebp)
c0003727:	8b 55 10             	mov    0x10(%ebp),%edx
c000372a:	89 10                	mov    %edx,(%eax)
c000372c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003730:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003733:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003736:	72 e6                	jb     c000371e <memset_32+0x3f>
c0003738:	c9                   	leave  
c0003739:	c3                   	ret    

c000373a <memcopy>:
c000373a:	55                   	push   %ebp
c000373b:	89 e5                	mov    %esp,%ebp
c000373d:	83 ec 28             	sub    $0x28,%esp
c0003740:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0003744:	74 2a                	je     c0003770 <memcopy+0x36>
c0003746:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c000374a:	75 24                	jne    c0003770 <memcopy+0x36>
c000374c:	c7 44 24 0c 74 70 00 	movl   $0xc0007074,0xc(%esp)
c0003753:	c0 
c0003754:	c7 44 24 08 a8 70 00 	movl   $0xc00070a8,0x8(%esp)
c000375b:	c0 
c000375c:	c7 44 24 04 1c 00 00 	movl   $0x1c,0x4(%esp)
c0003763:	00 
c0003764:	c7 04 24 57 70 00 c0 	movl   $0xc0007057,(%esp)
c000376b:	e8 00 fe ff ff       	call   c0003570 <panic_spin>
c0003770:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003777:	8b 45 08             	mov    0x8(%ebp),%eax
c000377a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000377d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003780:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003783:	eb 1b                	jmp    c00037a0 <memcopy+0x66>
c0003785:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003788:	8d 50 01             	lea    0x1(%eax),%edx
c000378b:	89 55 f0             	mov    %edx,-0x10(%ebp)
c000378e:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003791:	8d 4a 01             	lea    0x1(%edx),%ecx
c0003794:	89 4d ec             	mov    %ecx,-0x14(%ebp)
c0003797:	0f b6 12             	movzbl (%edx),%edx
c000379a:	88 10                	mov    %dl,(%eax)
c000379c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00037a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00037a3:	3b 45 10             	cmp    0x10(%ebp),%eax
c00037a6:	72 dd                	jb     c0003785 <memcopy+0x4b>
c00037a8:	c9                   	leave  
c00037a9:	c3                   	ret    

c00037aa <memcmp>:
c00037aa:	55                   	push   %ebp
c00037ab:	89 e5                	mov    %esp,%ebp
c00037ad:	83 ec 10             	sub    $0x10,%esp
c00037b0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00037b7:	eb 32                	jmp    c00037eb <memcmp+0x41>
c00037b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00037bc:	0f b6 10             	movzbl (%eax),%edx
c00037bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00037c2:	0f b6 00             	movzbl (%eax),%eax
c00037c5:	38 c2                	cmp    %al,%dl
c00037c7:	73 07                	jae    c00037d0 <memcmp+0x26>
c00037c9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00037ce:	eb 28                	jmp    c00037f8 <memcmp+0x4e>
c00037d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00037d3:	0f b6 10             	movzbl (%eax),%edx
c00037d6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00037d9:	0f b6 00             	movzbl (%eax),%eax
c00037dc:	38 c2                	cmp    %al,%dl
c00037de:	76 07                	jbe    c00037e7 <memcmp+0x3d>
c00037e0:	b8 01 00 00 00       	mov    $0x1,%eax
c00037e5:	eb 11                	jmp    c00037f8 <memcmp+0x4e>
c00037e7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c00037eb:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00037ee:	3b 45 10             	cmp    0x10(%ebp),%eax
c00037f1:	72 c6                	jb     c00037b9 <memcmp+0xf>
c00037f3:	b8 00 00 00 00       	mov    $0x0,%eax
c00037f8:	c9                   	leave  
c00037f9:	c3                   	ret    

c00037fa <strlen>:
c00037fa:	55                   	push   %ebp
c00037fb:	89 e5                	mov    %esp,%ebp
c00037fd:	83 ec 10             	sub    $0x10,%esp
c0003800:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0003807:	eb 04                	jmp    c000380d <strlen+0x13>
c0003809:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c000380d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003810:	8d 50 01             	lea    0x1(%eax),%edx
c0003813:	89 55 08             	mov    %edx,0x8(%ebp)
c0003816:	0f b6 00             	movzbl (%eax),%eax
c0003819:	84 c0                	test   %al,%al
c000381b:	75 ec                	jne    c0003809 <strlen+0xf>
c000381d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003820:	c9                   	leave  
c0003821:	c3                   	ret    

c0003822 <strcat>:
c0003822:	55                   	push   %ebp
c0003823:	89 e5                	mov    %esp,%ebp
c0003825:	83 ec 28             	sub    $0x28,%esp
c0003828:	8b 45 0c             	mov    0xc(%ebp),%eax
c000382b:	89 04 24             	mov    %eax,(%esp)
c000382e:	e8 c7 ff ff ff       	call   c00037fa <strlen>
c0003833:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003836:	8b 45 10             	mov    0x10(%ebp),%eax
c0003839:	89 04 24             	mov    %eax,(%esp)
c000383c:	e8 b9 ff ff ff       	call   c00037fa <strlen>
c0003841:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003844:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003847:	83 e8 01             	sub    $0x1,%eax
c000384a:	89 44 24 08          	mov    %eax,0x8(%esp)
c000384e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003851:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003855:	8b 45 08             	mov    0x8(%ebp),%eax
c0003858:	89 04 24             	mov    %eax,(%esp)
c000385b:	e8 da fe ff ff       	call   c000373a <memcopy>
c0003860:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003863:	8d 50 ff             	lea    -0x1(%eax),%edx
c0003866:	8b 45 08             	mov    0x8(%ebp),%eax
c0003869:	01 c2                	add    %eax,%edx
c000386b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000386e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0003872:	8b 45 10             	mov    0x10(%ebp),%eax
c0003875:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003879:	89 14 24             	mov    %edx,(%esp)
c000387c:	e8 b9 fe ff ff       	call   c000373a <memcopy>
c0003881:	8b 45 08             	mov    0x8(%ebp),%eax
c0003884:	c9                   	leave  
c0003885:	c3                   	ret    

c0003886 <formative_str>:
c0003886:	55                   	push   %ebp
c0003887:	89 e5                	mov    %esp,%ebp
c0003889:	83 ec 28             	sub    $0x28,%esp
c000388c:	8d 45 08             	lea    0x8(%ebp),%eax
c000388f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003892:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0003896:	8b 45 08             	mov    0x8(%ebp),%eax
c0003899:	8b 55 f4             	mov    -0xc(%ebp),%edx
c000389c:	89 54 24 08          	mov    %edx,0x8(%esp)
c00038a0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00038a4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00038a7:	89 04 24             	mov    %eax,(%esp)
c00038aa:	e8 fe 25 00 00       	call   c0005ead <vsprintf>
c00038af:	8b 45 0c             	mov    0xc(%ebp),%eax
c00038b2:	c9                   	leave  
c00038b3:	c3                   	ret    

c00038b4 <init_bit_map>:
c00038b4:	55                   	push   %ebp
c00038b5:	89 e5                	mov    %esp,%ebp
c00038b7:	5d                   	pop    %ebp
c00038b8:	c3                   	ret    

c00038b9 <bit_test>:
c00038b9:	55                   	push   %ebp
c00038ba:	89 e5                	mov    %esp,%ebp
c00038bc:	53                   	push   %ebx
c00038bd:	83 ec 24             	sub    $0x24,%esp
c00038c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00038c3:	8b 00                	mov    (%eax),%eax
c00038c5:	3b 45 0c             	cmp    0xc(%ebp),%eax
c00038c8:	73 24                	jae    c00038ee <bit_test+0x35>
c00038ca:	c7 44 24 0c b0 70 00 	movl   $0xc00070b0,0xc(%esp)
c00038d1:	c0 
c00038d2:	c7 44 24 08 fd 70 00 	movl   $0xc00070fd,0x8(%esp)
c00038d9:	c0 
c00038da:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c00038e1:	00 
c00038e2:	c7 04 24 c8 70 00 c0 	movl   $0xc00070c8,(%esp)
c00038e9:	e8 82 fc ff ff       	call   c0003570 <panic_spin>
c00038ee:	8b 45 0c             	mov    0xc(%ebp),%eax
c00038f1:	c1 e8 03             	shr    $0x3,%eax
c00038f4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00038f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00038fa:	8b 50 04             	mov    0x4(%eax),%edx
c00038fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003900:	01 d0                	add    %edx,%eax
c0003902:	0f b6 00             	movzbl (%eax),%eax
c0003905:	88 45 f3             	mov    %al,-0xd(%ebp)
c0003908:	8b 45 0c             	mov    0xc(%ebp),%eax
c000390b:	83 e0 07             	and    $0x7,%eax
c000390e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003911:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
c0003915:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003918:	bb 80 00 00 00       	mov    $0x80,%ebx
c000391d:	89 c1                	mov    %eax,%ecx
c000391f:	d3 fb                	sar    %cl,%ebx
c0003921:	89 d8                	mov    %ebx,%eax
c0003923:	21 d0                	and    %edx,%eax
c0003925:	85 c0                	test   %eax,%eax
c0003927:	0f 95 c0             	setne  %al
c000392a:	0f b6 c0             	movzbl %al,%eax
c000392d:	83 c4 24             	add    $0x24,%esp
c0003930:	5b                   	pop    %ebx
c0003931:	5d                   	pop    %ebp
c0003932:	c3                   	ret    

c0003933 <bit_set>:
c0003933:	55                   	push   %ebp
c0003934:	89 e5                	mov    %esp,%ebp
c0003936:	56                   	push   %esi
c0003937:	53                   	push   %ebx
c0003938:	83 ec 20             	sub    $0x20,%esp
c000393b:	8b 45 08             	mov    0x8(%ebp),%eax
c000393e:	8b 00                	mov    (%eax),%eax
c0003940:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003943:	73 24                	jae    c0003969 <bit_set+0x36>
c0003945:	c7 44 24 0c eb 70 00 	movl   $0xc00070eb,0xc(%esp)
c000394c:	c0 
c000394d:	c7 44 24 08 06 71 00 	movl   $0xc0007106,0x8(%esp)
c0003954:	c0 
c0003955:	c7 44 24 04 19 00 00 	movl   $0x19,0x4(%esp)
c000395c:	00 
c000395d:	c7 04 24 c8 70 00 c0 	movl   $0xc00070c8,(%esp)
c0003964:	e8 07 fc ff ff       	call   c0003570 <panic_spin>
c0003969:	8b 45 0c             	mov    0xc(%ebp),%eax
c000396c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003970:	8b 45 08             	mov    0x8(%ebp),%eax
c0003973:	89 04 24             	mov    %eax,(%esp)
c0003976:	e8 3e ff ff ff       	call   c00038b9 <bit_test>
c000397b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000397e:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
c0003982:	75 07                	jne    c000398b <bit_set+0x58>
c0003984:	b8 01 00 00 00       	mov    $0x1,%eax
c0003989:	eb 44                	jmp    c00039cf <bit_set+0x9c>
c000398b:	8b 45 0c             	mov    0xc(%ebp),%eax
c000398e:	83 e0 07             	and    $0x7,%eax
c0003991:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003994:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003997:	c1 e8 03             	shr    $0x3,%eax
c000399a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000399d:	8b 45 08             	mov    0x8(%ebp),%eax
c00039a0:	8b 50 04             	mov    0x4(%eax),%edx
c00039a3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00039a6:	01 c2                	add    %eax,%edx
c00039a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00039ab:	8b 48 04             	mov    0x4(%eax),%ecx
c00039ae:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00039b1:	01 c8                	add    %ecx,%eax
c00039b3:	0f b6 00             	movzbl (%eax),%eax
c00039b6:	89 c3                	mov    %eax,%ebx
c00039b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00039bb:	be 80 00 00 00       	mov    $0x80,%esi
c00039c0:	89 c1                	mov    %eax,%ecx
c00039c2:	d3 fe                	sar    %cl,%esi
c00039c4:	89 f0                	mov    %esi,%eax
c00039c6:	31 d8                	xor    %ebx,%eax
c00039c8:	88 02                	mov    %al,(%edx)
c00039ca:	b8 00 00 00 00       	mov    $0x0,%eax
c00039cf:	83 c4 20             	add    $0x20,%esp
c00039d2:	5b                   	pop    %ebx
c00039d3:	5e                   	pop    %esi
c00039d4:	5d                   	pop    %ebp
c00039d5:	c3                   	ret    

c00039d6 <bit_reset>:
c00039d6:	55                   	push   %ebp
c00039d7:	89 e5                	mov    %esp,%ebp
c00039d9:	56                   	push   %esi
c00039da:	53                   	push   %ebx
c00039db:	83 ec 20             	sub    $0x20,%esp
c00039de:	8b 45 08             	mov    0x8(%ebp),%eax
c00039e1:	8b 00                	mov    (%eax),%eax
c00039e3:	3b 45 0c             	cmp    0xc(%ebp),%eax
c00039e6:	73 24                	jae    c0003a0c <bit_reset+0x36>
c00039e8:	c7 44 24 0c eb 70 00 	movl   $0xc00070eb,0xc(%esp)
c00039ef:	c0 
c00039f0:	c7 44 24 08 0e 71 00 	movl   $0xc000710e,0x8(%esp)
c00039f7:	c0 
c00039f8:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c00039ff:	00 
c0003a00:	c7 04 24 c8 70 00 c0 	movl   $0xc00070c8,(%esp)
c0003a07:	e8 64 fb ff ff       	call   c0003570 <panic_spin>
c0003a0c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a0f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003a13:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a16:	89 04 24             	mov    %eax,(%esp)
c0003a19:	e8 9b fe ff ff       	call   c00038b9 <bit_test>
c0003a1e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003a21:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0003a25:	75 0a                	jne    c0003a31 <bit_reset+0x5b>
c0003a27:	b8 00 00 00 00       	mov    $0x0,%eax
c0003a2c:	e9 91 00 00 00       	jmp    c0003ac2 <bit_reset+0xec>
c0003a31:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a34:	83 e0 07             	and    $0x7,%eax
c0003a37:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003a3a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a3d:	c1 e8 03             	shr    $0x3,%eax
c0003a40:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003a43:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003a47:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a4a:	8b 50 04             	mov    0x4(%eax),%edx
c0003a4d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003a50:	01 d0                	add    %edx,%eax
c0003a52:	0f b6 00             	movzbl (%eax),%eax
c0003a55:	0f b6 d0             	movzbl %al,%edx
c0003a58:	b8 09 00 00 00       	mov    $0x9,%eax
c0003a5d:	2b 45 f0             	sub    -0x10(%ebp),%eax
c0003a60:	bb ff 00 00 00       	mov    $0xff,%ebx
c0003a65:	89 c1                	mov    %eax,%ecx
c0003a67:	d3 e3                	shl    %cl,%ebx
c0003a69:	89 d8                	mov    %ebx,%eax
c0003a6b:	21 d0                	and    %edx,%eax
c0003a6d:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0003a70:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a73:	8b 50 04             	mov    0x4(%eax),%edx
c0003a76:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003a79:	01 c2                	add    %eax,%edx
c0003a7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a7e:	8b 48 04             	mov    0x4(%eax),%ecx
c0003a81:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003a84:	01 c8                	add    %ecx,%eax
c0003a86:	0f b6 00             	movzbl (%eax),%eax
c0003a89:	89 c3                	mov    %eax,%ebx
c0003a8b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003a8e:	be ff 00 00 00       	mov    $0xff,%esi
c0003a93:	89 c1                	mov    %eax,%ecx
c0003a95:	d3 fe                	sar    %cl,%esi
c0003a97:	89 f0                	mov    %esi,%eax
c0003a99:	21 d8                	and    %ebx,%eax
c0003a9b:	88 02                	mov    %al,(%edx)
c0003a9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003aa0:	8b 50 04             	mov    0x4(%eax),%edx
c0003aa3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003aa6:	01 c2                	add    %eax,%edx
c0003aa8:	8b 45 08             	mov    0x8(%ebp),%eax
c0003aab:	8b 48 04             	mov    0x4(%eax),%ecx
c0003aae:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003ab1:	01 c8                	add    %ecx,%eax
c0003ab3:	0f b6 08             	movzbl (%eax),%ecx
c0003ab6:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0003ab9:	31 c8                	xor    %ecx,%eax
c0003abb:	88 02                	mov    %al,(%edx)
c0003abd:	b8 01 00 00 00       	mov    $0x1,%eax
c0003ac2:	83 c4 20             	add    $0x20,%esp
c0003ac5:	5b                   	pop    %ebx
c0003ac6:	5e                   	pop    %esi
c0003ac7:	5d                   	pop    %ebp
c0003ac8:	c3                   	ret    

c0003ac9 <bit_alloc>:
c0003ac9:	55                   	push   %ebp
c0003aca:	89 e5                	mov    %esp,%ebp
c0003acc:	83 ec 28             	sub    $0x28,%esp
c0003acf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003ad6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0003add:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003ae0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003ae4:	8b 45 08             	mov    0x8(%ebp),%eax
c0003ae7:	89 04 24             	mov    %eax,(%esp)
c0003aea:	e8 ca fd ff ff       	call   c00038b9 <bit_test>
c0003aef:	85 c0                	test   %eax,%eax
c0003af1:	75 0a                	jne    c0003afd <bit_alloc+0x34>
c0003af3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003af7:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003afb:	eb 0b                	jmp    c0003b08 <bit_alloc+0x3f>
c0003afd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003b04:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003b08:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b0b:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b0e:	73 0e                	jae    c0003b1e <bit_alloc+0x55>
c0003b10:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003b13:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b16:	8b 00                	mov    (%eax),%eax
c0003b18:	39 c2                	cmp    %eax,%edx
c0003b1a:	73 02                	jae    c0003b1e <bit_alloc+0x55>
c0003b1c:	eb bf                	jmp    c0003add <bit_alloc+0x14>
c0003b1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b21:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b24:	72 3b                	jb     c0003b61 <bit_alloc+0x98>
c0003b26:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0003b2d:	eb 1e                	jmp    c0003b4d <bit_alloc+0x84>
c0003b2f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003b32:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003b35:	01 d0                	add    %edx,%eax
c0003b37:	2b 45 f4             	sub    -0xc(%ebp),%eax
c0003b3a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003b3e:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b41:	89 04 24             	mov    %eax,(%esp)
c0003b44:	e8 ea fd ff ff       	call   c0003933 <bit_set>
c0003b49:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
c0003b4d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003b50:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b53:	72 da                	jb     c0003b2f <bit_alloc+0x66>
c0003b55:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b58:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003b5b:	29 c2                	sub    %eax,%edx
c0003b5d:	89 d0                	mov    %edx,%eax
c0003b5f:	eb 05                	jmp    c0003b66 <bit_alloc+0x9d>
c0003b61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0003b66:	c9                   	leave  
c0003b67:	c3                   	ret    

c0003b68 <alloc_vaddr>:
c0003b68:	55                   	push   %ebp
c0003b69:	89 e5                	mov    %esp,%ebp
c0003b6b:	83 ec 28             	sub    $0x28,%esp
c0003b6e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003b72:	75 09                	jne    c0003b7d <alloc_vaddr+0x15>
c0003b74:	c7 45 f4 a0 a7 00 c0 	movl   $0xc000a7a0,-0xc(%ebp)
c0003b7b:	eb 11                	jmp    c0003b8e <alloc_vaddr+0x26>
c0003b7d:	e8 56 0a 00 00       	call   c00045d8 <get_running>
c0003b82:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003b85:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003b88:	83 c0 04             	add    $0x4,%eax
c0003b8b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003b8e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003b91:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b94:	8b 00                	mov    (%eax),%eax
c0003b96:	39 c2                	cmp    %eax,%edx
c0003b98:	76 24                	jbe    c0003bbe <alloc_vaddr+0x56>
c0003b9a:	c7 44 24 0c 18 71 00 	movl   $0xc0007118,0xc(%esp)
c0003ba1:	c0 
c0003ba2:	c7 44 24 08 a1 71 00 	movl   $0xc00071a1,0x8(%esp)
c0003ba9:	c0 
c0003baa:	c7 44 24 04 17 00 00 	movl   $0x17,0x4(%esp)
c0003bb1:	00 
c0003bb2:	c7 04 24 37 71 00 c0 	movl   $0xc0007137,(%esp)
c0003bb9:	e8 b2 f9 ff ff       	call   c0003570 <panic_spin>
c0003bbe:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003bc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003bc4:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003bc8:	89 04 24             	mov    %eax,(%esp)
c0003bcb:	e8 f9 fe ff ff       	call   c0003ac9 <bit_alloc>
c0003bd0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003bd3:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
c0003bd7:	74 10                	je     c0003be9 <alloc_vaddr+0x81>
c0003bd9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003bdc:	8b 50 08             	mov    0x8(%eax),%edx
c0003bdf:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003be2:	c1 e0 0c             	shl    $0xc,%eax
c0003be5:	01 d0                	add    %edx,%eax
c0003be7:	eb 05                	jmp    c0003bee <alloc_vaddr+0x86>
c0003be9:	b8 00 00 00 00       	mov    $0x0,%eax
c0003bee:	c9                   	leave  
c0003bef:	c3                   	ret    

c0003bf0 <alloc_mem>:
c0003bf0:	55                   	push   %ebp
c0003bf1:	89 e5                	mov    %esp,%ebp
c0003bf3:	83 ec 28             	sub    $0x28,%esp
c0003bf6:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003bfa:	75 09                	jne    c0003c05 <alloc_mem+0x15>
c0003bfc:	c7 45 f4 b0 a7 00 c0 	movl   $0xc000a7b0,-0xc(%ebp)
c0003c03:	eb 07                	jmp    c0003c0c <alloc_mem+0x1c>
c0003c05:	c7 45 f4 90 a7 00 c0 	movl   $0xc000a790,-0xc(%ebp)
c0003c0c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c0f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0003c16:	00 
c0003c17:	89 04 24             	mov    %eax,(%esp)
c0003c1a:	e8 aa fe ff ff       	call   c0003ac9 <bit_alloc>
c0003c1f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003c22:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
c0003c26:	74 10                	je     c0003c38 <alloc_mem+0x48>
c0003c28:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c2b:	8b 50 08             	mov    0x8(%eax),%edx
c0003c2e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003c31:	c1 e0 0c             	shl    $0xc,%eax
c0003c34:	01 d0                	add    %edx,%eax
c0003c36:	eb 05                	jmp    c0003c3d <alloc_mem+0x4d>
c0003c38:	b8 00 00 00 00       	mov    $0x0,%eax
c0003c3d:	c9                   	leave  
c0003c3e:	c3                   	ret    

c0003c3f <malloc_page>:
c0003c3f:	55                   	push   %ebp
c0003c40:	89 e5                	mov    %esp,%ebp
c0003c42:	83 ec 28             	sub    $0x28,%esp
c0003c45:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003c4c:	e8 1a 15 00 00       	call   c000516b <lock>
c0003c51:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003c54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003c58:	8b 45 08             	mov    0x8(%ebp),%eax
c0003c5b:	89 04 24             	mov    %eax,(%esp)
c0003c5e:	e8 05 ff ff ff       	call   c0003b68 <alloc_vaddr>
c0003c63:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003c66:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0003c6a:	75 0a                	jne    c0003c76 <malloc_page+0x37>
c0003c6c:	b8 00 00 00 00       	mov    $0x0,%eax
c0003c71:	e9 c4 00 00 00       	jmp    c0003d3a <malloc_page+0xfb>
c0003c76:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003c7d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0003c84:	e9 96 00 00 00       	jmp    c0003d1f <malloc_page+0xe0>
c0003c89:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003c8d:	75 32                	jne    c0003cc1 <malloc_page+0x82>
c0003c8f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0003c96:	e8 55 ff ff ff       	call   c0003bf0 <alloc_mem>
c0003c9b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003c9e:	89 d1                	mov    %edx,%ecx
c0003ca0:	c1 e1 0c             	shl    $0xc,%ecx
c0003ca3:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003ca6:	01 ca                	add    %ecx,%edx
c0003ca8:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003caf:	00 
c0003cb0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003cb4:	89 14 24             	mov    %edx,(%esp)
c0003cb7:	e8 b5 07 00 00       	call   c0004471 <add_pte>
c0003cbc:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003cbf:	eb 30                	jmp    c0003cf1 <malloc_page+0xb2>
c0003cc1:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0003cc8:	e8 23 ff ff ff       	call   c0003bf0 <alloc_mem>
c0003ccd:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003cd0:	89 d1                	mov    %edx,%ecx
c0003cd2:	c1 e1 0c             	shl    $0xc,%ecx
c0003cd5:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003cd8:	01 ca                	add    %ecx,%edx
c0003cda:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003ce1:	00 
c0003ce2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003ce6:	89 14 24             	mov    %edx,(%esp)
c0003ce9:	e8 83 07 00 00       	call   c0004471 <add_pte>
c0003cee:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003cf1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0003cf5:	75 24                	jne    c0003d1b <malloc_page+0xdc>
c0003cf7:	c7 44 24 0c 53 71 00 	movl   $0xc0007153,0xc(%esp)
c0003cfe:	c0 
c0003cff:	c7 44 24 08 ad 71 00 	movl   $0xc00071ad,0x8(%esp)
c0003d06:	c0 
c0003d07:	c7 44 24 04 38 00 00 	movl   $0x38,0x4(%esp)
c0003d0e:	00 
c0003d0f:	c7 04 24 37 71 00 c0 	movl   $0xc0007137,(%esp)
c0003d16:	e8 55 f8 ff ff       	call   c0003570 <panic_spin>
c0003d1b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003d1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003d22:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003d25:	0f 82 5e ff ff ff    	jb     c0003c89 <malloc_page+0x4a>
c0003d2b:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003d32:	e8 8a 14 00 00       	call   c00051c1 <unlock>
c0003d37:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003d3a:	c9                   	leave  
c0003d3b:	c3                   	ret    

c0003d3c <create_vaddr>:
c0003d3c:	55                   	push   %ebp
c0003d3d:	89 e5                	mov    %esp,%ebp
c0003d3f:	83 ec 28             	sub    $0x28,%esp
c0003d42:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003d46:	75 17                	jne    c0003d5f <create_vaddr+0x23>
c0003d48:	c7 45 f4 a0 a7 00 c0 	movl   $0xc000a7a0,-0xc(%ebp)
c0003d4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003d52:	05 00 f0 df 3f       	add    $0x3fdff000,%eax
c0003d57:	c1 e8 0c             	shr    $0xc,%eax
c0003d5a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003d5d:	eb 1a                	jmp    c0003d79 <create_vaddr+0x3d>
c0003d5f:	e8 74 08 00 00       	call   c00045d8 <get_running>
c0003d64:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003d67:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003d6a:	83 c0 04             	add    $0x4,%eax
c0003d6d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003d70:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003d73:	c1 e8 0c             	shr    $0xc,%eax
c0003d76:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003d79:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003d7c:	8b 40 0c             	mov    0xc(%eax),%eax
c0003d7f:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003d82:	77 24                	ja     c0003da8 <create_vaddr+0x6c>
c0003d84:	c7 44 24 0c 65 71 00 	movl   $0xc0007165,0xc(%esp)
c0003d8b:	c0 
c0003d8c:	c7 44 24 08 b9 71 00 	movl   $0xc00071b9,0x8(%esp)
c0003d93:	c0 
c0003d94:	c7 44 24 04 4e 00 00 	movl   $0x4e,0x4(%esp)
c0003d9b:	00 
c0003d9c:	c7 04 24 37 71 00 c0 	movl   $0xc0007137,(%esp)
c0003da3:	e8 c8 f7 ff ff       	call   c0003570 <panic_spin>
c0003da8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003dab:	8b 00                	mov    (%eax),%eax
c0003dad:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0003db0:	77 24                	ja     c0003dd6 <create_vaddr+0x9a>
c0003db2:	c7 44 24 0c 78 71 00 	movl   $0xc0007178,0xc(%esp)
c0003db9:	c0 
c0003dba:	c7 44 24 08 b9 71 00 	movl   $0xc00071b9,0x8(%esp)
c0003dc1:	c0 
c0003dc2:	c7 44 24 04 4f 00 00 	movl   $0x4f,0x4(%esp)
c0003dc9:	00 
c0003dca:	c7 04 24 37 71 00 c0 	movl   $0xc0007137,(%esp)
c0003dd1:	e8 9a f7 ff ff       	call   c0003570 <panic_spin>
c0003dd6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003dd9:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003ddc:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003de0:	89 04 24             	mov    %eax,(%esp)
c0003de3:	e8 d1 fa ff ff       	call   c00038b9 <bit_test>
c0003de8:	85 c0                	test   %eax,%eax
c0003dea:	74 07                	je     c0003df3 <create_vaddr+0xb7>
c0003dec:	b8 00 00 00 00       	mov    $0x0,%eax
c0003df1:	eb 17                	jmp    c0003e0a <create_vaddr+0xce>
c0003df3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003df6:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003df9:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003dfd:	89 04 24             	mov    %eax,(%esp)
c0003e00:	e8 2e fb ff ff       	call   c0003933 <bit_set>
c0003e05:	b8 01 00 00 00       	mov    $0x1,%eax
c0003e0a:	c9                   	leave  
c0003e0b:	c3                   	ret    

c0003e0c <create_page>:
c0003e0c:	55                   	push   %ebp
c0003e0d:	89 e5                	mov    %esp,%ebp
c0003e0f:	83 ec 28             	sub    $0x28,%esp
c0003e12:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003e19:	e8 4d 13 00 00       	call   c000516b <lock>
c0003e1e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e21:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0003e26:	89 45 0c             	mov    %eax,0xc(%ebp)
c0003e29:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e2c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003e30:	8b 45 08             	mov    0x8(%ebp),%eax
c0003e33:	89 04 24             	mov    %eax,(%esp)
c0003e36:	e8 01 ff ff ff       	call   c0003d3c <create_vaddr>
c0003e3b:	85 c0                	test   %eax,%eax
c0003e3d:	75 16                	jne    c0003e55 <create_page+0x49>
c0003e3f:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003e46:	e8 76 13 00 00       	call   c00051c1 <unlock>
c0003e4b:	b8 00 00 00 00       	mov    $0x0,%eax
c0003e50:	e9 9a 00 00 00       	jmp    c0003eef <create_page+0xe3>
c0003e55:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003e5c:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003e60:	75 2a                	jne    c0003e8c <create_page+0x80>
c0003e62:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0003e69:	e8 82 fd ff ff       	call   c0003bf0 <alloc_mem>
c0003e6e:	89 c2                	mov    %eax,%edx
c0003e70:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e73:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003e7a:	00 
c0003e7b:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003e7f:	89 04 24             	mov    %eax,(%esp)
c0003e82:	e8 ea 05 00 00       	call   c0004471 <add_pte>
c0003e87:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003e8a:	eb 28                	jmp    c0003eb4 <create_page+0xa8>
c0003e8c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0003e93:	e8 58 fd ff ff       	call   c0003bf0 <alloc_mem>
c0003e98:	89 c2                	mov    %eax,%edx
c0003e9a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e9d:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003ea4:	00 
c0003ea5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003ea9:	89 04 24             	mov    %eax,(%esp)
c0003eac:	e8 c0 05 00 00       	call   c0004471 <add_pte>
c0003eb1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003eb4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0003eb8:	75 24                	jne    c0003ede <create_page+0xd2>
c0003eba:	c7 44 24 0c 53 71 00 	movl   $0xc0007153,0xc(%esp)
c0003ec1:	c0 
c0003ec2:	c7 44 24 08 c6 71 00 	movl   $0xc00071c6,0x8(%esp)
c0003ec9:	c0 
c0003eca:	c7 44 24 04 66 00 00 	movl   $0x66,0x4(%esp)
c0003ed1:	00 
c0003ed2:	c7 04 24 37 71 00 c0 	movl   $0xc0007137,(%esp)
c0003ed9:	e8 92 f6 ff ff       	call   c0003570 <panic_spin>
c0003ede:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003ee5:	e8 d7 12 00 00       	call   c00051c1 <unlock>
c0003eea:	b8 01 00 00 00       	mov    $0x1,%eax
c0003eef:	c9                   	leave  
c0003ef0:	c3                   	ret    

c0003ef1 <free_pool>:
c0003ef1:	55                   	push   %ebp
c0003ef2:	89 e5                	mov    %esp,%ebp
c0003ef4:	83 ec 28             	sub    $0x28,%esp
c0003ef7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003efe:	eb 29                	jmp    c0003f29 <free_pool+0x38>
c0003f00:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003f03:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003f06:	01 c2                	add    %eax,%edx
c0003f08:	8b 45 08             	mov    0x8(%ebp),%eax
c0003f0b:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003f0f:	89 04 24             	mov    %eax,(%esp)
c0003f12:	e8 bf fa ff ff       	call   c00039d6 <bit_reset>
c0003f17:	85 c0                	test   %eax,%eax
c0003f19:	75 0a                	jne    c0003f25 <free_pool+0x34>
c0003f1b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003f1e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003f21:	01 d0                	add    %edx,%eax
c0003f23:	eb 11                	jmp    c0003f36 <free_pool+0x45>
c0003f25:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003f29:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003f2c:	3b 45 10             	cmp    0x10(%ebp),%eax
c0003f2f:	72 cf                	jb     c0003f00 <free_pool+0xf>
c0003f31:	b8 00 00 00 00       	mov    $0x0,%eax
c0003f36:	c9                   	leave  
c0003f37:	c3                   	ret    

c0003f38 <free_page>:
c0003f38:	55                   	push   %ebp
c0003f39:	89 e5                	mov    %esp,%ebp
c0003f3b:	83 ec 38             	sub    $0x38,%esp
c0003f3e:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003f45:	e8 21 12 00 00       	call   c000516b <lock>
c0003f4a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0003f4e:	75 24                	jne    c0003f74 <free_page+0x3c>
c0003f50:	c7 44 24 0c 93 71 00 	movl   $0xc0007193,0xc(%esp)
c0003f57:	c0 
c0003f58:	c7 44 24 08 d2 71 00 	movl   $0xc00071d2,0x8(%esp)
c0003f5f:	c0 
c0003f60:	c7 44 24 04 7a 00 00 	movl   $0x7a,0x4(%esp)
c0003f67:	00 
c0003f68:	c7 04 24 37 71 00 c0 	movl   $0xc0007137,(%esp)
c0003f6f:	e8 fc f5 ff ff       	call   c0003570 <panic_spin>
c0003f74:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
c0003f7b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003f7e:	05 00 f0 df 3f       	add    $0x3fdff000,%eax
c0003f83:	c1 e8 0c             	shr    $0xc,%eax
c0003f86:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003f89:	8b 45 10             	mov    0x10(%ebp),%eax
c0003f8c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0003f90:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003f93:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003f97:	c7 04 24 a0 a7 00 c0 	movl   $0xc000a7a0,(%esp)
c0003f9e:	e8 4e ff ff ff       	call   c0003ef1 <free_pool>
c0003fa3:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0003fa6:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c0003faa:	74 05                	je     c0003fb1 <free_page+0x79>
c0003fac:	e9 a1 00 00 00       	jmp    c0004052 <free_page+0x11a>
c0003fb1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003fb8:	eb 79                	jmp    c0004033 <free_page+0xfb>
c0003fba:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003fbd:	c1 e0 0c             	shl    $0xc,%eax
c0003fc0:	89 c2                	mov    %eax,%edx
c0003fc2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003fc5:	01 d0                	add    %edx,%eax
c0003fc7:	89 04 24             	mov    %eax,(%esp)
c0003fca:	e8 76 05 00 00       	call   c0004545 <get_paddr>
c0003fcf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0003fd2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0003fd5:	2d 00 10 20 00       	sub    $0x201000,%eax
c0003fda:	c1 e8 0c             	shr    $0xc,%eax
c0003fdd:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0003fe0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0003fe7:	00 
c0003fe8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0003feb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003fef:	c7 04 24 b0 a7 00 c0 	movl   $0xc000a7b0,(%esp)
c0003ff6:	e8 f6 fe ff ff       	call   c0003ef1 <free_pool>
c0003ffb:	85 c0                	test   %eax,%eax
c0003ffd:	75 19                	jne    c0004018 <free_page+0xe0>
c0003fff:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004002:	c1 e0 0c             	shl    $0xc,%eax
c0004005:	89 c2                	mov    %eax,%edx
c0004007:	8b 45 0c             	mov    0xc(%ebp),%eax
c000400a:	01 d0                	add    %edx,%eax
c000400c:	89 04 24             	mov    %eax,(%esp)
c000400f:	e8 51 05 00 00       	call   c0004565 <reset_pte>
c0004014:	85 c0                	test   %eax,%eax
c0004016:	75 07                	jne    c000401f <free_page+0xe7>
c0004018:	b8 01 00 00 00       	mov    $0x1,%eax
c000401d:	eb 05                	jmp    c0004024 <free_page+0xec>
c000401f:	b8 00 00 00 00       	mov    $0x0,%eax
c0004024:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0004027:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
c000402b:	74 02                	je     c000402f <free_page+0xf7>
c000402d:	eb 23                	jmp    c0004052 <free_page+0x11a>
c000402f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0004033:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004036:	3b 45 10             	cmp    0x10(%ebp),%eax
c0004039:	0f 82 7b ff ff ff    	jb     c0003fba <free_page+0x82>
c000403f:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004046:	e8 76 11 00 00       	call   c00051c1 <unlock>
c000404b:	b8 01 00 00 00       	mov    $0x1,%eax
c0004050:	eb 11                	jmp    c0004063 <free_page+0x12b>
c0004052:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004059:	e8 63 11 00 00       	call   c00051c1 <unlock>
c000405e:	b8 00 00 00 00       	mov    $0x0,%eax
c0004063:	c9                   	leave  
c0004064:	c3                   	ret    

c0004065 <mem_decs_init>:
c0004065:	55                   	push   %ebp
c0004066:	89 e5                	mov    %esp,%ebp
c0004068:	83 ec 28             	sub    $0x28,%esp
c000406b:	c7 45 f4 00 04 00 00 	movl   $0x400,-0xc(%ebp)
c0004072:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0004079:	eb 4a                	jmp    c00040c5 <mem_decs_init+0x60>
c000407b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000407e:	c1 e0 04             	shl    $0x4,%eax
c0004081:	89 c2                	mov    %eax,%edx
c0004083:	8b 45 08             	mov    0x8(%ebp),%eax
c0004086:	01 c2                	add    %eax,%edx
c0004088:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000408b:	89 02                	mov    %eax,(%edx)
c000408d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004090:	c1 e0 04             	shl    $0x4,%eax
c0004093:	89 c2                	mov    %eax,%edx
c0004095:	8b 45 08             	mov    0x8(%ebp),%eax
c0004098:	01 d0                	add    %edx,%eax
c000409a:	c7 40 04 f0 0f 00 00 	movl   $0xff0,0x4(%eax)
c00040a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00040a4:	c1 e0 04             	shl    $0x4,%eax
c00040a7:	89 c2                	mov    %eax,%edx
c00040a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00040ac:	01 d0                	add    %edx,%eax
c00040ae:	83 c0 08             	add    $0x8,%eax
c00040b1:	89 04 24             	mov    %eax,(%esp)
c00040b4:	e8 93 0a 00 00       	call   c0004b4c <init_list>
c00040b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00040bc:	d1 e8                	shr    %eax
c00040be:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00040c1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00040c5:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
c00040c9:	76 b0                	jbe    c000407b <mem_decs_init+0x16>
c00040cb:	c9                   	leave  
c00040cc:	c3                   	ret    

c00040cd <sys_malloc>:
c00040cd:	55                   	push   %ebp
c00040ce:	89 e5                	mov    %esp,%ebp
c00040d0:	83 ec 38             	sub    $0x38,%esp
c00040d3:	e8 00 05 00 00       	call   c00045d8 <get_running>
c00040d8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00040db:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00040de:	8b 40 48             	mov    0x48(%eax),%eax
c00040e1:	3d 00 00 10 00       	cmp    $0x100000,%eax
c00040e6:	75 10                	jne    c00040f8 <sys_malloc+0x2b>
c00040e8:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
c00040ef:	c7 45 f4 b0 a7 00 c0 	movl   $0xc000a7b0,-0xc(%ebp)
c00040f6:	eb 0e                	jmp    c0004106 <sys_malloc+0x39>
c00040f8:	c7 45 f0 02 00 00 00 	movl   $0x2,-0x10(%ebp)
c00040ff:	c7 45 f4 90 a7 00 c0 	movl   $0xc000a790,-0xc(%ebp)
c0004106:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004109:	8b 40 0c             	mov    0xc(%eax),%eax
c000410c:	3b 45 08             	cmp    0x8(%ebp),%eax
c000410f:	73 0a                	jae    c000411b <sys_malloc+0x4e>
c0004111:	b8 00 00 00 00       	mov    $0x0,%eax
c0004116:	e9 3e 01 00 00       	jmp    c0004259 <sys_malloc+0x18c>
c000411b:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004122:	e8 44 10 00 00       	call   c000516b <lock>
c0004127:	81 7d 08 00 04 00 00 	cmpl   $0x400,0x8(%ebp)
c000412e:	76 5a                	jbe    c000418a <sys_malloc+0xbd>
c0004130:	8b 45 08             	mov    0x8(%ebp),%eax
c0004133:	83 e8 01             	sub    $0x1,%eax
c0004136:	c1 e8 0a             	shr    $0xa,%eax
c0004139:	83 c0 01             	add    $0x1,%eax
c000413c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004140:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004143:	89 04 24             	mov    %eax,(%esp)
c0004146:	e8 f4 fa ff ff       	call   c0003c3f <malloc_page>
c000414b:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000414e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004151:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
c0004158:	8b 45 08             	mov    0x8(%ebp),%eax
c000415b:	83 e8 01             	sub    $0x1,%eax
c000415e:	c1 e8 0a             	shr    $0xa,%eax
c0004161:	8d 50 01             	lea    0x1(%eax),%edx
c0004164:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004167:	89 50 04             	mov    %edx,0x4(%eax)
c000416a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000416d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004173:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c000417a:	e8 42 10 00 00       	call   c00051c1 <unlock>
c000417f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004182:	83 c0 0c             	add    $0xc,%eax
c0004185:	e9 cf 00 00 00       	jmp    c0004259 <sys_malloc+0x18c>
c000418a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0004191:	eb 18                	jmp    c00041ab <sys_malloc+0xde>
c0004193:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004196:	c1 e0 04             	shl    $0x4,%eax
c0004199:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c000419e:	8b 00                	mov    (%eax),%eax
c00041a0:	3b 45 08             	cmp    0x8(%ebp),%eax
c00041a3:	76 02                	jbe    c00041a7 <sys_malloc+0xda>
c00041a5:	eb 0a                	jmp    c00041b1 <sys_malloc+0xe4>
c00041a7:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
c00041ab:	83 7d e8 06          	cmpl   $0x6,-0x18(%ebp)
c00041af:	7e e2                	jle    c0004193 <sys_malloc+0xc6>
c00041b1:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00041b4:	c1 e0 04             	shl    $0x4,%eax
c00041b7:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c00041bc:	83 c0 08             	add    $0x8,%eax
c00041bf:	89 04 24             	mov    %eax,(%esp)
c00041c2:	e8 73 0d 00 00       	call   c0004f3a <lst_empty>
c00041c7:	85 c0                	test   %eax,%eax
c00041c9:	74 57                	je     c0004222 <sys_malloc+0x155>
c00041cb:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00041d2:	00 
c00041d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00041d6:	89 04 24             	mov    %eax,(%esp)
c00041d9:	e8 61 fa ff ff       	call   c0003c3f <malloc_page>
c00041de:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00041e1:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00041e4:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c00041eb:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00041ee:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c00041f5:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00041f8:	c1 e0 04             	shl    $0x4,%eax
c00041fb:	8d 90 20 a7 00 c0    	lea    -0x3fff58e0(%eax),%edx
c0004201:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004204:	89 10                	mov    %edx,(%eax)
c0004206:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004209:	c1 e0 04             	shl    $0x4,%eax
c000420c:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c0004211:	8b 00                	mov    (%eax),%eax
c0004213:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004217:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000421a:	89 04 24             	mov    %eax,(%esp)
c000421d:	e8 39 00 00 00       	call   c000425b <mblock_cut>
c0004222:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004229:	e8 93 0f 00 00       	call   c00051c1 <unlock>
c000422e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004231:	c1 e0 04             	shl    $0x4,%eax
c0004234:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c0004239:	83 c0 08             	add    $0x8,%eax
c000423c:	89 04 24             	mov    %eax,(%esp)
c000423f:	e8 39 0a 00 00       	call   c0004c7d <lst_pop>
c0004244:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0004247:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000424a:	8b 40 04             	mov    0x4(%eax),%eax
c000424d:	8d 50 01             	lea    0x1(%eax),%edx
c0004250:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004253:	89 50 04             	mov    %edx,0x4(%eax)
c0004256:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0004259:	c9                   	leave  
c000425a:	c3                   	ret    

c000425b <mblock_cut>:
c000425b:	55                   	push   %ebp
c000425c:	89 e5                	mov    %esp,%ebp
c000425e:	83 ec 28             	sub    $0x28,%esp
c0004261:	8b 45 08             	mov    0x8(%ebp),%eax
c0004264:	83 c0 0c             	add    $0xc,%eax
c0004267:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000426a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0004271:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004274:	c1 e0 04             	shl    $0x4,%eax
c0004277:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c000427c:	8b 08                	mov    (%eax),%ecx
c000427e:	b8 f4 0f 00 00       	mov    $0xff4,%eax
c0004283:	ba 00 00 00 00       	mov    $0x0,%edx
c0004288:	f7 f1                	div    %ecx
c000428a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000428d:	eb 2b                	jmp    c00042ba <mblock_cut+0x5f>
c000428f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004292:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0004295:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004298:	8b 55 08             	mov    0x8(%ebp),%edx
c000429b:	8b 12                	mov    (%edx),%edx
c000429d:	83 c2 08             	add    $0x8,%edx
c00042a0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00042a4:	89 14 24             	mov    %edx,(%esp)
c00042a7:	e8 b8 08 00 00       	call   c0004b64 <lst_push>
c00042ac:	8b 45 08             	mov    0x8(%ebp),%eax
c00042af:	8b 00                	mov    (%eax),%eax
c00042b1:	8b 00                	mov    (%eax),%eax
c00042b3:	01 45 f4             	add    %eax,-0xc(%ebp)
c00042b6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00042ba:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00042bd:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c00042c0:	7c cd                	jl     c000428f <mblock_cut+0x34>
c00042c2:	c9                   	leave  
c00042c3:	c3                   	ret    

c00042c4 <sys_free>:
c00042c4:	55                   	push   %ebp
c00042c5:	89 e5                	mov    %esp,%ebp
c00042c7:	83 ec 28             	sub    $0x28,%esp
c00042ca:	e8 09 03 00 00       	call   c00045d8 <get_running>
c00042cf:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00042d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00042d5:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00042d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00042db:	8b 40 48             	mov    0x48(%eax),%eax
c00042de:	3d 00 00 10 00       	cmp    $0x100000,%eax
c00042e3:	75 09                	jne    c00042ee <sys_free+0x2a>
c00042e5:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c00042ec:	eb 07                	jmp    c00042f5 <sys_free+0x31>
c00042ee:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
c00042f5:	8b 45 08             	mov    0x8(%ebp),%eax
c00042f8:	25 00 10 00 00       	and    $0x1000,%eax
c00042fd:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0004300:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004303:	8b 40 08             	mov    0x8(%eax),%eax
c0004306:	85 c0                	test   %eax,%eax
c0004308:	74 1e                	je     c0004328 <sys_free+0x64>
c000430a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000430d:	8b 40 04             	mov    0x4(%eax),%eax
c0004310:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004314:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004317:	89 44 24 04          	mov    %eax,0x4(%esp)
c000431b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000431e:	89 04 24             	mov    %eax,(%esp)
c0004321:	e8 12 fc ff ff       	call   c0003f38 <free_page>
c0004326:	eb 4c                	jmp    c0004374 <sys_free+0xb0>
c0004328:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000432b:	8b 40 04             	mov    0x4(%eax),%eax
c000432e:	8d 50 ff             	lea    -0x1(%eax),%edx
c0004331:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004334:	89 50 04             	mov    %edx,0x4(%eax)
c0004337:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000433a:	8b 40 04             	mov    0x4(%eax),%eax
c000433d:	85 c0                	test   %eax,%eax
c000433f:	75 1c                	jne    c000435d <sys_free+0x99>
c0004341:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0004348:	00 
c0004349:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000434c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004350:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004353:	89 04 24             	mov    %eax,(%esp)
c0004356:	e8 dd fb ff ff       	call   c0003f38 <free_page>
c000435b:	eb 17                	jmp    c0004374 <sys_free+0xb0>
c000435d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004360:	8b 55 e8             	mov    -0x18(%ebp),%edx
c0004363:	8b 12                	mov    (%edx),%edx
c0004365:	83 c2 08             	add    $0x8,%edx
c0004368:	89 44 24 04          	mov    %eax,0x4(%esp)
c000436c:	89 14 24             	mov    %edx,(%esp)
c000436f:	e8 f0 07 00 00       	call   c0004b64 <lst_push>
c0004374:	90                   	nop
c0004375:	c9                   	leave  
c0004376:	c3                   	ret    

c0004377 <init_pool>:
c0004377:	55                   	push   %ebp
c0004378:	89 e5                	mov    %esp,%ebp
c000437a:	83 ec 28             	sub    $0x28,%esp
c000437d:	b8 09 0b 00 c0       	mov    $0xc0000b09,%eax
c0004382:	8b 00                	mov    (%eax),%eax
c0004384:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004387:	c7 05 b8 a7 00 c0 00 	movl   $0x201000,0xc000a7b8
c000438e:	10 20 00 
c0004391:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004394:	2d 00 10 20 00       	sub    $0x201000,%eax
c0004399:	d1 e8                	shr    %eax
c000439b:	a3 bc a7 00 c0       	mov    %eax,0xc000a7bc
c00043a0:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043a5:	05 00 10 20 00       	add    $0x201000,%eax
c00043aa:	a3 98 a7 00 c0       	mov    %eax,0xc000a798
c00043af:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043b4:	a3 9c a7 00 c0       	mov    %eax,0xc000a79c
c00043b9:	c7 05 b4 a7 00 c0 00 	movl   $0xc009a000,0xc000a7b4
c00043c0:	a0 09 c0 
c00043c3:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043c8:	a3 b0 a7 00 c0       	mov    %eax,0xc000a7b0
c00043cd:	c7 04 24 b0 a7 00 c0 	movl   $0xc000a7b0,(%esp)
c00043d4:	e8 db f4 ff ff       	call   c00038b4 <init_bit_map>
c00043d9:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043de:	c1 e8 0c             	shr    $0xc,%eax
c00043e1:	2d 00 60 f6 3f       	sub    $0x3ff66000,%eax
c00043e6:	a3 94 a7 00 c0       	mov    %eax,0xc000a794
c00043eb:	a1 9c a7 00 c0       	mov    0xc000a79c,%eax
c00043f0:	a3 90 a7 00 c0       	mov    %eax,0xc000a790
c00043f5:	c7 04 24 90 a7 00 c0 	movl   $0xc000a790,(%esp)
c00043fc:	e8 b3 f4 ff ff       	call   c00038b4 <init_bit_map>
c0004401:	c7 05 ac a7 00 c0 00 	movl   $0x40000000,0xc000a7ac
c0004408:	00 00 40 
c000440b:	c7 05 a8 a7 00 c0 00 	movl   $0xc0201000,0xc000a7a8
c0004412:	10 20 c0 
c0004415:	c7 05 a4 a7 00 c0 00 	movl   $0x92000,0xc000a7a4
c000441c:	20 09 00 
c000441f:	a1 ac a7 00 c0       	mov    0xc000a7ac,%eax
c0004424:	2d 00 10 20 00       	sub    $0x201000,%eax
c0004429:	c1 e8 0c             	shr    $0xc,%eax
c000442c:	a3 a0 a7 00 c0       	mov    %eax,0xc000a7a0
c0004431:	c7 04 24 a0 a7 00 c0 	movl   $0xc000a7a0,(%esp)
c0004438:	e8 77 f4 ff ff       	call   c00038b4 <init_bit_map>
c000443d:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004444:	e8 4c 0b 00 00       	call   c0004f95 <init_mutex>
c0004449:	c9                   	leave  
c000444a:	c3                   	ret    

c000444b <get_pde_ptr>:
c000444b:	55                   	push   %ebp
c000444c:	89 e5                	mov    %esp,%ebp
c000444e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004451:	c1 e8 14             	shr    $0x14,%eax
c0004454:	35 00 f0 ff ff       	xor    $0xfffff000,%eax
c0004459:	83 e0 fc             	and    $0xfffffffc,%eax
c000445c:	5d                   	pop    %ebp
c000445d:	c3                   	ret    

c000445e <get_pte_ptr>:
c000445e:	55                   	push   %ebp
c000445f:	89 e5                	mov    %esp,%ebp
c0004461:	8b 45 08             	mov    0x8(%ebp),%eax
c0004464:	c1 e8 0a             	shr    $0xa,%eax
c0004467:	35 00 00 c0 ff       	xor    $0xffc00000,%eax
c000446c:	83 e0 fc             	and    $0xfffffffc,%eax
c000446f:	5d                   	pop    %ebp
c0004470:	c3                   	ret    

c0004471 <add_pte>:
c0004471:	55                   	push   %ebp
c0004472:	89 e5                	mov    %esp,%ebp
c0004474:	83 ec 28             	sub    $0x28,%esp
c0004477:	8b 45 10             	mov    0x10(%ebp),%eax
c000447a:	88 45 e4             	mov    %al,-0x1c(%ebp)
c000447d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004480:	89 04 24             	mov    %eax,(%esp)
c0004483:	e8 c3 ff ff ff       	call   c000444b <get_pde_ptr>
c0004488:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000448b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000448e:	8b 00                	mov    (%eax),%eax
c0004490:	83 e0 01             	and    $0x1,%eax
c0004493:	85 c0                	test   %eax,%eax
c0004495:	75 61                	jne    c00044f8 <add_pte+0x87>
c0004497:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c000449e:	00 
c000449f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c00044a6:	e8 94 f7 ff ff       	call   c0003c3f <malloc_page>
c00044ab:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00044ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00044b1:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00044b8:	00 
c00044b9:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
c00044c0:	00 
c00044c1:	89 04 24             	mov    %eax,(%esp)
c00044c4:	e8 b4 f1 ff ff       	call   c000367d <memset_8>
c00044c9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00044cc:	89 04 24             	mov    %eax,(%esp)
c00044cf:	e8 71 00 00 00       	call   c0004545 <get_paddr>
c00044d4:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00044d9:	89 c2                	mov    %eax,%edx
c00044db:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c00044df:	01 d0                	add    %edx,%eax
c00044e1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00044e5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00044ec:	00 
c00044ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00044f0:	89 04 24             	mov    %eax,(%esp)
c00044f3:	e8 e7 f1 ff ff       	call   c00036df <memset_32>
c00044f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00044fb:	89 04 24             	mov    %eax,(%esp)
c00044fe:	e8 5b ff ff ff       	call   c000445e <get_pte_ptr>
c0004503:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0004506:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004509:	8b 00                	mov    (%eax),%eax
c000450b:	83 e0 01             	and    $0x1,%eax
c000450e:	85 c0                	test   %eax,%eax
c0004510:	75 2c                	jne    c000453e <add_pte+0xcd>
c0004512:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004515:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c000451a:	89 c2                	mov    %eax,%edx
c000451c:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0004520:	01 d0                	add    %edx,%eax
c0004522:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004526:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c000452d:	00 
c000452e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004531:	89 04 24             	mov    %eax,(%esp)
c0004534:	e8 a6 f1 ff ff       	call   c00036df <memset_32>
c0004539:	8b 45 08             	mov    0x8(%ebp),%eax
c000453c:	eb 05                	jmp    c0004543 <add_pte+0xd2>
c000453e:	b8 00 00 00 00       	mov    $0x0,%eax
c0004543:	c9                   	leave  
c0004544:	c3                   	ret    

c0004545 <get_paddr>:
c0004545:	55                   	push   %ebp
c0004546:	89 e5                	mov    %esp,%ebp
c0004548:	83 ec 14             	sub    $0x14,%esp
c000454b:	8b 45 08             	mov    0x8(%ebp),%eax
c000454e:	89 04 24             	mov    %eax,(%esp)
c0004551:	e8 08 ff ff ff       	call   c000445e <get_pte_ptr>
c0004556:	8b 00                	mov    (%eax),%eax
c0004558:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000455b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000455e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004563:	c9                   	leave  
c0004564:	c3                   	ret    

c0004565 <reset_pte>:
c0004565:	55                   	push   %ebp
c0004566:	89 e5                	mov    %esp,%ebp
c0004568:	83 ec 28             	sub    $0x28,%esp
c000456b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000456f:	75 24                	jne    c0004595 <reset_pte+0x30>
c0004571:	c7 44 24 0c dc 71 00 	movl   $0xc00071dc,0xc(%esp)
c0004578:	c0 
c0004579:	c7 44 24 08 00 72 00 	movl   $0xc0007200,0x8(%esp)
c0004580:	c0 
c0004581:	c7 44 24 04 53 00 00 	movl   $0x53,0x4(%esp)
c0004588:	00 
c0004589:	c7 04 24 e7 71 00 c0 	movl   $0xc00071e7,(%esp)
c0004590:	e8 db ef ff ff       	call   c0003570 <panic_spin>
c0004595:	8b 45 08             	mov    0x8(%ebp),%eax
c0004598:	89 04 24             	mov    %eax,(%esp)
c000459b:	e8 be fe ff ff       	call   c000445e <get_pte_ptr>
c00045a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00045a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00045a6:	8b 00                	mov    (%eax),%eax
c00045a8:	83 e0 01             	and    $0x1,%eax
c00045ab:	85 c0                	test   %eax,%eax
c00045ad:	75 07                	jne    c00045b6 <reset_pte+0x51>
c00045af:	b8 00 00 00 00       	mov    $0x0,%eax
c00045b4:	eb 20                	jmp    c00045d6 <reset_pte+0x71>
c00045b6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00045bd:	00 
c00045be:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00045c5:	00 
c00045c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00045c9:	89 04 24             	mov    %eax,(%esp)
c00045cc:	e8 0e f1 ff ff       	call   c00036df <memset_32>
c00045d1:	b8 01 00 00 00       	mov    $0x1,%eax
c00045d6:	c9                   	leave  
c00045d7:	c3                   	ret    

c00045d8 <get_running>:
c00045d8:	55                   	push   %ebp
c00045d9:	89 e5                	mov    %esp,%ebp
c00045db:	83 ec 10             	sub    $0x10,%esp
c00045de:	89 e0                	mov    %esp,%eax
c00045e0:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00045e3:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00045e6:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00045eb:	c9                   	leave  
c00045ec:	c3                   	ret    

c00045ed <schedule>:
c00045ed:	55                   	push   %ebp
c00045ee:	89 e5                	mov    %esp,%ebp
c00045f0:	83 ec 28             	sub    $0x28,%esp
c00045f3:	e8 06 ef ff ff       	call   c00034fe <get_int_status>
c00045f8:	85 c0                	test   %eax,%eax
c00045fa:	74 24                	je     c0004620 <schedule+0x33>
c00045fc:	c7 44 24 0c 0c 72 00 	movl   $0xc000720c,0xc(%esp)
c0004603:	c0 
c0004604:	c7 44 24 08 b2 72 00 	movl   $0xc00072b2,0x8(%esp)
c000460b:	c0 
c000460c:	c7 44 24 04 15 00 00 	movl   $0x15,0x4(%esp)
c0004613:	00 
c0004614:	c7 04 24 28 72 00 c0 	movl   $0xc0007228,(%esp)
c000461b:	e8 50 ef ff ff       	call   c0003570 <panic_spin>
c0004620:	e8 b3 ff ff ff       	call   c00045d8 <get_running>
c0004625:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004628:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c000462f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004632:	8b 40 28             	mov    0x28(%eax),%eax
c0004635:	83 f8 03             	cmp    $0x3,%eax
c0004638:	75 33                	jne    c000466d <schedule+0x80>
c000463a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000463d:	83 c0 40             	add    $0x40,%eax
c0004640:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004644:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c000464b:	e8 30 07 00 00       	call   c0004d80 <lst_remove>
c0004650:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0004657:	00 
c0004658:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000465b:	89 44 24 04          	mov    %eax,0x4(%esp)
c000465f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0004666:	e8 cd f8 ff ff       	call   c0003f38 <free_page>
c000466b:	eb 2b                	jmp    c0004698 <schedule+0xab>
c000466d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004670:	8b 40 28             	mov    0x28(%eax),%eax
c0004673:	83 f8 01             	cmp    $0x1,%eax
c0004676:	75 20                	jne    c0004698 <schedule+0xab>
c0004678:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000467b:	83 c0 38             	add    $0x38,%eax
c000467e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004682:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004689:	e8 d6 04 00 00       	call   c0004b64 <lst_push>
c000468e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004691:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c0004698:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c000469f:	e8 96 08 00 00       	call   c0004f3a <lst_empty>
c00046a4:	85 c0                	test   %eax,%eax
c00046a6:	74 0d                	je     c00046b5 <schedule+0xc8>
c00046a8:	a1 38 b0 00 c0       	mov    0xc000b038,%eax
c00046ad:	89 04 24             	mov    %eax,(%esp)
c00046b0:	e8 ef 0b 00 00       	call   c00052a4 <thread_unblock>
c00046b5:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c00046bc:	e8 bc 05 00 00       	call   c0004c7d <lst_pop>
c00046c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00046c4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00046c7:	83 e8 38             	sub    $0x38,%eax
c00046ca:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00046cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00046d0:	25 ff 0f 00 00       	and    $0xfff,%eax
c00046d5:	85 c0                	test   %eax,%eax
c00046d7:	74 24                	je     c00046fd <schedule+0x110>
c00046d9:	c7 44 24 0c 40 72 00 	movl   $0xc0007240,0xc(%esp)
c00046e0:	c0 
c00046e1:	c7 44 24 08 b2 72 00 	movl   $0xc00072b2,0x8(%esp)
c00046e8:	c0 
c00046e9:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
c00046f0:	00 
c00046f1:	c7 04 24 28 72 00 c0 	movl   $0xc0007228,(%esp)
c00046f8:	e8 73 ee ff ff       	call   c0003570 <panic_spin>
c00046fd:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0004701:	75 24                	jne    c0004727 <schedule+0x13a>
c0004703:	c7 44 24 0c 5a 72 00 	movl   $0xc000725a,0xc(%esp)
c000470a:	c0 
c000470b:	c7 44 24 08 b2 72 00 	movl   $0xc00072b2,0x8(%esp)
c0004712:	c0 
c0004713:	c7 44 24 04 26 00 00 	movl   $0x26,0x4(%esp)
c000471a:	00 
c000471b:	c7 04 24 28 72 00 c0 	movl   $0xc0007228,(%esp)
c0004722:	e8 49 ee ff ff       	call   c0003570 <panic_spin>
c0004727:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000472a:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c0004731:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004734:	8b 40 48             	mov    0x48(%eax),%eax
c0004737:	85 c0                	test   %eax,%eax
c0004739:	74 09                	je     c0004744 <schedule+0x157>
c000473b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000473e:	8b 40 48             	mov    0x48(%eax),%eax
c0004741:	0f 22 d8             	mov    %eax,%cr3
c0004744:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004747:	83 c0 14             	add    $0x14,%eax
c000474a:	89 04 24             	mov    %eax,(%esp)
c000474d:	e8 83 ed ff ff       	call   c00034d5 <put_str>
c0004752:	c7 04 24 67 72 00 c0 	movl   $0xc0007267,(%esp)
c0004759:	e8 77 ed ff ff       	call   c00034d5 <put_str>
c000475e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004761:	89 04 24             	mov    %eax,(%esp)
c0004764:	e8 52 12 00 00       	call   c00059bb <exchange_esp0>
c0004769:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000476c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004770:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004773:	89 04 24             	mov    %eax,(%esp)
c0004776:	e8 05 08 00 00       	call   c0004f80 <switch_on>
c000477b:	c9                   	leave  
c000477c:	c3                   	ret    

c000477d <thread_fun_exc>:
c000477d:	55                   	push   %ebp
c000477e:	89 e5                	mov    %esp,%ebp
c0004780:	83 ec 18             	sub    $0x18,%esp
c0004783:	e8 9a ed ff ff       	call   c0003522 <int_enable>
c0004788:	8b 45 0c             	mov    0xc(%ebp),%eax
c000478b:	89 04 24             	mov    %eax,(%esp)
c000478e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004791:	ff d0                	call   *%eax
c0004793:	e8 9e ed ff ff       	call   c0003536 <int_disable>
c0004798:	e8 3b fe ff ff       	call   c00045d8 <get_running>
c000479d:	c7 40 28 03 00 00 00 	movl   $0x3,0x28(%eax)
c00047a4:	e8 44 fe ff ff       	call   c00045ed <schedule>
c00047a9:	e8 74 ed ff ff       	call   c0003522 <int_enable>
c00047ae:	c9                   	leave  
c00047af:	c3                   	ret    

c00047b0 <acquire_id>:
c00047b0:	55                   	push   %ebp
c00047b1:	89 e5                	mov    %esp,%ebp
c00047b3:	83 ec 28             	sub    $0x28,%esp
c00047b6:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c00047bd:	e8 a9 09 00 00       	call   c000516b <lock>
c00047c2:	a1 3c b0 00 c0       	mov    0xc000b03c,%eax
c00047c7:	8d 50 01             	lea    0x1(%eax),%edx
c00047ca:	89 15 3c b0 00 c0    	mov    %edx,0xc000b03c
c00047d0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00047d3:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c00047da:	e8 e2 09 00 00       	call   c00051c1 <unlock>
c00047df:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047e2:	c9                   	leave  
c00047e3:	c3                   	ret    

c00047e4 <create_thread>:
c00047e4:	55                   	push   %ebp
c00047e5:	89 e5                	mov    %esp,%ebp
c00047e7:	83 ec 28             	sub    $0x28,%esp
c00047ea:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c00047ee:	75 24                	jne    c0004814 <create_thread+0x30>
c00047f0:	c7 44 24 0c 73 72 00 	movl   $0xc0007273,0xc(%esp)
c00047f7:	c0 
c00047f8:	c7 44 24 08 bb 72 00 	movl   $0xc00072bb,0x8(%esp)
c00047ff:	c0 
c0004800:	c7 44 24 04 46 00 00 	movl   $0x46,0x4(%esp)
c0004807:	00 
c0004808:	c7 04 24 28 72 00 c0 	movl   $0xc0007228,(%esp)
c000480f:	e8 5c ed ff ff       	call   c0003570 <panic_spin>
c0004814:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c000481b:	00 
c000481c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0004823:	e8 17 f4 ff ff       	call   c0003c3f <malloc_page>
c0004828:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000482b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000482e:	8d 50 14             	lea    0x14(%eax),%edx
c0004831:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
c0004838:	00 
c0004839:	8b 45 08             	mov    0x8(%ebp),%eax
c000483c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004840:	89 14 24             	mov    %edx,(%esp)
c0004843:	e8 f2 ee ff ff       	call   c000373a <memcopy>
c0004848:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000484b:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c0004852:	e8 59 ff ff ff       	call   c00047b0 <acquire_id>
c0004857:	8b 55 f4             	mov    -0xc(%ebp),%edx
c000485a:	89 42 24             	mov    %eax,0x24(%edx)
c000485d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004860:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004863:	89 50 2c             	mov    %edx,0x2c(%eax)
c0004866:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004869:	8b 55 0c             	mov    0xc(%ebp),%edx
c000486c:	89 50 30             	mov    %edx,0x30(%eax)
c000486f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004872:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
c0004879:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000487c:	c7 40 4c 09 ad ff 78 	movl   $0x78ffad09,0x4c(%eax)
c0004883:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004886:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%eax)
c000488d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004890:	c9                   	leave  
c0004891:	c3                   	ret    

c0004892 <init_thread>:
c0004892:	55                   	push   %ebp
c0004893:	89 e5                	mov    %esp,%ebp
c0004895:	83 ec 28             	sub    $0x28,%esp
c0004898:	8b 45 08             	mov    0x8(%ebp),%eax
c000489b:	05 e0 0f 00 00       	add    $0xfe0,%eax
c00048a0:	89 c2                	mov    %eax,%edx
c00048a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00048a5:	89 10                	mov    %edx,(%eax)
c00048a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00048aa:	8b 00                	mov    (%eax),%eax
c00048ac:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00048af:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048b2:	c7 40 10 7d 47 00 c0 	movl   $0xc000477d,0x10(%eax)
c00048b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048bc:	8b 55 0c             	mov    0xc(%ebp),%edx
c00048bf:	89 50 18             	mov    %edx,0x18(%eax)
c00048c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048c5:	8b 55 10             	mov    0x10(%ebp),%edx
c00048c8:	89 50 1c             	mov    %edx,0x1c(%eax)
c00048cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048ce:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c00048d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048d8:	8b 50 0c             	mov    0xc(%eax),%edx
c00048db:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048de:	89 50 08             	mov    %edx,0x8(%eax)
c00048e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048e4:	8b 50 08             	mov    0x8(%eax),%edx
c00048e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048ea:	89 10                	mov    %edx,(%eax)
c00048ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048ef:	8b 10                	mov    (%eax),%edx
c00048f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048f4:	89 50 04             	mov    %edx,0x4(%eax)
c00048f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00048fa:	83 c0 38             	add    $0x38,%eax
c00048fd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004901:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004908:	e8 57 02 00 00       	call   c0004b64 <lst_push>
c000490d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004910:	83 c0 40             	add    $0x40,%eax
c0004913:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004917:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c000491e:	e8 41 02 00 00       	call   c0004b64 <lst_push>
c0004923:	c9                   	leave  
c0004924:	c3                   	ret    

c0004925 <init_main>:
c0004925:	55                   	push   %ebp
c0004926:	89 e5                	mov    %esp,%ebp
c0004928:	83 ec 28             	sub    $0x28,%esp
c000492b:	c7 45 f4 00 e0 09 c0 	movl   $0xc009e000,-0xc(%ebp)
c0004932:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004935:	c7 00 e0 ef 09 c0    	movl   $0xc009efe0,(%eax)
c000493b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000493e:	83 c0 14             	add    $0x14,%eax
c0004941:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0004948:	00 
c0004949:	c7 44 24 04 80 72 00 	movl   $0xc0007280,0x4(%esp)
c0004950:	c0 
c0004951:	89 04 24             	mov    %eax,(%esp)
c0004954:	e8 e1 ed ff ff       	call   c000373a <memcopy>
c0004959:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000495c:	83 c0 64             	add    $0x64,%eax
c000495f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0004966:	00 
c0004967:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c000496e:	00 
c000496f:	89 04 24             	mov    %eax,(%esp)
c0004972:	e8 06 ed ff ff       	call   c000367d <memset_8>
c0004977:	a1 3c b0 00 c0       	mov    0xc000b03c,%eax
c000497c:	8d 50 01             	lea    0x1(%eax),%edx
c000497f:	89 15 3c b0 00 c0    	mov    %edx,0xc000b03c
c0004985:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0004988:	89 42 24             	mov    %eax,0x24(%edx)
c000498b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000498e:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c0004995:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004998:	c7 40 30 14 00 00 00 	movl   $0x14,0x30(%eax)
c000499f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049a2:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
c00049a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049ac:	c7 40 2c 14 00 00 00 	movl   $0x14,0x2c(%eax)
c00049b3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049b6:	c7 40 4c 09 ad ff 78 	movl   $0x78ffad09,0x4c(%eax)
c00049bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049c0:	83 c0 40             	add    $0x40,%eax
c00049c3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00049c7:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c00049ce:	e8 91 01 00 00       	call   c0004b64 <lst_push>
c00049d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049d6:	c7 40 48 00 00 10 00 	movl   $0x100000,0x48(%eax)
c00049dd:	c9                   	leave  
c00049de:	c3                   	ret    

c00049df <init_thread_list>:
c00049df:	55                   	push   %ebp
c00049e0:	89 e5                	mov    %esp,%ebp
c00049e2:	83 ec 18             	sub    $0x18,%esp
c00049e5:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c00049ec:	e8 5b 01 00 00       	call   c0004b4c <init_list>
c00049f1:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c00049f8:	e8 4f 01 00 00       	call   c0004b4c <init_list>
c00049fd:	e8 23 ff ff ff       	call   c0004925 <init_main>
c0004a02:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c0004a09:	e8 87 05 00 00       	call   c0004f95 <init_mutex>
c0004a0e:	c7 05 3c b0 00 c0 00 	movl   $0x0,0xc000b03c
c0004a15:	00 00 00 
c0004a18:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0004a1f:	00 
c0004a20:	c7 44 24 08 43 4a 00 	movl   $0xc0004a43,0x8(%esp)
c0004a27:	c0 
c0004a28:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
c0004a2f:	00 
c0004a30:	c7 04 24 85 72 00 c0 	movl   $0xc0007285,(%esp)
c0004a37:	e8 c9 00 00 00       	call   c0004b05 <thread_start>
c0004a3c:	a3 38 b0 00 c0       	mov    %eax,0xc000b038
c0004a41:	c9                   	leave  
c0004a42:	c3                   	ret    

c0004a43 <deamon_fun>:
c0004a43:	55                   	push   %ebp
c0004a44:	89 e5                	mov    %esp,%ebp
c0004a46:	83 ec 28             	sub    $0x28,%esp
c0004a49:	e8 e8 ea ff ff       	call   c0003536 <int_disable>
c0004a4e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004a51:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004a58:	e8 dd 04 00 00       	call   c0004f3a <lst_empty>
c0004a5d:	85 c0                	test   %eax,%eax
c0004a5f:	75 0f                	jne    c0004a70 <deamon_fun+0x2d>
c0004a61:	a1 38 b0 00 c0       	mov    0xc000b038,%eax
c0004a66:	89 04 24             	mov    %eax,(%esp)
c0004a69:	e8 9e 07 00 00       	call   c000520c <thread_block>
c0004a6e:	eb 02                	jmp    c0004a72 <deamon_fun+0x2f>
c0004a70:	fb                   	sti    
c0004a71:	f4                   	hlt    
c0004a72:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a75:	89 04 24             	mov    %eax,(%esp)
c0004a78:	e8 cd ea ff ff       	call   c000354a <set_int_status>
c0004a7d:	c9                   	leave  
c0004a7e:	c3                   	ret    

c0004a7f <thread_yield>:
c0004a7f:	55                   	push   %ebp
c0004a80:	89 e5                	mov    %esp,%ebp
c0004a82:	83 ec 28             	sub    $0x28,%esp
c0004a85:	e8 ac ea ff ff       	call   c0003536 <int_disable>
c0004a8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004a8d:	e8 46 fb ff ff       	call   c00045d8 <get_running>
c0004a92:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004a95:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004a98:	83 c0 38             	add    $0x38,%eax
c0004a9b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004a9f:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004aa6:	e8 70 02 00 00       	call   c0004d1b <lst_find>
c0004aab:	85 c0                	test   %eax,%eax
c0004aad:	74 24                	je     c0004ad3 <thread_yield+0x54>
c0004aaf:	c7 44 24 0c 8c 72 00 	movl   $0xc000728c,0xc(%esp)
c0004ab6:	c0 
c0004ab7:	c7 44 24 08 c9 72 00 	movl   $0xc00072c9,0x8(%esp)
c0004abe:	c0 
c0004abf:	c7 44 24 04 8d 00 00 	movl   $0x8d,0x4(%esp)
c0004ac6:	00 
c0004ac7:	c7 04 24 28 72 00 c0 	movl   $0xc0007228,(%esp)
c0004ace:	e8 9d ea ff ff       	call   c0003570 <panic_spin>
c0004ad3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004ad6:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c0004add:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004ae0:	83 c0 38             	add    $0x38,%eax
c0004ae3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004ae7:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004aee:	e8 71 00 00 00       	call   c0004b64 <lst_push>
c0004af3:	e8 f5 fa ff ff       	call   c00045ed <schedule>
c0004af8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004afb:	89 04 24             	mov    %eax,(%esp)
c0004afe:	e8 47 ea ff ff       	call   c000354a <set_int_status>
c0004b03:	c9                   	leave  
c0004b04:	c3                   	ret    

c0004b05 <thread_start>:
c0004b05:	55                   	push   %ebp
c0004b06:	89 e5                	mov    %esp,%ebp
c0004b08:	83 ec 28             	sub    $0x28,%esp
c0004b0b:	8b 45 14             	mov    0x14(%ebp),%eax
c0004b0e:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0004b12:	8b 45 10             	mov    0x10(%ebp),%eax
c0004b15:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004b19:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b1c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004b20:	8b 45 08             	mov    0x8(%ebp),%eax
c0004b23:	89 04 24             	mov    %eax,(%esp)
c0004b26:	e8 b9 fc ff ff       	call   c00047e4 <create_thread>
c0004b2b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004b2e:	8b 45 14             	mov    0x14(%ebp),%eax
c0004b31:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004b35:	8b 45 10             	mov    0x10(%ebp),%eax
c0004b38:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004b3c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004b3f:	89 04 24             	mov    %eax,(%esp)
c0004b42:	e8 4b fd ff ff       	call   c0004892 <init_thread>
c0004b47:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004b4a:	c9                   	leave  
c0004b4b:	c3                   	ret    

c0004b4c <init_list>:
c0004b4c:	55                   	push   %ebp
c0004b4d:	89 e5                	mov    %esp,%ebp
c0004b4f:	8b 45 08             	mov    0x8(%ebp),%eax
c0004b52:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004b59:	8b 45 08             	mov    0x8(%ebp),%eax
c0004b5c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004b62:	5d                   	pop    %ebp
c0004b63:	c3                   	ret    

c0004b64 <lst_push>:
c0004b64:	55                   	push   %ebp
c0004b65:	89 e5                	mov    %esp,%ebp
c0004b67:	83 ec 28             	sub    $0x28,%esp
c0004b6a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004b6e:	75 24                	jne    c0004b94 <lst_push+0x30>
c0004b70:	c7 44 24 0c d8 72 00 	movl   $0xc00072d8,0xc(%esp)
c0004b77:	c0 
c0004b78:	c7 44 24 08 d0 73 00 	movl   $0xc00073d0,0x8(%esp)
c0004b7f:	c0 
c0004b80:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c0004b87:	00 
c0004b88:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004b8f:	e8 dc e9 ff ff       	call   c0003570 <panic_spin>
c0004b94:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004b97:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004b9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004b9e:	89 04 24             	mov    %eax,(%esp)
c0004ba1:	e8 75 01 00 00       	call   c0004d1b <lst_find>
c0004ba6:	85 c0                	test   %eax,%eax
c0004ba8:	74 24                	je     c0004bce <lst_push+0x6a>
c0004baa:	c7 44 24 0c 09 73 00 	movl   $0xc0007309,0xc(%esp)
c0004bb1:	c0 
c0004bb2:	c7 44 24 08 d0 73 00 	movl   $0xc00073d0,0x8(%esp)
c0004bb9:	c0 
c0004bba:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
c0004bc1:	00 
c0004bc2:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004bc9:	e8 a2 e9 ff ff       	call   c0003570 <panic_spin>
c0004bce:	e8 63 e9 ff ff       	call   c0003536 <int_disable>
c0004bd3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004bd6:	8b 45 08             	mov    0x8(%ebp),%eax
c0004bd9:	8b 40 04             	mov    0x4(%eax),%eax
c0004bdc:	85 c0                	test   %eax,%eax
c0004bde:	75 26                	jne    c0004c06 <lst_push+0xa2>
c0004be0:	8b 45 08             	mov    0x8(%ebp),%eax
c0004be3:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004be6:	89 50 04             	mov    %edx,0x4(%eax)
c0004be9:	8b 45 08             	mov    0x8(%ebp),%eax
c0004bec:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004bef:	89 10                	mov    %edx,(%eax)
c0004bf1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004bf4:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004bfb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004bfe:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004c04:	eb 26                	jmp    c0004c2c <lst_push+0xc8>
c0004c06:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c09:	8b 10                	mov    (%eax),%edx
c0004c0b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004c0e:	89 50 04             	mov    %edx,0x4(%eax)
c0004c11:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c14:	8b 00                	mov    (%eax),%eax
c0004c16:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c19:	89 10                	mov    %edx,(%eax)
c0004c1b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004c1e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004c24:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c27:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c2a:	89 10                	mov    %edx,(%eax)
c0004c2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c2f:	8b 00                	mov    (%eax),%eax
c0004c31:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004c34:	75 3a                	jne    c0004c70 <lst_push+0x10c>
c0004c36:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004c39:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004c3d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c40:	89 04 24             	mov    %eax,(%esp)
c0004c43:	e8 d3 00 00 00       	call   c0004d1b <lst_find>
c0004c48:	85 c0                	test   %eax,%eax
c0004c4a:	75 24                	jne    c0004c70 <lst_push+0x10c>
c0004c4c:	c7 44 24 0c 20 73 00 	movl   $0xc0007320,0xc(%esp)
c0004c53:	c0 
c0004c54:	c7 44 24 08 d0 73 00 	movl   $0xc00073d0,0x8(%esp)
c0004c5b:	c0 
c0004c5c:	c7 44 24 04 1b 00 00 	movl   $0x1b,0x4(%esp)
c0004c63:	00 
c0004c64:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004c6b:	e8 00 e9 ff ff       	call   c0003570 <panic_spin>
c0004c70:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004c73:	89 04 24             	mov    %eax,(%esp)
c0004c76:	e8 cf e8 ff ff       	call   c000354a <set_int_status>
c0004c7b:	c9                   	leave  
c0004c7c:	c3                   	ret    

c0004c7d <lst_pop>:
c0004c7d:	55                   	push   %ebp
c0004c7e:	89 e5                	mov    %esp,%ebp
c0004c80:	83 ec 28             	sub    $0x28,%esp
c0004c83:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c86:	8b 40 04             	mov    0x4(%eax),%eax
c0004c89:	85 c0                	test   %eax,%eax
c0004c8b:	75 24                	jne    c0004cb1 <lst_pop+0x34>
c0004c8d:	c7 44 24 0c 4c 73 00 	movl   $0xc000734c,0xc(%esp)
c0004c94:	c0 
c0004c95:	c7 44 24 08 d9 73 00 	movl   $0xc00073d9,0x8(%esp)
c0004c9c:	c0 
c0004c9d:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c0004ca4:	00 
c0004ca5:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004cac:	e8 bf e8 ff ff       	call   c0003570 <panic_spin>
c0004cb1:	e8 80 e8 ff ff       	call   c0003536 <int_disable>
c0004cb6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004cb9:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cbc:	8b 40 04             	mov    0x4(%eax),%eax
c0004cbf:	85 c0                	test   %eax,%eax
c0004cc1:	75 07                	jne    c0004cca <lst_pop+0x4d>
c0004cc3:	b8 00 00 00 00       	mov    $0x0,%eax
c0004cc8:	eb 4f                	jmp    c0004d19 <lst_pop+0x9c>
c0004cca:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ccd:	8b 40 04             	mov    0x4(%eax),%eax
c0004cd0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004cd3:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cd6:	8b 40 04             	mov    0x4(%eax),%eax
c0004cd9:	8b 10                	mov    (%eax),%edx
c0004cdb:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cde:	89 50 04             	mov    %edx,0x4(%eax)
c0004ce1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004ce4:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004ceb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004cee:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004cf4:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cf7:	8b 40 04             	mov    0x4(%eax),%eax
c0004cfa:	85 c0                	test   %eax,%eax
c0004cfc:	74 0d                	je     c0004d0b <lst_pop+0x8e>
c0004cfe:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d01:	8b 40 04             	mov    0x4(%eax),%eax
c0004d04:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004d0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004d0e:	89 04 24             	mov    %eax,(%esp)
c0004d11:	e8 34 e8 ff ff       	call   c000354a <set_int_status>
c0004d16:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004d19:	c9                   	leave  
c0004d1a:	c3                   	ret    

c0004d1b <lst_find>:
c0004d1b:	55                   	push   %ebp
c0004d1c:	89 e5                	mov    %esp,%ebp
c0004d1e:	83 ec 28             	sub    $0x28,%esp
c0004d21:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004d25:	75 24                	jne    c0004d4b <lst_find+0x30>
c0004d27:	c7 44 24 0c d8 72 00 	movl   $0xc00072d8,0xc(%esp)
c0004d2e:	c0 
c0004d2f:	c7 44 24 08 e1 73 00 	movl   $0xc00073e1,0x8(%esp)
c0004d36:	c0 
c0004d37:	c7 44 24 04 2f 00 00 	movl   $0x2f,0x4(%esp)
c0004d3e:	00 
c0004d3f:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004d46:	e8 25 e8 ff ff       	call   c0003570 <panic_spin>
c0004d4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d4e:	8b 40 04             	mov    0x4(%eax),%eax
c0004d51:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004d54:	eb 08                	jmp    c0004d5e <lst_find+0x43>
c0004d56:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004d59:	8b 00                	mov    (%eax),%eax
c0004d5b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004d5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004d61:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004d64:	74 06                	je     c0004d6c <lst_find+0x51>
c0004d66:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004d6a:	75 ea                	jne    c0004d56 <lst_find+0x3b>
c0004d6c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004d70:	75 07                	jne    c0004d79 <lst_find+0x5e>
c0004d72:	b8 00 00 00 00       	mov    $0x0,%eax
c0004d77:	eb 05                	jmp    c0004d7e <lst_find+0x63>
c0004d79:	b8 01 00 00 00       	mov    $0x1,%eax
c0004d7e:	c9                   	leave  
c0004d7f:	c3                   	ret    

c0004d80 <lst_remove>:
c0004d80:	55                   	push   %ebp
c0004d81:	89 e5                	mov    %esp,%ebp
c0004d83:	83 ec 28             	sub    $0x28,%esp
c0004d86:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004d89:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004d8d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d90:	89 04 24             	mov    %eax,(%esp)
c0004d93:	e8 83 ff ff ff       	call   c0004d1b <lst_find>
c0004d98:	85 c0                	test   %eax,%eax
c0004d9a:	75 24                	jne    c0004dc0 <lst_remove+0x40>
c0004d9c:	c7 44 24 0c 60 73 00 	movl   $0xc0007360,0xc(%esp)
c0004da3:	c0 
c0004da4:	c7 44 24 08 ea 73 00 	movl   $0xc00073ea,0x8(%esp)
c0004dab:	c0 
c0004dac:	c7 44 24 04 38 00 00 	movl   $0x38,0x4(%esp)
c0004db3:	00 
c0004db4:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004dbb:	e8 b0 e7 ff ff       	call   c0003570 <panic_spin>
c0004dc0:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004dc4:	74 47                	je     c0004e0d <lst_remove+0x8d>
c0004dc6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004dc9:	8b 40 04             	mov    0x4(%eax),%eax
c0004dcc:	85 c0                	test   %eax,%eax
c0004dce:	75 09                	jne    c0004dd9 <lst_remove+0x59>
c0004dd0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004dd3:	8b 00                	mov    (%eax),%eax
c0004dd5:	85 c0                	test   %eax,%eax
c0004dd7:	74 07                	je     c0004de0 <lst_remove+0x60>
c0004dd9:	b8 01 00 00 00       	mov    $0x1,%eax
c0004dde:	eb 05                	jmp    c0004de5 <lst_remove+0x65>
c0004de0:	b8 00 00 00 00       	mov    $0x0,%eax
c0004de5:	85 c0                	test   %eax,%eax
c0004de7:	75 24                	jne    c0004e0d <lst_remove+0x8d>
c0004de9:	c7 44 24 0c 74 73 00 	movl   $0xc0007374,0xc(%esp)
c0004df0:	c0 
c0004df1:	c7 44 24 08 ea 73 00 	movl   $0xc00073ea,0x8(%esp)
c0004df8:	c0 
c0004df9:	c7 44 24 04 39 00 00 	movl   $0x39,0x4(%esp)
c0004e00:	00 
c0004e01:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004e08:	e8 63 e7 ff ff       	call   c0003570 <panic_spin>
c0004e0d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e10:	8b 40 04             	mov    0x4(%eax),%eax
c0004e13:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004e16:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e19:	8b 00                	mov    (%eax),%eax
c0004e1b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004e1e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004e22:	75 15                	jne    c0004e39 <lst_remove+0xb9>
c0004e24:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e27:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004e2e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e31:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004e37:	eb 1b                	jmp    c0004e54 <lst_remove+0xd4>
c0004e39:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004e3c:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0004e3f:	89 10                	mov    %edx,(%eax)
c0004e41:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e44:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004e4b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e4e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004e54:	c9                   	leave  
c0004e55:	c3                   	ret    

c0004e56 <lst_head_insert>:
c0004e56:	55                   	push   %ebp
c0004e57:	89 e5                	mov    %esp,%ebp
c0004e59:	83 ec 18             	sub    $0x18,%esp
c0004e5c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e5f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004e63:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e66:	89 04 24             	mov    %eax,(%esp)
c0004e69:	e8 ad fe ff ff       	call   c0004d1b <lst_find>
c0004e6e:	85 c0                	test   %eax,%eax
c0004e70:	74 24                	je     c0004e96 <lst_head_insert+0x40>
c0004e72:	c7 44 24 0c ae 73 00 	movl   $0xc00073ae,0xc(%esp)
c0004e79:	c0 
c0004e7a:	c7 44 24 08 f5 73 00 	movl   $0xc00073f5,0x8(%esp)
c0004e81:	c0 
c0004e82:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%esp)
c0004e89:	00 
c0004e8a:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004e91:	e8 da e6 ff ff       	call   c0003570 <panic_spin>
c0004e96:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004e9a:	75 24                	jne    c0004ec0 <lst_head_insert+0x6a>
c0004e9c:	c7 44 24 0c d8 72 00 	movl   $0xc00072d8,0xc(%esp)
c0004ea3:	c0 
c0004ea4:	c7 44 24 08 f5 73 00 	movl   $0xc00073f5,0x8(%esp)
c0004eab:	c0 
c0004eac:	c7 44 24 04 49 00 00 	movl   $0x49,0x4(%esp)
c0004eb3:	00 
c0004eb4:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004ebb:	e8 b0 e6 ff ff       	call   c0003570 <panic_spin>
c0004ec0:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ec3:	8b 40 04             	mov    0x4(%eax),%eax
c0004ec6:	85 c0                	test   %eax,%eax
c0004ec8:	75 15                	jne    c0004edf <lst_head_insert+0x89>
c0004eca:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ecd:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004ed0:	89 10                	mov    %edx,(%eax)
c0004ed2:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ed5:	8b 10                	mov    (%eax),%edx
c0004ed7:	8b 45 08             	mov    0x8(%ebp),%eax
c0004eda:	89 50 04             	mov    %edx,0x4(%eax)
c0004edd:	eb 2a                	jmp    c0004f09 <lst_head_insert+0xb3>
c0004edf:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ee2:	8b 40 04             	mov    0x4(%eax),%eax
c0004ee5:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004ee8:	89 50 04             	mov    %edx,0x4(%eax)
c0004eeb:	8b 45 08             	mov    0x8(%ebp),%eax
c0004eee:	8b 50 04             	mov    0x4(%eax),%edx
c0004ef1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ef4:	89 10                	mov    %edx,(%eax)
c0004ef6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ef9:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004f00:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f03:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004f06:	89 50 04             	mov    %edx,0x4(%eax)
c0004f09:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f0c:	8b 40 04             	mov    0x4(%eax),%eax
c0004f0f:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004f12:	74 24                	je     c0004f38 <lst_head_insert+0xe2>
c0004f14:	c7 44 24 0c c0 73 00 	movl   $0xc00073c0,0xc(%esp)
c0004f1b:	c0 
c0004f1c:	c7 44 24 08 f5 73 00 	movl   $0xc00073f5,0x8(%esp)
c0004f23:	c0 
c0004f24:	c7 44 24 04 52 00 00 	movl   $0x52,0x4(%esp)
c0004f2b:	00 
c0004f2c:	c7 04 24 e8 72 00 c0 	movl   $0xc00072e8,(%esp)
c0004f33:	e8 38 e6 ff ff       	call   c0003570 <panic_spin>
c0004f38:	c9                   	leave  
c0004f39:	c3                   	ret    

c0004f3a <lst_empty>:
c0004f3a:	55                   	push   %ebp
c0004f3b:	89 e5                	mov    %esp,%ebp
c0004f3d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f40:	8b 40 04             	mov    0x4(%eax),%eax
c0004f43:	85 c0                	test   %eax,%eax
c0004f45:	0f 94 c0             	sete   %al
c0004f48:	0f b6 c0             	movzbl %al,%eax
c0004f4b:	5d                   	pop    %ebp
c0004f4c:	c3                   	ret    

c0004f4d <lst_traverse>:
c0004f4d:	55                   	push   %ebp
c0004f4e:	89 e5                	mov    %esp,%ebp
c0004f50:	83 ec 28             	sub    $0x28,%esp
c0004f53:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f56:	8b 40 04             	mov    0x4(%eax),%eax
c0004f59:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004f5c:	eb 0b                	jmp    c0004f69 <lst_traverse+0x1c>
c0004f5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004f61:	89 04 24             	mov    %eax,(%esp)
c0004f64:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004f67:	ff d0                	call   *%eax
c0004f69:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004f6c:	8b 00                	mov    (%eax),%eax
c0004f6e:	85 c0                	test   %eax,%eax
c0004f70:	75 ec                	jne    c0004f5e <lst_traverse+0x11>
c0004f72:	c9                   	leave  
c0004f73:	c3                   	ret    
c0004f74:	66 90                	xchg   %ax,%ax
c0004f76:	66 90                	xchg   %ax,%ax
c0004f78:	66 90                	xchg   %ax,%ax
c0004f7a:	66 90                	xchg   %ax,%ax
c0004f7c:	66 90                	xchg   %ax,%ax
c0004f7e:	66 90                	xchg   %ax,%ax

c0004f80 <switch_on>:
c0004f80:	57                   	push   %edi
c0004f81:	56                   	push   %esi
c0004f82:	55                   	push   %ebp
c0004f83:	53                   	push   %ebx
c0004f84:	89 e5                	mov    %esp,%ebp
c0004f86:	8b 45 14             	mov    0x14(%ebp),%eax
c0004f89:	89 20                	mov    %esp,(%eax)
c0004f8b:	8b 45 18             	mov    0x18(%ebp),%eax
c0004f8e:	8b 20                	mov    (%eax),%esp
c0004f90:	5b                   	pop    %ebx
c0004f91:	5d                   	pop    %ebp
c0004f92:	5e                   	pop    %esi
c0004f93:	5f                   	pop    %edi
c0004f94:	c3                   	ret    

c0004f95 <init_mutex>:
c0004f95:	55                   	push   %ebp
c0004f96:	89 e5                	mov    %esp,%ebp
c0004f98:	83 ec 18             	sub    $0x18,%esp
c0004f9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f9e:	89 04 24             	mov    %eax,(%esp)
c0004fa1:	e8 19 00 00 00       	call   c0004fbf <sema_init>
c0004fa6:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fa9:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0004fb0:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fb3:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0004fba:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fbd:	c9                   	leave  
c0004fbe:	c3                   	ret    

c0004fbf <sema_init>:
c0004fbf:	55                   	push   %ebp
c0004fc0:	89 e5                	mov    %esp,%ebp
c0004fc2:	83 ec 18             	sub    $0x18,%esp
c0004fc5:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fc8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0004fce:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fd1:	83 c0 04             	add    $0x4,%eax
c0004fd4:	89 04 24             	mov    %eax,(%esp)
c0004fd7:	e8 70 fb ff ff       	call   c0004b4c <init_list>
c0004fdc:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fdf:	c9                   	leave  
c0004fe0:	c3                   	ret    

c0004fe1 <sema_down>:
c0004fe1:	55                   	push   %ebp
c0004fe2:	89 e5                	mov    %esp,%ebp
c0004fe4:	83 ec 28             	sub    $0x28,%esp
c0004fe7:	e8 4a e5 ff ff       	call   c0003536 <int_disable>
c0004fec:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004fef:	e8 e4 f5 ff ff       	call   c00045d8 <get_running>
c0004ff4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004ff7:	e9 90 00 00 00       	jmp    c000508c <sema_down+0xab>
c0004ffc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004fff:	8d 50 38             	lea    0x38(%eax),%edx
c0005002:	8b 45 08             	mov    0x8(%ebp),%eax
c0005005:	83 c0 04             	add    $0x4,%eax
c0005008:	89 54 24 04          	mov    %edx,0x4(%esp)
c000500c:	89 04 24             	mov    %eax,(%esp)
c000500f:	e8 07 fd ff ff       	call   c0004d1b <lst_find>
c0005014:	85 c0                	test   %eax,%eax
c0005016:	74 24                	je     c000503c <sema_down+0x5b>
c0005018:	c7 44 24 0c 08 74 00 	movl   $0xc0007408,0xc(%esp)
c000501f:	c0 
c0005020:	c7 44 24 08 c3 74 00 	movl   $0xc00074c3,0x8(%esp)
c0005027:	c0 
c0005028:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
c000502f:	00 
c0005030:	c7 04 24 2e 74 00 c0 	movl   $0xc000742e,(%esp)
c0005037:	e8 34 e5 ff ff       	call   c0003570 <panic_spin>
c000503c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000503f:	8d 50 38             	lea    0x38(%eax),%edx
c0005042:	8b 45 08             	mov    0x8(%ebp),%eax
c0005045:	83 c0 04             	add    $0x4,%eax
c0005048:	89 54 24 04          	mov    %edx,0x4(%esp)
c000504c:	89 04 24             	mov    %eax,(%esp)
c000504f:	e8 10 fb ff ff       	call   c0004b64 <lst_push>
c0005054:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005057:	89 04 24             	mov    %eax,(%esp)
c000505a:	e8 ad 01 00 00       	call   c000520c <thread_block>
c000505f:	e8 9a e4 ff ff       	call   c00034fe <get_int_status>
c0005064:	85 c0                	test   %eax,%eax
c0005066:	74 24                	je     c000508c <sema_down+0xab>
c0005068:	c7 44 24 0c 49 74 00 	movl   $0xc0007449,0xc(%esp)
c000506f:	c0 
c0005070:	c7 44 24 08 c3 74 00 	movl   $0xc00074c3,0x8(%esp)
c0005077:	c0 
c0005078:	c7 44 24 04 1b 00 00 	movl   $0x1b,0x4(%esp)
c000507f:	00 
c0005080:	c7 04 24 2e 74 00 c0 	movl   $0xc000742e,(%esp)
c0005087:	e8 e4 e4 ff ff       	call   c0003570 <panic_spin>
c000508c:	8b 45 08             	mov    0x8(%ebp),%eax
c000508f:	8b 00                	mov    (%eax),%eax
c0005091:	83 f8 01             	cmp    $0x1,%eax
c0005094:	0f 85 62 ff ff ff    	jne    c0004ffc <sema_down+0x1b>
c000509a:	8b 45 08             	mov    0x8(%ebp),%eax
c000509d:	8b 00                	mov    (%eax),%eax
c000509f:	83 f8 01             	cmp    $0x1,%eax
c00050a2:	74 24                	je     c00050c8 <sema_down+0xe7>
c00050a4:	c7 44 24 0c 65 74 00 	movl   $0xc0007465,0xc(%esp)
c00050ab:	c0 
c00050ac:	c7 44 24 08 c3 74 00 	movl   $0xc00074c3,0x8(%esp)
c00050b3:	c0 
c00050b4:	c7 44 24 04 1d 00 00 	movl   $0x1d,0x4(%esp)
c00050bb:	00 
c00050bc:	c7 04 24 2e 74 00 c0 	movl   $0xc000742e,(%esp)
c00050c3:	e8 a8 e4 ff ff       	call   c0003570 <panic_spin>
c00050c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00050cb:	8b 00                	mov    (%eax),%eax
c00050cd:	8d 50 ff             	lea    -0x1(%eax),%edx
c00050d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00050d3:	89 10                	mov    %edx,(%eax)
c00050d5:	8b 45 08             	mov    0x8(%ebp),%eax
c00050d8:	8b 00                	mov    (%eax),%eax
c00050da:	85 c0                	test   %eax,%eax
c00050dc:	74 24                	je     c0005102 <sema_down+0x121>
c00050de:	c7 44 24 0c 74 74 00 	movl   $0xc0007474,0xc(%esp)
c00050e5:	c0 
c00050e6:	c7 44 24 08 c3 74 00 	movl   $0xc00074c3,0x8(%esp)
c00050ed:	c0 
c00050ee:	c7 44 24 04 1f 00 00 	movl   $0x1f,0x4(%esp)
c00050f5:	00 
c00050f6:	c7 04 24 2e 74 00 c0 	movl   $0xc000742e,(%esp)
c00050fd:	e8 6e e4 ff ff       	call   c0003570 <panic_spin>
c0005102:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005105:	89 04 24             	mov    %eax,(%esp)
c0005108:	e8 3d e4 ff ff       	call   c000354a <set_int_status>
c000510d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005110:	c9                   	leave  
c0005111:	c3                   	ret    

c0005112 <sema_up>:
c0005112:	55                   	push   %ebp
c0005113:	89 e5                	mov    %esp,%ebp
c0005115:	83 ec 28             	sub    $0x28,%esp
c0005118:	e8 19 e4 ff ff       	call   c0003536 <int_disable>
c000511d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005120:	8b 45 08             	mov    0x8(%ebp),%eax
c0005123:	83 c0 04             	add    $0x4,%eax
c0005126:	89 04 24             	mov    %eax,(%esp)
c0005129:	e8 0c fe ff ff       	call   c0004f3a <lst_empty>
c000512e:	85 c0                	test   %eax,%eax
c0005130:	75 1f                	jne    c0005151 <sema_up+0x3f>
c0005132:	8b 45 08             	mov    0x8(%ebp),%eax
c0005135:	83 c0 04             	add    $0x4,%eax
c0005138:	89 04 24             	mov    %eax,(%esp)
c000513b:	e8 3d fb ff ff       	call   c0004c7d <lst_pop>
c0005140:	83 e8 38             	sub    $0x38,%eax
c0005143:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005146:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005149:	89 04 24             	mov    %eax,(%esp)
c000514c:	e8 53 01 00 00       	call   c00052a4 <thread_unblock>
c0005151:	8b 45 08             	mov    0x8(%ebp),%eax
c0005154:	8b 00                	mov    (%eax),%eax
c0005156:	8d 50 01             	lea    0x1(%eax),%edx
c0005159:	8b 45 08             	mov    0x8(%ebp),%eax
c000515c:	89 10                	mov    %edx,(%eax)
c000515e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005161:	89 04 24             	mov    %eax,(%esp)
c0005164:	e8 e1 e3 ff ff       	call   c000354a <set_int_status>
c0005169:	c9                   	leave  
c000516a:	c3                   	ret    

c000516b <lock>:
c000516b:	55                   	push   %ebp
c000516c:	89 e5                	mov    %esp,%ebp
c000516e:	83 ec 28             	sub    $0x28,%esp
c0005171:	e8 c0 e3 ff ff       	call   c0003536 <int_disable>
c0005176:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005179:	8b 45 08             	mov    0x8(%ebp),%eax
c000517c:	8b 40 0c             	mov    0xc(%eax),%eax
c000517f:	85 c0                	test   %eax,%eax
c0005181:	74 20                	je     c00051a3 <lock+0x38>
c0005183:	e8 50 f4 ff ff       	call   c00045d8 <get_running>
c0005188:	8b 55 08             	mov    0x8(%ebp),%edx
c000518b:	8b 52 0c             	mov    0xc(%edx),%edx
c000518e:	39 d0                	cmp    %edx,%eax
c0005190:	75 11                	jne    c00051a3 <lock+0x38>
c0005192:	8b 45 08             	mov    0x8(%ebp),%eax
c0005195:	8b 40 10             	mov    0x10(%eax),%eax
c0005198:	8d 50 01             	lea    0x1(%eax),%edx
c000519b:	8b 45 08             	mov    0x8(%ebp),%eax
c000519e:	89 50 10             	mov    %edx,0x10(%eax)
c00051a1:	eb 11                	jmp    c00051b4 <lock+0x49>
c00051a3:	8b 45 08             	mov    0x8(%ebp),%eax
c00051a6:	89 04 24             	mov    %eax,(%esp)
c00051a9:	e8 33 fe ff ff       	call   c0004fe1 <sema_down>
c00051ae:	8b 55 08             	mov    0x8(%ebp),%edx
c00051b1:	89 42 0c             	mov    %eax,0xc(%edx)
c00051b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00051b7:	89 04 24             	mov    %eax,(%esp)
c00051ba:	e8 8b e3 ff ff       	call   c000354a <set_int_status>
c00051bf:	c9                   	leave  
c00051c0:	c3                   	ret    

c00051c1 <unlock>:
c00051c1:	55                   	push   %ebp
c00051c2:	89 e5                	mov    %esp,%ebp
c00051c4:	83 ec 28             	sub    $0x28,%esp
c00051c7:	e8 6a e3 ff ff       	call   c0003536 <int_disable>
c00051cc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00051cf:	8b 45 08             	mov    0x8(%ebp),%eax
c00051d2:	8b 40 10             	mov    0x10(%eax),%eax
c00051d5:	85 c0                	test   %eax,%eax
c00051d7:	74 11                	je     c00051ea <unlock+0x29>
c00051d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00051dc:	8b 40 10             	mov    0x10(%eax),%eax
c00051df:	8d 50 ff             	lea    -0x1(%eax),%edx
c00051e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00051e5:	89 50 10             	mov    %edx,0x10(%eax)
c00051e8:	eb 15                	jmp    c00051ff <unlock+0x3e>
c00051ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00051ed:	89 04 24             	mov    %eax,(%esp)
c00051f0:	e8 1d ff ff ff       	call   c0005112 <sema_up>
c00051f5:	8b 45 08             	mov    0x8(%ebp),%eax
c00051f8:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c00051ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005202:	89 04 24             	mov    %eax,(%esp)
c0005205:	e8 40 e3 ff ff       	call   c000354a <set_int_status>
c000520a:	c9                   	leave  
c000520b:	c3                   	ret    

c000520c <thread_block>:
c000520c:	55                   	push   %ebp
c000520d:	89 e5                	mov    %esp,%ebp
c000520f:	83 ec 18             	sub    $0x18,%esp
c0005212:	e8 e7 e2 ff ff       	call   c00034fe <get_int_status>
c0005217:	85 c0                	test   %eax,%eax
c0005219:	74 24                	je     c000523f <thread_block+0x33>
c000521b:	c7 44 24 0c 49 74 00 	movl   $0xc0007449,0xc(%esp)
c0005222:	c0 
c0005223:	c7 44 24 08 cd 74 00 	movl   $0xc00074cd,0x8(%esp)
c000522a:	c0 
c000522b:	c7 44 24 04 76 00 00 	movl   $0x76,0x4(%esp)
c0005232:	00 
c0005233:	c7 04 24 2e 74 00 c0 	movl   $0xc000742e,(%esp)
c000523a:	e8 31 e3 ff ff       	call   c0003570 <panic_spin>
c000523f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005242:	8b 40 28             	mov    0x28(%eax),%eax
c0005245:	85 c0                	test   %eax,%eax
c0005247:	74 2f                	je     c0005278 <thread_block+0x6c>
c0005249:	8b 45 08             	mov    0x8(%ebp),%eax
c000524c:	8b 40 28             	mov    0x28(%eax),%eax
c000524f:	83 f8 03             	cmp    $0x3,%eax
c0005252:	75 24                	jne    c0005278 <thread_block+0x6c>
c0005254:	c7 44 24 0c 84 74 00 	movl   $0xc0007484,0xc(%esp)
c000525b:	c0 
c000525c:	c7 44 24 08 cd 74 00 	movl   $0xc00074cd,0x8(%esp)
c0005263:	c0 
c0005264:	c7 44 24 04 77 00 00 	movl   $0x77,0x4(%esp)
c000526b:	00 
c000526c:	c7 04 24 2e 74 00 c0 	movl   $0xc000742e,(%esp)
c0005273:	e8 f8 e2 ff ff       	call   c0003570 <panic_spin>
c0005278:	8b 45 08             	mov    0x8(%ebp),%eax
c000527b:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
c0005282:	8b 45 08             	mov    0x8(%ebp),%eax
c0005285:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
c000528c:	e8 91 e2 ff ff       	call   c0003522 <int_enable>
c0005291:	90                   	nop
c0005292:	8b 45 08             	mov    0x8(%ebp),%eax
c0005295:	8b 40 2c             	mov    0x2c(%eax),%eax
c0005298:	83 f8 01             	cmp    $0x1,%eax
c000529b:	74 f5                	je     c0005292 <thread_block+0x86>
c000529d:	e8 94 e2 ff ff       	call   c0003536 <int_disable>
c00052a2:	c9                   	leave  
c00052a3:	c3                   	ret    

c00052a4 <thread_unblock>:
c00052a4:	55                   	push   %ebp
c00052a5:	89 e5                	mov    %esp,%ebp
c00052a7:	83 ec 18             	sub    $0x18,%esp
c00052aa:	e8 4f e2 ff ff       	call   c00034fe <get_int_status>
c00052af:	85 c0                	test   %eax,%eax
c00052b1:	74 24                	je     c00052d7 <thread_unblock+0x33>
c00052b3:	c7 44 24 0c 49 74 00 	movl   $0xc0007449,0xc(%esp)
c00052ba:	c0 
c00052bb:	c7 44 24 08 da 74 00 	movl   $0xc00074da,0x8(%esp)
c00052c2:	c0 
c00052c3:	c7 44 24 04 80 00 00 	movl   $0x80,0x4(%esp)
c00052ca:	00 
c00052cb:	c7 04 24 2e 74 00 c0 	movl   $0xc000742e,(%esp)
c00052d2:	e8 99 e2 ff ff       	call   c0003570 <panic_spin>
c00052d7:	8b 45 08             	mov    0x8(%ebp),%eax
c00052da:	8b 40 28             	mov    0x28(%eax),%eax
c00052dd:	85 c0                	test   %eax,%eax
c00052df:	74 24                	je     c0005305 <thread_unblock+0x61>
c00052e1:	c7 44 24 0c b0 74 00 	movl   $0xc00074b0,0xc(%esp)
c00052e8:	c0 
c00052e9:	c7 44 24 08 da 74 00 	movl   $0xc00074da,0x8(%esp)
c00052f0:	c0 
c00052f1:	c7 44 24 04 81 00 00 	movl   $0x81,0x4(%esp)
c00052f8:	00 
c00052f9:	c7 04 24 2e 74 00 c0 	movl   $0xc000742e,(%esp)
c0005300:	e8 6b e2 ff ff       	call   c0003570 <panic_spin>
c0005305:	8b 45 08             	mov    0x8(%ebp),%eax
c0005308:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c000530f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005312:	83 c0 38             	add    $0x38,%eax
c0005315:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005319:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0005320:	e8 31 fb ff ff       	call   c0004e56 <lst_head_insert>
c0005325:	c9                   	leave  
c0005326:	c3                   	ret    

c0005327 <init_console>:
c0005327:	55                   	push   %ebp
c0005328:	89 e5                	mov    %esp,%ebp
c000532a:	83 ec 18             	sub    $0x18,%esp
c000532d:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005334:	e8 5c fc ff ff       	call   c0004f95 <init_mutex>
c0005339:	c9                   	leave  
c000533a:	c3                   	ret    

c000533b <console_put_str>:
c000533b:	55                   	push   %ebp
c000533c:	89 e5                	mov    %esp,%ebp
c000533e:	83 ec 18             	sub    $0x18,%esp
c0005341:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005348:	e8 1e fe ff ff       	call   c000516b <lock>
c000534d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005350:	89 04 24             	mov    %eax,(%esp)
c0005353:	e8 7d e1 ff ff       	call   c00034d5 <put_str>
c0005358:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c000535f:	e8 5d fe ff ff       	call   c00051c1 <unlock>
c0005364:	c9                   	leave  
c0005365:	c3                   	ret    

c0005366 <console_put_char>:
c0005366:	55                   	push   %ebp
c0005367:	89 e5                	mov    %esp,%ebp
c0005369:	83 ec 18             	sub    $0x18,%esp
c000536c:	8b 45 08             	mov    0x8(%ebp),%eax
c000536f:	88 45 f4             	mov    %al,-0xc(%ebp)
c0005372:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005379:	e8 ed fd ff ff       	call   c000516b <lock>
c000537e:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c0005382:	89 04 24             	mov    %eax,(%esp)
c0005385:	e8 c6 df ff ff       	call   c0003350 <put_char>
c000538a:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005391:	e8 2b fe ff ff       	call   c00051c1 <unlock>
c0005396:	c9                   	leave  
c0005397:	c3                   	ret    

c0005398 <console_put_int>:
c0005398:	55                   	push   %ebp
c0005399:	89 e5                	mov    %esp,%ebp
c000539b:	83 ec 18             	sub    $0x18,%esp
c000539e:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c00053a5:	e8 c1 fd ff ff       	call   c000516b <lock>
c00053aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00053ad:	89 04 24             	mov    %eax,(%esp)
c00053b0:	e8 7e e0 ff ff       	call   c0003433 <put_int>
c00053b5:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c00053bc:	e8 00 fe ff ff       	call   c00051c1 <unlock>
c00053c1:	c9                   	leave  
c00053c2:	c3                   	ret    

c00053c3 <read_port>:
c00053c3:	55                   	push   %ebp
c00053c4:	89 e5                	mov    %esp,%ebp
c00053c6:	83 ec 14             	sub    $0x14,%esp
c00053c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00053cc:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00053d0:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
c00053d4:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c00053d8:	ec                   	in     (%dx),%al
c00053d9:	88 45 ff             	mov    %al,-0x1(%ebp)
c00053dc:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c00053e0:	c9                   	leave  
c00053e1:	c3                   	ret    

c00053e2 <init_keyboard>:
c00053e2:	55                   	push   %ebp
c00053e3:	89 e5                	mov    %esp,%ebp
c00053e5:	81 ec d8 00 00 00    	sub    $0xd8,%esp
c00053eb:	c7 05 24 b1 00 c0 00 	movl   $0x0,0xc000b124
c00053f2:	00 00 00 
c00053f5:	c7 05 3c b1 00 c0 00 	movl   $0x0,0xc000b13c
c00053fc:	00 00 00 
c00053ff:	c7 05 38 b1 00 c0 00 	movl   $0x0,0xc000b138
c0005406:	00 00 00 
c0005409:	c7 05 74 b0 00 c0 00 	movl   $0x0,0xc000b074
c0005410:	00 00 00 
c0005413:	c7 05 70 b0 00 c0 00 	movl   $0x0,0xc000b070
c000541a:	00 00 00 
c000541d:	8d 85 38 ff ff ff    	lea    -0xc8(%ebp),%eax
c0005423:	c7 44 24 04 80 b0 00 	movl   $0xc000b080,0x4(%esp)
c000542a:	c0 
c000542b:	89 04 24             	mov    %eax,(%esp)
c000542e:	e8 24 04 00 00       	call   c0005857 <init_cq>
c0005433:	83 ec 04             	sub    $0x4,%esp
c0005436:	c7 44 24 08 80 b0 00 	movl   $0xc000b080,0x8(%esp)
c000543d:	c0 
c000543e:	c7 44 24 04 4f 59 00 	movl   $0xc000594f,0x4(%esp)
c0005445:	c0 
c0005446:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c000544d:	e8 31 03 00 00       	call   c0005783 <init_condition_var>
c0005452:	c7 44 24 08 80 b0 00 	movl   $0xc000b080,0x8(%esp)
c0005459:	c0 
c000545a:	c7 44 24 04 9a 59 00 	movl   $0xc000599a,0x4(%esp)
c0005461:	c0 
c0005462:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c0005469:	e8 15 03 00 00       	call   c0005783 <init_condition_var>
c000546e:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c0005475:	e8 1b fb ff ff       	call   c0004f95 <init_mutex>
c000547a:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c0005481:	e8 0f fb ff ff       	call   c0004f95 <init_mutex>
c0005486:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c000548d:	00 
c000548e:	c7 44 24 08 3f 57 00 	movl   $0xc000573f,0x8(%esp)
c0005495:	c0 
c0005496:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c000549d:	00 
c000549e:	c7 04 24 e9 74 00 c0 	movl   $0xc00074e9,(%esp)
c00054a5:	e8 5b f6 ff ff       	call   c0004b05 <thread_start>
c00054aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00054ad:	c9                   	leave  
c00054ae:	c3                   	ret    

c00054af <keyboard_int_handle>:
c00054af:	55                   	push   %ebp
c00054b0:	89 e5                	mov    %esp,%ebp
c00054b2:	83 ec 28             	sub    $0x28,%esp
c00054b5:	c7 04 24 60 00 00 00 	movl   $0x60,(%esp)
c00054bc:	e8 02 ff ff ff       	call   c00053c3 <read_port>
c00054c1:	0f b6 c0             	movzbl %al,%eax
c00054c4:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c00054c8:	66 81 7d f6 e0 00    	cmpw   $0xe0,-0xa(%ebp)
c00054ce:	75 0f                	jne    c00054df <keyboard_int_handle+0x30>
c00054d0:	c7 05 24 b1 00 c0 01 	movl   $0x1,0xc000b124
c00054d7:	00 00 00 
c00054da:	e9 0c 02 00 00       	jmp    c00056eb <keyboard_int_handle+0x23c>
c00054df:	a1 24 b1 00 c0       	mov    0xc000b124,%eax
c00054e4:	85 c0                	test   %eax,%eax
c00054e6:	74 06                	je     c00054ee <keyboard_int_handle+0x3f>
c00054e8:	66 c7 45 f6 01 00    	movw   $0x1,-0xa(%ebp)
c00054ee:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00054f2:	25 80 00 00 00       	and    $0x80,%eax
c00054f7:	85 c0                	test   %eax,%eax
c00054f9:	0f 95 c0             	setne  %al
c00054fc:	0f b6 c0             	movzbl %al,%eax
c00054ff:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005502:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0005506:	74 5d                	je     c0005565 <keyboard_int_handle+0xb6>
c0005508:	66 83 45 f6 80       	addw   $0xff80,-0xa(%ebp)
c000550d:	66 83 7d f6 38       	cmpw   $0x38,-0xa(%ebp)
c0005512:	74 08                	je     c000551c <keyboard_int_handle+0x6d>
c0005514:	66 81 7d f6 38 e0    	cmpw   $0xe038,-0xa(%ebp)
c000551a:	75 0c                	jne    c0005528 <keyboard_int_handle+0x79>
c000551c:	c7 05 74 b0 00 c0 00 	movl   $0x0,0xc000b074
c0005523:	00 00 00 
c0005526:	eb 38                	jmp    c0005560 <keyboard_int_handle+0xb1>
c0005528:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c000552d:	74 07                	je     c0005536 <keyboard_int_handle+0x87>
c000552f:	66 83 7d f6 36       	cmpw   $0x36,-0xa(%ebp)
c0005534:	75 0c                	jne    c0005542 <keyboard_int_handle+0x93>
c0005536:	c7 05 3c b1 00 c0 00 	movl   $0x0,0xc000b13c
c000553d:	00 00 00 
c0005540:	eb 1e                	jmp    c0005560 <keyboard_int_handle+0xb1>
c0005542:	66 83 7d f6 1d       	cmpw   $0x1d,-0xa(%ebp)
c0005547:	74 08                	je     c0005551 <keyboard_int_handle+0xa2>
c0005549:	66 81 7d f6 1d e0    	cmpw   $0xe01d,-0xa(%ebp)
c000554f:	75 0f                	jne    c0005560 <keyboard_int_handle+0xb1>
c0005551:	c7 05 38 b1 00 c0 00 	movl   $0x0,0xc000b138
c0005558:	00 00 00 
c000555b:	e9 8b 01 00 00       	jmp    c00056eb <keyboard_int_handle+0x23c>
c0005560:	e9 86 01 00 00       	jmp    c00056eb <keyboard_int_handle+0x23c>
c0005565:	66 83 7d f6 38       	cmpw   $0x38,-0xa(%ebp)
c000556a:	74 08                	je     c0005574 <keyboard_int_handle+0xc5>
c000556c:	66 81 7d f6 38 e0    	cmpw   $0xe038,-0xa(%ebp)
c0005572:	75 0f                	jne    c0005583 <keyboard_int_handle+0xd4>
c0005574:	c7 05 74 b0 00 c0 01 	movl   $0x1,0xc000b074
c000557b:	00 00 00 
c000557e:	e9 68 01 00 00       	jmp    c00056eb <keyboard_int_handle+0x23c>
c0005583:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c0005588:	74 07                	je     c0005591 <keyboard_int_handle+0xe2>
c000558a:	66 83 7d f6 36       	cmpw   $0x36,-0xa(%ebp)
c000558f:	75 0f                	jne    c00055a0 <keyboard_int_handle+0xf1>
c0005591:	c7 05 3c b1 00 c0 01 	movl   $0x1,0xc000b13c
c0005598:	00 00 00 
c000559b:	e9 4b 01 00 00       	jmp    c00056eb <keyboard_int_handle+0x23c>
c00055a0:	66 83 7d f6 1d       	cmpw   $0x1d,-0xa(%ebp)
c00055a5:	74 08                	je     c00055af <keyboard_int_handle+0x100>
c00055a7:	66 81 7d f6 1d e0    	cmpw   $0xe01d,-0xa(%ebp)
c00055ad:	75 0f                	jne    c00055be <keyboard_int_handle+0x10f>
c00055af:	c7 05 38 b1 00 c0 01 	movl   $0x1,0xc000b138
c00055b6:	00 00 00 
c00055b9:	e9 2d 01 00 00       	jmp    c00056eb <keyboard_int_handle+0x23c>
c00055be:	66 83 7d f6 3a       	cmpw   $0x3a,-0xa(%ebp)
c00055c3:	75 17                	jne    c00055dc <keyboard_int_handle+0x12d>
c00055c5:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c00055ca:	85 c0                	test   %eax,%eax
c00055cc:	0f 94 c0             	sete   %al
c00055cf:	0f b6 c0             	movzbl %al,%eax
c00055d2:	a3 70 b0 00 c0       	mov    %eax,0xc000b070
c00055d7:	e9 0f 01 00 00       	jmp    c00056eb <keyboard_int_handle+0x23c>
c00055dc:	66 83 7d f6 0f       	cmpw   $0xf,-0xa(%ebp)
c00055e1:	76 07                	jbe    c00055ea <keyboard_int_handle+0x13b>
c00055e3:	66 83 7d f6 19       	cmpw   $0x19,-0xa(%ebp)
c00055e8:	76 1c                	jbe    c0005606 <keyboard_int_handle+0x157>
c00055ea:	66 83 7d f6 1c       	cmpw   $0x1c,-0xa(%ebp)
c00055ef:	76 07                	jbe    c00055f8 <keyboard_int_handle+0x149>
c00055f1:	66 83 7d f6 25       	cmpw   $0x25,-0xa(%ebp)
c00055f6:	76 0e                	jbe    c0005606 <keyboard_int_handle+0x157>
c00055f8:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c00055fd:	76 0e                	jbe    c000560d <keyboard_int_handle+0x15e>
c00055ff:	66 83 7d f6 31       	cmpw   $0x31,-0xa(%ebp)
c0005604:	77 07                	ja     c000560d <keyboard_int_handle+0x15e>
c0005606:	b8 01 00 00 00       	mov    $0x1,%eax
c000560b:	eb 05                	jmp    c0005612 <keyboard_int_handle+0x163>
c000560d:	b8 00 00 00 00       	mov    $0x0,%eax
c0005612:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005615:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0005619:	0f 84 93 00 00 00    	je     c00056b2 <keyboard_int_handle+0x203>
c000561f:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c0005624:	85 c0                	test   %eax,%eax
c0005626:	74 22                	je     c000564a <keyboard_int_handle+0x19b>
c0005628:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c000562d:	85 c0                	test   %eax,%eax
c000562f:	75 19                	jne    c000564a <keyboard_int_handle+0x19b>
c0005631:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005635:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c000563c:	c0 
c000563d:	0f be c0             	movsbl %al,%eax
c0005640:	89 04 24             	mov    %eax,(%esp)
c0005643:	e8 a5 00 00 00       	call   c00056ed <give_char>
c0005648:	eb 66                	jmp    c00056b0 <keyboard_int_handle+0x201>
c000564a:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c000564f:	85 c0                	test   %eax,%eax
c0005651:	74 22                	je     c0005675 <keyboard_int_handle+0x1c6>
c0005653:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c0005658:	85 c0                	test   %eax,%eax
c000565a:	74 19                	je     c0005675 <keyboard_int_handle+0x1c6>
c000565c:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005660:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c0005667:	c0 
c0005668:	0f be c0             	movsbl %al,%eax
c000566b:	89 04 24             	mov    %eax,(%esp)
c000566e:	e8 7a 00 00 00       	call   c00056ed <give_char>
c0005673:	eb 3b                	jmp    c00056b0 <keyboard_int_handle+0x201>
c0005675:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c000567a:	85 c0                	test   %eax,%eax
c000567c:	74 19                	je     c0005697 <keyboard_int_handle+0x1e8>
c000567e:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005682:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c0005689:	c0 
c000568a:	0f be c0             	movsbl %al,%eax
c000568d:	89 04 24             	mov    %eax,(%esp)
c0005690:	e8 58 00 00 00       	call   c00056ed <give_char>
c0005695:	eb 54                	jmp    c00056eb <keyboard_int_handle+0x23c>
c0005697:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000569b:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c00056a2:	c0 
c00056a3:	0f be c0             	movsbl %al,%eax
c00056a6:	89 04 24             	mov    %eax,(%esp)
c00056a9:	e8 3f 00 00 00       	call   c00056ed <give_char>
c00056ae:	eb 3b                	jmp    c00056eb <keyboard_int_handle+0x23c>
c00056b0:	eb 39                	jmp    c00056eb <keyboard_int_handle+0x23c>
c00056b2:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c00056b7:	85 c0                	test   %eax,%eax
c00056b9:	74 19                	je     c00056d4 <keyboard_int_handle+0x225>
c00056bb:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00056bf:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c00056c6:	c0 
c00056c7:	0f be c0             	movsbl %al,%eax
c00056ca:	89 04 24             	mov    %eax,(%esp)
c00056cd:	e8 1b 00 00 00       	call   c00056ed <give_char>
c00056d2:	eb 17                	jmp    c00056eb <keyboard_int_handle+0x23c>
c00056d4:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00056d8:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c00056df:	c0 
c00056e0:	0f be c0             	movsbl %al,%eax
c00056e3:	89 04 24             	mov    %eax,(%esp)
c00056e6:	e8 02 00 00 00       	call   c00056ed <give_char>
c00056eb:	c9                   	leave  
c00056ec:	c3                   	ret    

c00056ed <give_char>:
c00056ed:	55                   	push   %ebp
c00056ee:	89 e5                	mov    %esp,%ebp
c00056f0:	83 ec 18             	sub    $0x18,%esp
c00056f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00056f6:	88 45 f4             	mov    %al,-0xc(%ebp)
c00056f9:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c0005700:	e8 66 fa ff ff       	call   c000516b <lock>
c0005705:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c000570c:	e8 99 00 00 00       	call   c00057aa <conditional_block>
c0005711:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c0005715:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005719:	c7 04 24 80 b0 00 c0 	movl   $0xc000b080,(%esp)
c0005720:	e8 6e 01 00 00       	call   c0005893 <cq_push>
c0005725:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c000572c:	e8 da 00 00 00       	call   c000580b <conditional_notify>
c0005731:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c0005738:	e8 84 fa ff ff       	call   c00051c1 <unlock>
c000573d:	c9                   	leave  
c000573e:	c3                   	ret    

c000573f <take_char>:
c000573f:	55                   	push   %ebp
c0005740:	89 e5                	mov    %esp,%ebp
c0005742:	83 ec 18             	sub    $0x18,%esp
c0005745:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c000574c:	e8 1a fa ff ff       	call   c000516b <lock>
c0005751:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c0005758:	e8 4d 00 00 00       	call   c00057aa <conditional_block>
c000575d:	c7 04 24 80 b0 00 c0 	movl   $0xc000b080,(%esp)
c0005764:	e8 fd fb ff ff       	call   c0005366 <console_put_char>
c0005769:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c0005770:	e8 96 00 00 00       	call   c000580b <conditional_notify>
c0005775:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c000577c:	e8 40 fa ff ff       	call   c00051c1 <unlock>
c0005781:	eb c2                	jmp    c0005745 <take_char+0x6>

c0005783 <init_condition_var>:
c0005783:	55                   	push   %ebp
c0005784:	89 e5                	mov    %esp,%ebp
c0005786:	83 ec 18             	sub    $0x18,%esp
c0005789:	8b 45 08             	mov    0x8(%ebp),%eax
c000578c:	8b 55 0c             	mov    0xc(%ebp),%edx
c000578f:	89 10                	mov    %edx,(%eax)
c0005791:	8b 45 08             	mov    0x8(%ebp),%eax
c0005794:	8b 55 10             	mov    0x10(%ebp),%edx
c0005797:	89 50 04             	mov    %edx,0x4(%eax)
c000579a:	8b 45 08             	mov    0x8(%ebp),%eax
c000579d:	83 c0 08             	add    $0x8,%eax
c00057a0:	89 04 24             	mov    %eax,(%esp)
c00057a3:	e8 a4 f3 ff ff       	call   c0004b4c <init_list>
c00057a8:	c9                   	leave  
c00057a9:	c3                   	ret    

c00057aa <conditional_block>:
c00057aa:	55                   	push   %ebp
c00057ab:	89 e5                	mov    %esp,%ebp
c00057ad:	83 ec 28             	sub    $0x28,%esp
c00057b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00057b3:	8b 00                	mov    (%eax),%eax
c00057b5:	8b 55 08             	mov    0x8(%ebp),%edx
c00057b8:	8b 52 04             	mov    0x4(%edx),%edx
c00057bb:	89 14 24             	mov    %edx,(%esp)
c00057be:	ff d0                	call   *%eax
c00057c0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00057c3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00057c7:	75 02                	jne    c00057cb <conditional_block+0x21>
c00057c9:	eb 3e                	jmp    c0005809 <conditional_block+0x5f>
c00057cb:	e8 66 dd ff ff       	call   c0003536 <int_disable>
c00057d0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00057d3:	e8 00 ee ff ff       	call   c00045d8 <get_running>
c00057d8:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00057db:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00057de:	8d 50 38             	lea    0x38(%eax),%edx
c00057e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00057e4:	83 c0 08             	add    $0x8,%eax
c00057e7:	89 54 24 04          	mov    %edx,0x4(%esp)
c00057eb:	89 04 24             	mov    %eax,(%esp)
c00057ee:	e8 71 f3 ff ff       	call   c0004b64 <lst_push>
c00057f3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00057f6:	89 04 24             	mov    %eax,(%esp)
c00057f9:	e8 0e fa ff ff       	call   c000520c <thread_block>
c00057fe:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005801:	89 04 24             	mov    %eax,(%esp)
c0005804:	e8 41 dd ff ff       	call   c000354a <set_int_status>
c0005809:	c9                   	leave  
c000580a:	c3                   	ret    

c000580b <conditional_notify>:
c000580b:	55                   	push   %ebp
c000580c:	89 e5                	mov    %esp,%ebp
c000580e:	83 ec 28             	sub    $0x28,%esp
c0005811:	e8 20 dd ff ff       	call   c0003536 <int_disable>
c0005816:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005819:	8b 45 08             	mov    0x8(%ebp),%eax
c000581c:	83 c0 08             	add    $0x8,%eax
c000581f:	89 04 24             	mov    %eax,(%esp)
c0005822:	e8 13 f7 ff ff       	call   c0004f3a <lst_empty>
c0005827:	85 c0                	test   %eax,%eax
c0005829:	75 1f                	jne    c000584a <conditional_notify+0x3f>
c000582b:	8b 45 08             	mov    0x8(%ebp),%eax
c000582e:	83 c0 08             	add    $0x8,%eax
c0005831:	89 04 24             	mov    %eax,(%esp)
c0005834:	e8 44 f4 ff ff       	call   c0004c7d <lst_pop>
c0005839:	83 e8 38             	sub    $0x38,%eax
c000583c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000583f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005842:	89 04 24             	mov    %eax,(%esp)
c0005845:	e8 5a fa ff ff       	call   c00052a4 <thread_unblock>
c000584a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000584d:	89 04 24             	mov    %eax,(%esp)
c0005850:	e8 f5 dc ff ff       	call   c000354a <set_int_status>
c0005855:	c9                   	leave  
c0005856:	c3                   	ret    

c0005857 <init_cq>:
c0005857:	55                   	push   %ebp
c0005858:	89 e5                	mov    %esp,%ebp
c000585a:	83 ec 18             	sub    $0x18,%esp
c000585d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005860:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005867:	00 
c0005868:	c7 44 24 04 a0 00 00 	movl   $0xa0,0x4(%esp)
c000586f:	00 
c0005870:	89 04 24             	mov    %eax,(%esp)
c0005873:	e8 05 de ff ff       	call   c000367d <memset_8>
c0005878:	8b 45 0c             	mov    0xc(%ebp),%eax
c000587b:	c6 80 a0 00 00 00 00 	movb   $0x0,0xa0(%eax)
c0005882:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005885:	c6 80 a1 00 00 00 00 	movb   $0x0,0xa1(%eax)
c000588c:	8b 45 08             	mov    0x8(%ebp),%eax
c000588f:	c9                   	leave  
c0005890:	c2 04 00             	ret    $0x4

c0005893 <cq_push>:
c0005893:	55                   	push   %ebp
c0005894:	89 e5                	mov    %esp,%ebp
c0005896:	83 ec 04             	sub    $0x4,%esp
c0005899:	8b 45 0c             	mov    0xc(%ebp),%eax
c000589c:	88 45 fc             	mov    %al,-0x4(%ebp)
c000589f:	8b 45 08             	mov    0x8(%ebp),%eax
c00058a2:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c00058a9:	0f b6 c0             	movzbl %al,%eax
c00058ac:	8b 55 08             	mov    0x8(%ebp),%edx
c00058af:	0f b6 4d fc          	movzbl -0x4(%ebp),%ecx
c00058b3:	88 0c 02             	mov    %cl,(%edx,%eax,1)
c00058b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00058b9:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c00058c0:	0f b6 c0             	movzbl %al,%eax
c00058c3:	8d 48 01             	lea    0x1(%eax),%ecx
c00058c6:	ba 67 66 66 66       	mov    $0x66666667,%edx
c00058cb:	89 c8                	mov    %ecx,%eax
c00058cd:	f7 ea                	imul   %edx
c00058cf:	c1 fa 06             	sar    $0x6,%edx
c00058d2:	89 c8                	mov    %ecx,%eax
c00058d4:	c1 f8 1f             	sar    $0x1f,%eax
c00058d7:	29 c2                	sub    %eax,%edx
c00058d9:	89 d0                	mov    %edx,%eax
c00058db:	c1 e0 02             	shl    $0x2,%eax
c00058de:	01 d0                	add    %edx,%eax
c00058e0:	c1 e0 05             	shl    $0x5,%eax
c00058e3:	29 c1                	sub    %eax,%ecx
c00058e5:	89 ca                	mov    %ecx,%edx
c00058e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00058ea:	88 90 a1 00 00 00    	mov    %dl,0xa1(%eax)
c00058f0:	c9                   	leave  
c00058f1:	c3                   	ret    

c00058f2 <cq_pop>:
c00058f2:	55                   	push   %ebp
c00058f3:	89 e5                	mov    %esp,%ebp
c00058f5:	83 ec 10             	sub    $0x10,%esp
c00058f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00058fb:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005902:	0f b6 c0             	movzbl %al,%eax
c0005905:	8b 55 08             	mov    0x8(%ebp),%edx
c0005908:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c000590c:	88 45 ff             	mov    %al,-0x1(%ebp)
c000590f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005912:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005919:	0f b6 c0             	movzbl %al,%eax
c000591c:	8d 48 01             	lea    0x1(%eax),%ecx
c000591f:	ba 67 66 66 66       	mov    $0x66666667,%edx
c0005924:	89 c8                	mov    %ecx,%eax
c0005926:	f7 ea                	imul   %edx
c0005928:	c1 fa 06             	sar    $0x6,%edx
c000592b:	89 c8                	mov    %ecx,%eax
c000592d:	c1 f8 1f             	sar    $0x1f,%eax
c0005930:	29 c2                	sub    %eax,%edx
c0005932:	89 d0                	mov    %edx,%eax
c0005934:	c1 e0 02             	shl    $0x2,%eax
c0005937:	01 d0                	add    %edx,%eax
c0005939:	c1 e0 05             	shl    $0x5,%eax
c000593c:	29 c1                	sub    %eax,%ecx
c000593e:	89 ca                	mov    %ecx,%edx
c0005940:	8b 45 08             	mov    0x8(%ebp),%eax
c0005943:	88 90 a0 00 00 00    	mov    %dl,0xa0(%eax)
c0005949:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c000594d:	c9                   	leave  
c000594e:	c3                   	ret    

c000594f <cq_full>:
c000594f:	55                   	push   %ebp
c0005950:	89 e5                	mov    %esp,%ebp
c0005952:	8b 45 08             	mov    0x8(%ebp),%eax
c0005955:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c000595c:	0f b6 c0             	movzbl %al,%eax
c000595f:	8d 48 01             	lea    0x1(%eax),%ecx
c0005962:	ba 67 66 66 66       	mov    $0x66666667,%edx
c0005967:	89 c8                	mov    %ecx,%eax
c0005969:	f7 ea                	imul   %edx
c000596b:	c1 fa 06             	sar    $0x6,%edx
c000596e:	89 c8                	mov    %ecx,%eax
c0005970:	c1 f8 1f             	sar    $0x1f,%eax
c0005973:	29 c2                	sub    %eax,%edx
c0005975:	89 d0                	mov    %edx,%eax
c0005977:	c1 e0 02             	shl    $0x2,%eax
c000597a:	01 d0                	add    %edx,%eax
c000597c:	c1 e0 05             	shl    $0x5,%eax
c000597f:	29 c1                	sub    %eax,%ecx
c0005981:	89 ca                	mov    %ecx,%edx
c0005983:	8b 45 08             	mov    0x8(%ebp),%eax
c0005986:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c000598d:	0f b6 c0             	movzbl %al,%eax
c0005990:	39 c2                	cmp    %eax,%edx
c0005992:	0f 94 c0             	sete   %al
c0005995:	0f b6 c0             	movzbl %al,%eax
c0005998:	5d                   	pop    %ebp
c0005999:	c3                   	ret    

c000599a <cq_empty>:
c000599a:	55                   	push   %ebp
c000599b:	89 e5                	mov    %esp,%ebp
c000599d:	8b 45 08             	mov    0x8(%ebp),%eax
c00059a0:	0f b6 90 a1 00 00 00 	movzbl 0xa1(%eax),%edx
c00059a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00059aa:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c00059b1:	38 c2                	cmp    %al,%dl
c00059b3:	0f 94 c0             	sete   %al
c00059b6:	0f b6 c0             	movzbl %al,%eax
c00059b9:	5d                   	pop    %ebp
c00059ba:	c3                   	ret    

c00059bb <exchange_esp0>:
c00059bb:	55                   	push   %ebp
c00059bc:	89 e5                	mov    %esp,%ebp
c00059be:	8b 45 08             	mov    0x8(%ebp),%eax
c00059c1:	05 00 10 00 00       	add    $0x1000,%eax
c00059c6:	a3 44 b1 00 c0       	mov    %eax,0xc000b144
c00059cb:	5d                   	pop    %ebp
c00059cc:	c3                   	ret    

c00059cd <init_proc_data>:
c00059cd:	55                   	push   %ebp
c00059ce:	89 e5                	mov    %esp,%ebp
c00059d0:	53                   	push   %ebx
c00059d1:	83 ec 34             	sub    $0x34,%esp
c00059d4:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
c00059db:	e8 59 01 00 00       	call   c0005b39 <lgdt>
c00059e0:	c7 45 f4 03 09 00 c0 	movl   $0xc0000903,-0xc(%ebp)
c00059e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00059ea:	8d 58 20             	lea    0x20(%eax),%ebx
c00059ed:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00059f0:	c7 44 24 10 f2 00 00 	movl   $0xf2,0x10(%esp)
c00059f7:	00 
c00059f8:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
c00059ff:	00 
c0005a00:	c7 44 24 08 ff ff 0f 	movl   $0xfffff,0x8(%esp)
c0005a07:	00 
c0005a08:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0005a0f:	00 
c0005a10:	89 04 24             	mov    %eax,(%esp)
c0005a13:	e8 c2 00 00 00       	call   c0005ada <make_seg_des>
c0005a18:	83 ec 04             	sub    $0x4,%esp
c0005a1b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005a1e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005a21:	89 03                	mov    %eax,(%ebx)
c0005a23:	89 53 04             	mov    %edx,0x4(%ebx)
c0005a26:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005a29:	8d 58 28             	lea    0x28(%eax),%ebx
c0005a2c:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005a2f:	c7 44 24 10 f8 00 00 	movl   $0xf8,0x10(%esp)
c0005a36:	00 
c0005a37:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
c0005a3e:	00 
c0005a3f:	c7 44 24 08 ff ff 0f 	movl   $0xfffff,0x8(%esp)
c0005a46:	00 
c0005a47:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0005a4e:	00 
c0005a4f:	89 04 24             	mov    %eax,(%esp)
c0005a52:	e8 83 00 00 00       	call   c0005ada <make_seg_des>
c0005a57:	83 ec 04             	sub    $0x4,%esp
c0005a5a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005a5d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005a60:	89 03                	mov    %eax,(%ebx)
c0005a62:	89 53 04             	mov    %edx,0x4(%ebx)
c0005a65:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005a68:	8d 58 30             	lea    0x30(%eax),%ebx
c0005a6b:	ba 40 b1 00 c0       	mov    $0xc000b140,%edx
c0005a70:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005a73:	c7 44 24 10 89 00 00 	movl   $0x89,0x10(%esp)
c0005a7a:	00 
c0005a7b:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0005a82:	00 
c0005a83:	c7 44 24 08 63 00 00 	movl   $0x63,0x8(%esp)
c0005a8a:	00 
c0005a8b:	89 54 24 04          	mov    %edx,0x4(%esp)
c0005a8f:	89 04 24             	mov    %eax,(%esp)
c0005a92:	e8 43 00 00 00       	call   c0005ada <make_seg_des>
c0005a97:	83 ec 04             	sub    $0x4,%esp
c0005a9a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005a9d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005aa0:	89 03                	mov    %eax,(%ebx)
c0005aa2:	89 53 04             	mov    %edx,0x4(%ebx)
c0005aa5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005aac:	00 
c0005aad:	c7 44 24 04 64 00 00 	movl   $0x64,0x4(%esp)
c0005ab4:	00 
c0005ab5:	c7 04 24 40 b1 00 c0 	movl   $0xc000b140,(%esp)
c0005abc:	e8 bc db ff ff       	call   c000367d <memset_8>
c0005ac1:	c7 05 48 b1 00 c0 10 	movl   $0x10,0xc000b148
c0005ac8:	00 00 00 
c0005acb:	66 c7 45 f2 30 00    	movw   $0x30,-0xe(%ebp)
c0005ad1:	0f 00 5d f2          	ltr    -0xe(%ebp)
c0005ad5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0005ad8:	c9                   	leave  
c0005ad9:	c3                   	ret    

c0005ada <make_seg_des>:
c0005ada:	55                   	push   %ebp
c0005adb:	89 e5                	mov    %esp,%ebp
c0005add:	83 ec 18             	sub    $0x18,%esp
c0005ae0:	8b 55 14             	mov    0x14(%ebp),%edx
c0005ae3:	8b 45 18             	mov    0x18(%ebp),%eax
c0005ae6:	88 55 ec             	mov    %dl,-0x14(%ebp)
c0005ae9:	88 45 e8             	mov    %al,-0x18(%ebp)
c0005aec:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005aef:	c1 e8 18             	shr    $0x18,%eax
c0005af2:	88 45 ff             	mov    %al,-0x1(%ebp)
c0005af5:	8b 45 10             	mov    0x10(%ebp),%eax
c0005af8:	c1 e8 10             	shr    $0x10,%eax
c0005afb:	89 c2                	mov    %eax,%edx
c0005afd:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c0005b01:	01 d0                	add    %edx,%eax
c0005b03:	88 45 fe             	mov    %al,-0x2(%ebp)
c0005b06:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
c0005b0a:	88 45 fd             	mov    %al,-0x3(%ebp)
c0005b0d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005b10:	c1 e8 10             	shr    $0x10,%eax
c0005b13:	88 45 fc             	mov    %al,-0x4(%ebp)
c0005b16:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005b19:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
c0005b1d:	8b 45 10             	mov    0x10(%ebp),%eax
c0005b20:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
c0005b24:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0005b27:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0005b2a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0005b2d:	89 01                	mov    %eax,(%ecx)
c0005b2f:	89 51 04             	mov    %edx,0x4(%ecx)
c0005b32:	8b 45 08             	mov    0x8(%ebp),%eax
c0005b35:	c9                   	leave  
c0005b36:	c2 04 00             	ret    $0x4

c0005b39 <lgdt>:
c0005b39:	55                   	push   %ebp
c0005b3a:	89 e5                	mov    %esp,%ebp
c0005b3c:	53                   	push   %ebx
c0005b3d:	83 ec 18             	sub    $0x18,%esp
c0005b40:	8b 45 08             	mov    0x8(%ebp),%eax
c0005b43:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
c0005b47:	c7 45 f0 03 09 00 c0 	movl   $0xc0000903,-0x10(%ebp)
c0005b4e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0005b55:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005b58:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005b5b:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c0005b5f:	c1 e0 10             	shl    $0x10,%eax
c0005b62:	89 c1                	mov    %eax,%ecx
c0005b64:	89 d3                	mov    %edx,%ebx
c0005b66:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
c0005b6a:	c1 e0 03             	shl    $0x3,%eax
c0005b6d:	99                   	cltd   
c0005b6e:	01 c8                	add    %ecx,%eax
c0005b70:	11 da                	adc    %ebx,%edx
c0005b72:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005b75:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0005b78:	0f 01 55 f0          	lgdtl  -0x10(%ebp)
c0005b7c:	83 c4 18             	add    $0x18,%esp
c0005b7f:	5b                   	pop    %ebx
c0005b80:	5d                   	pop    %ebp
c0005b81:	c3                   	ret    

c0005b82 <proc_start>:
c0005b82:	55                   	push   %ebp
c0005b83:	89 e5                	mov    %esp,%ebp
c0005b85:	83 ec 28             	sub    $0x28,%esp
c0005b88:	8b 45 14             	mov    0x14(%ebp),%eax
c0005b8b:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0005b8f:	8b 45 10             	mov    0x10(%ebp),%eax
c0005b92:	89 44 24 08          	mov    %eax,0x8(%esp)
c0005b96:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005b99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005b9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ba0:	89 04 24             	mov    %eax,(%esp)
c0005ba3:	e8 3c ec ff ff       	call   c00047e4 <create_thread>
c0005ba8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005bab:	8b 45 14             	mov    0x14(%ebp),%eax
c0005bae:	89 44 24 08          	mov    %eax,0x8(%esp)
c0005bb2:	8b 45 10             	mov    0x10(%ebp),%eax
c0005bb5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005bb9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005bbc:	89 04 24             	mov    %eax,(%esp)
c0005bbf:	e8 0d 00 00 00       	call   c0005bd1 <init_proc>
c0005bc4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005bc7:	89 04 24             	mov    %eax,(%esp)
c0005bca:	e8 39 01 00 00       	call   c0005d08 <create_proc_page>
c0005bcf:	c9                   	leave  
c0005bd0:	c3                   	ret    

c0005bd1 <init_proc>:
c0005bd1:	55                   	push   %ebp
c0005bd2:	89 e5                	mov    %esp,%ebp
c0005bd4:	83 ec 28             	sub    $0x28,%esp
c0005bd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0005bda:	05 98 0f 00 00       	add    $0xf98,%eax
c0005bdf:	89 c2                	mov    %eax,%edx
c0005be1:	8b 45 08             	mov    0x8(%ebp),%eax
c0005be4:	89 10                	mov    %edx,(%eax)
c0005be6:	8b 45 08             	mov    0x8(%ebp),%eax
c0005be9:	8b 00                	mov    (%eax),%eax
c0005beb:	83 c0 04             	add    $0x4,%eax
c0005bee:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005bf5:	00 
c0005bf6:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c0005bfd:	00 
c0005bfe:	89 04 24             	mov    %eax,(%esp)
c0005c01:	e8 d9 da ff ff       	call   c00036df <memset_32>
c0005c06:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c09:	8b 00                	mov    (%eax),%eax
c0005c0b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005c0e:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005c15:	00 
c0005c16:	c7 44 24 04 68 00 00 	movl   $0x68,0x4(%esp)
c0005c1d:	00 
c0005c1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c21:	89 04 24             	mov    %eax,(%esp)
c0005c24:	e8 54 da ff ff       	call   c000367d <memset_8>
c0005c29:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c2c:	c7 40 24 23 00 00 00 	movl   $0x23,0x24(%eax)
c0005c33:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c36:	8b 50 24             	mov    0x24(%eax),%edx
c0005c39:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c3c:	89 50 20             	mov    %edx,0x20(%eax)
c0005c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c42:	8b 50 20             	mov    0x20(%eax),%edx
c0005c45:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c48:	89 50 28             	mov    %edx,0x28(%eax)
c0005c4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c4e:	c7 40 10 90 5d 00 c0 	movl   $0xc0005d90,0x10(%eax)
c0005c55:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c58:	8b 55 10             	mov    0x10(%ebp),%edx
c0005c5b:	89 50 64             	mov    %edx,0x64(%eax)
c0005c5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c61:	c7 40 54 2b 00 00 00 	movl   $0x2b,0x54(%eax)
c0005c68:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005c6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c6e:	89 50 50             	mov    %edx,0x50(%eax)
c0005c71:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c74:	c7 40 58 02 02 00 00 	movl   $0x202,0x58(%eax)
c0005c7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c7e:	c7 40 60 23 00 00 00 	movl   $0x23,0x60(%eax)
c0005c85:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c88:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
c0005c8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c91:	89 50 5c             	mov    %edx,0x5c(%eax)
c0005c94:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c97:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0005c9e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ca1:	c7 40 10 00 00 00 c0 	movl   $0xc0000000,0x10(%eax)
c0005ca8:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
c0005caf:	00 
c0005cb0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005cb7:	e8 83 df ff ff       	call   c0003c3f <malloc_page>
c0005cbc:	8b 55 08             	mov    0x8(%ebp),%edx
c0005cbf:	89 42 08             	mov    %eax,0x8(%edx)
c0005cc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0005cc5:	c7 40 04 00 00 00 c0 	movl   $0xc0000000,0x4(%eax)
c0005ccc:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ccf:	83 c0 04             	add    $0x4,%eax
c0005cd2:	89 04 24             	mov    %eax,(%esp)
c0005cd5:	e8 da db ff ff       	call   c00038b4 <init_bit_map>
c0005cda:	8b 45 08             	mov    0x8(%ebp),%eax
c0005cdd:	83 c0 38             	add    $0x38,%eax
c0005ce0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005ce4:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0005ceb:	e8 74 ee ff ff       	call   c0004b64 <lst_push>
c0005cf0:	8b 45 08             	mov    0x8(%ebp),%eax
c0005cf3:	83 c0 40             	add    $0x40,%eax
c0005cf6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005cfa:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c0005d01:	e8 5e ee ff ff       	call   c0004b64 <lst_push>
c0005d06:	c9                   	leave  
c0005d07:	c3                   	ret    

c0005d08 <create_proc_page>:
c0005d08:	55                   	push   %ebp
c0005d09:	89 e5                	mov    %esp,%ebp
c0005d0b:	83 ec 28             	sub    $0x28,%esp
c0005d0e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0005d15:	00 
c0005d16:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005d1d:	e8 1d df ff ff       	call   c0003c3f <malloc_page>
c0005d22:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005d25:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d28:	89 04 24             	mov    %eax,(%esp)
c0005d2b:	e8 15 e8 ff ff       	call   c0004545 <get_paddr>
c0005d30:	89 c2                	mov    %eax,%edx
c0005d32:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d35:	89 50 48             	mov    %edx,0x48(%eax)
c0005d38:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0005d3f:	00 
c0005d40:	c7 44 24 04 00 f0 ff 	movl   $0xfffff000,0x4(%esp)
c0005d47:	ff 
c0005d48:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d4b:	89 04 24             	mov    %eax,(%esp)
c0005d4e:	e8 e7 d9 ff ff       	call   c000373a <memcopy>
c0005d53:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d56:	8b 40 48             	mov    0x48(%eax),%eax
c0005d59:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0005d5e:	83 c0 07             	add    $0x7,%eax
c0005d61:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005d64:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d67:	05 fc 0f 00 00       	add    $0xffc,%eax
c0005d6c:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0005d6f:	89 10                	mov    %edx,(%eax)
c0005d71:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%ebp)
c0005d78:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0005d7b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005d7f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005d86:	e8 b4 de ff ff       	call   c0003c3f <malloc_page>
c0005d8b:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0005d8e:	eb fe                	jmp    c0005d8e <create_proc_page+0x86>

c0005d90 <process_fun>:
c0005d90:	55                   	push   %ebp
c0005d91:	89 e5                	mov    %esp,%ebp
c0005d93:	83 ec 28             	sub    $0x28,%esp
c0005d96:	e8 87 d7 ff ff       	call   c0003522 <int_enable>
c0005d9b:	e8 38 e8 ff ff       	call   c00045d8 <get_running>
c0005da0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005da3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005da6:	8b 00                	mov    (%eax),%eax
c0005da8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005dab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005dae:	8b 40 48             	mov    0x48(%eax),%eax
c0005db1:	0f 22 d8             	mov    %eax,%cr3
c0005db4:	c7 44 24 04 ff ff 00 	movl   $0x7000ffff,0x4(%esp)
c0005dbb:	70 
c0005dbc:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0005dc3:	e8 44 e0 ff ff       	call   c0003e0c <create_page>
c0005dc8:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005dcb:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0005dcf:	75 24                	jne    c0005df5 <process_fun+0x65>
c0005dd1:	c7 44 24 0c f4 74 00 	movl   $0xc00074f4,0xc(%esp)
c0005dd8:	c0 
c0005dd9:	c7 44 24 08 0f 75 00 	movl   $0xc000750f,0x8(%esp)
c0005de0:	c0 
c0005de1:	c7 44 24 04 76 00 00 	movl   $0x76,0x4(%esp)
c0005de8:	00 
c0005de9:	c7 04 24 f9 74 00 c0 	movl   $0xc00074f9,(%esp)
c0005df0:	e8 7b d7 ff ff       	call   c0003570 <panic_spin>
c0005df5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005df8:	c7 40 5c f7 ff 00 70 	movl   $0x7000fff7,0x5c(%eax)
c0005dff:	b8 fb ff 00 70       	mov    $0x7000fffb,%eax
c0005e04:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0005e07:	8b 52 64             	mov    0x64(%edx),%edx
c0005e0a:	89 10                	mov    %edx,(%eax)
c0005e0c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005e0f:	83 c0 18             	add    $0x18,%eax
c0005e12:	89 c4                	mov    %eax,%esp
c0005e14:	e9 18 bc ff ff       	jmp    c0001a31 <exit_int>
c0005e19:	c9                   	leave  
c0005e1a:	c3                   	ret    

c0005e1b <syscall_table_init>:
c0005e1b:	55                   	push   %ebp
c0005e1c:	89 e5                	mov    %esp,%ebp
c0005e1e:	c7 05 c0 b1 00 c0 48 	movl   $0xc0005e48,0xc000b1c0
c0005e25:	5e 00 c0 
c0005e28:	c7 05 c4 b1 00 c0 58 	movl   $0xc0005e58,0xc000b1c4
c0005e2f:	5e 00 c0 
c0005e32:	c7 05 c8 b1 00 c0 cd 	movl   $0xc00040cd,0xc000b1c8
c0005e39:	40 00 c0 
c0005e3c:	c7 05 cc b1 00 c0 c4 	movl   $0xc00042c4,0xc000b1cc
c0005e43:	42 00 c0 
c0005e46:	5d                   	pop    %ebp
c0005e47:	c3                   	ret    

c0005e48 <sys_getPid>:
c0005e48:	55                   	push   %ebp
c0005e49:	89 e5                	mov    %esp,%ebp
c0005e4b:	83 ec 08             	sub    $0x8,%esp
c0005e4e:	e8 85 e7 ff ff       	call   c00045d8 <get_running>
c0005e53:	8b 40 24             	mov    0x24(%eax),%eax
c0005e56:	c9                   	leave  
c0005e57:	c3                   	ret    

c0005e58 <sys_write>:
c0005e58:	55                   	push   %ebp
c0005e59:	89 e5                	mov    %esp,%ebp
c0005e5b:	83 ec 18             	sub    $0x18,%esp
c0005e5e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005e61:	89 04 24             	mov    %eax,(%esp)
c0005e64:	e8 d2 f4 ff ff       	call   c000533b <console_put_str>
c0005e69:	8b 45 08             	mov    0x8(%ebp),%eax
c0005e6c:	89 04 24             	mov    %eax,(%esp)
c0005e6f:	e8 86 d9 ff ff       	call   c00037fa <strlen>
c0005e74:	c9                   	leave  
c0005e75:	c3                   	ret    

c0005e76 <printf>:
c0005e76:	55                   	push   %ebp
c0005e77:	89 e5                	mov    %esp,%ebp
c0005e79:	83 ec 28             	sub    $0x28,%esp
c0005e7c:	8d 45 08             	lea    0x8(%ebp),%eax
c0005e7f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005e82:	8b 45 08             	mov    0x8(%ebp),%eax
c0005e85:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005e88:	89 54 24 08          	mov    %edx,0x8(%esp)
c0005e8c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005e90:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0005e97:	e8 11 00 00 00       	call   c0005ead <vsprintf>
c0005e9c:	68 00 a3 00 c0       	push   $0xc000a300
c0005ea1:	6a 01                	push   $0x1
c0005ea3:	cd 80                	int    $0x80
c0005ea5:	83 c4 08             	add    $0x8,%esp
c0005ea8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005eab:	c9                   	leave  
c0005eac:	c3                   	ret    

c0005ead <vsprintf>:
c0005ead:	55                   	push   %ebp
c0005eae:	89 e5                	mov    %esp,%ebp
c0005eb0:	83 ec 28             	sub    $0x28,%esp
c0005eb3:	e9 e4 00 00 00       	jmp    c0005f9c <vsprintf+0xef>
c0005eb8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005ebb:	0f b6 00             	movzbl (%eax),%eax
c0005ebe:	3c 25                	cmp    $0x25,%al
c0005ec0:	0f 85 be 00 00 00    	jne    c0005f84 <vsprintf+0xd7>
c0005ec6:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0005eca:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005ecd:	0f b6 00             	movzbl (%eax),%eax
c0005ed0:	0f be c0             	movsbl %al,%eax
c0005ed3:	83 e8 63             	sub    $0x63,%eax
c0005ed6:	83 f8 15             	cmp    $0x15,%eax
c0005ed9:	0f 87 9e 00 00 00    	ja     c0005f7d <vsprintf+0xd0>
c0005edf:	8b 04 85 1c 75 00 c0 	mov    -0x3fff8ae4(,%eax,4),%eax
c0005ee6:	ff e0                	jmp    *%eax
c0005ee8:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005eec:	8b 45 10             	mov    0x10(%ebp),%eax
c0005eef:	8b 00                	mov    (%eax),%eax
c0005ef1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005ef5:	8d 45 08             	lea    0x8(%ebp),%eax
c0005ef8:	89 04 24             	mov    %eax,(%esp)
c0005efb:	e8 b2 00 00 00       	call   c0005fb2 <hex_to_ascii>
c0005f00:	eb 7c                	jmp    c0005f7e <vsprintf+0xd1>
c0005f02:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005f06:	8b 45 10             	mov    0x10(%ebp),%eax
c0005f09:	8b 00                	mov    (%eax),%eax
c0005f0b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005f0f:	8d 45 08             	lea    0x8(%ebp),%eax
c0005f12:	89 04 24             	mov    %eax,(%esp)
c0005f15:	e8 70 01 00 00       	call   c000608a <dec_to_ascii>
c0005f1a:	eb 62                	jmp    c0005f7e <vsprintf+0xd1>
c0005f1c:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005f20:	8b 45 10             	mov    0x10(%ebp),%eax
c0005f23:	8b 00                	mov    (%eax),%eax
c0005f25:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005f29:	8d 45 08             	lea    0x8(%ebp),%eax
c0005f2c:	89 04 24             	mov    %eax,(%esp)
c0005f2f:	e8 f6 01 00 00       	call   c000612a <unsign_to_ascii>
c0005f34:	eb 48                	jmp    c0005f7e <vsprintf+0xd1>
c0005f36:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005f3a:	8b 45 10             	mov    0x10(%ebp),%eax
c0005f3d:	8b 00                	mov    (%eax),%eax
c0005f3f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005f42:	eb 17                	jmp    c0005f5b <vsprintf+0xae>
c0005f44:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f47:	8d 50 01             	lea    0x1(%eax),%edx
c0005f4a:	89 55 08             	mov    %edx,0x8(%ebp)
c0005f4d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005f50:	8d 4a 01             	lea    0x1(%edx),%ecx
c0005f53:	89 4d f4             	mov    %ecx,-0xc(%ebp)
c0005f56:	0f b6 12             	movzbl (%edx),%edx
c0005f59:	88 10                	mov    %dl,(%eax)
c0005f5b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005f5e:	0f b6 00             	movzbl (%eax),%eax
c0005f61:	84 c0                	test   %al,%al
c0005f63:	75 df                	jne    c0005f44 <vsprintf+0x97>
c0005f65:	eb 17                	jmp    c0005f7e <vsprintf+0xd1>
c0005f67:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f6a:	8d 50 01             	lea    0x1(%eax),%edx
c0005f6d:	89 55 08             	mov    %edx,0x8(%ebp)
c0005f70:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005f74:	8b 55 10             	mov    0x10(%ebp),%edx
c0005f77:	8b 12                	mov    (%edx),%edx
c0005f79:	88 10                	mov    %dl,(%eax)
c0005f7b:	eb 01                	jmp    c0005f7e <vsprintf+0xd1>
c0005f7d:	90                   	nop
c0005f7e:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0005f82:	eb 18                	jmp    c0005f9c <vsprintf+0xef>
c0005f84:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f87:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005f8a:	0f b6 12             	movzbl (%edx),%edx
c0005f8d:	88 10                	mov    %dl,(%eax)
c0005f8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f92:	83 c0 01             	add    $0x1,%eax
c0005f95:	89 45 08             	mov    %eax,0x8(%ebp)
c0005f98:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0005f9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005f9f:	0f b6 00             	movzbl (%eax),%eax
c0005fa2:	84 c0                	test   %al,%al
c0005fa4:	0f 85 0e ff ff ff    	jne    c0005eb8 <vsprintf+0xb>
c0005faa:	8b 45 08             	mov    0x8(%ebp),%eax
c0005fad:	c6 00 00             	movb   $0x0,(%eax)
c0005fb0:	c9                   	leave  
c0005fb1:	c3                   	ret    

c0005fb2 <hex_to_ascii>:
c0005fb2:	55                   	push   %ebp
c0005fb3:	89 e5                	mov    %esp,%ebp
c0005fb5:	53                   	push   %ebx
c0005fb6:	83 ec 10             	sub    $0x10,%esp
c0005fb9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005fbc:	85 c0                	test   %eax,%eax
c0005fbe:	79 17                	jns    c0005fd7 <hex_to_ascii+0x25>
c0005fc0:	8b 45 08             	mov    0x8(%ebp),%eax
c0005fc3:	8b 00                	mov    (%eax),%eax
c0005fc5:	8d 48 01             	lea    0x1(%eax),%ecx
c0005fc8:	8b 55 08             	mov    0x8(%ebp),%edx
c0005fcb:	89 0a                	mov    %ecx,(%edx)
c0005fcd:	c6 00 2d             	movb   $0x2d,(%eax)
c0005fd0:	81 65 0c ff ff ff 7f 	andl   $0x7fffffff,0xc(%ebp)
c0005fd7:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
c0005fde:	eb 04                	jmp    c0005fe4 <hex_to_ascii+0x32>
c0005fe0:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0005fe4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005fe7:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c0005fea:	72 f4                	jb     c0005fe0 <hex_to_ascii+0x2e>
c0005fec:	eb 5e                	jmp    c000604c <hex_to_ascii+0x9a>
c0005fee:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0005ff1:	8d 58 01             	lea    0x1(%eax),%ebx
c0005ff4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005ff7:	ba 00 00 00 00       	mov    $0x0,%edx
c0005ffc:	f7 f3                	div    %ebx
c0005ffe:	88 45 f7             	mov    %al,-0x9(%ebp)
c0006001:	80 7d f7 09          	cmpb   $0x9,-0x9(%ebp)
c0006005:	7f 18                	jg     c000601f <hex_to_ascii+0x6d>
c0006007:	8b 45 08             	mov    0x8(%ebp),%eax
c000600a:	8b 00                	mov    (%eax),%eax
c000600c:	8d 48 01             	lea    0x1(%eax),%ecx
c000600f:	8b 55 08             	mov    0x8(%ebp),%edx
c0006012:	89 0a                	mov    %ecx,(%edx)
c0006014:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006018:	83 c2 30             	add    $0x30,%edx
c000601b:	88 10                	mov    %dl,(%eax)
c000601d:	eb 16                	jmp    c0006035 <hex_to_ascii+0x83>
c000601f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006022:	8b 00                	mov    (%eax),%eax
c0006024:	8d 48 01             	lea    0x1(%eax),%ecx
c0006027:	8b 55 08             	mov    0x8(%ebp),%edx
c000602a:	89 0a                	mov    %ecx,(%edx)
c000602c:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006030:	83 c2 57             	add    $0x57,%edx
c0006033:	88 10                	mov    %dl,(%eax)
c0006035:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0006038:	8d 48 01             	lea    0x1(%eax),%ecx
c000603b:	8b 45 0c             	mov    0xc(%ebp),%eax
c000603e:	ba 00 00 00 00       	mov    $0x0,%edx
c0006043:	f7 f1                	div    %ecx
c0006045:	89 55 0c             	mov    %edx,0xc(%ebp)
c0006048:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c000604c:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0006050:	75 9c                	jne    c0005fee <hex_to_ascii+0x3c>
c0006052:	83 7d 0c 09          	cmpl   $0x9,0xc(%ebp)
c0006056:	77 17                	ja     c000606f <hex_to_ascii+0xbd>
c0006058:	8b 45 08             	mov    0x8(%ebp),%eax
c000605b:	8b 00                	mov    (%eax),%eax
c000605d:	8d 48 01             	lea    0x1(%eax),%ecx
c0006060:	8b 55 08             	mov    0x8(%ebp),%edx
c0006063:	89 0a                	mov    %ecx,(%edx)
c0006065:	8b 55 0c             	mov    0xc(%ebp),%edx
c0006068:	83 c2 30             	add    $0x30,%edx
c000606b:	88 10                	mov    %dl,(%eax)
c000606d:	eb 15                	jmp    c0006084 <hex_to_ascii+0xd2>
c000606f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006072:	8b 00                	mov    (%eax),%eax
c0006074:	8d 48 01             	lea    0x1(%eax),%ecx
c0006077:	8b 55 08             	mov    0x8(%ebp),%edx
c000607a:	89 0a                	mov    %ecx,(%edx)
c000607c:	8b 55 0c             	mov    0xc(%ebp),%edx
c000607f:	83 c2 57             	add    $0x57,%edx
c0006082:	88 10                	mov    %dl,(%eax)
c0006084:	83 c4 10             	add    $0x10,%esp
c0006087:	5b                   	pop    %ebx
c0006088:	5d                   	pop    %ebp
c0006089:	c3                   	ret    

c000608a <dec_to_ascii>:
c000608a:	55                   	push   %ebp
c000608b:	89 e5                	mov    %esp,%ebp
c000608d:	83 ec 10             	sub    $0x10,%esp
c0006090:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006093:	85 c0                	test   %eax,%eax
c0006095:	79 13                	jns    c00060aa <dec_to_ascii+0x20>
c0006097:	8b 45 08             	mov    0x8(%ebp),%eax
c000609a:	8b 00                	mov    (%eax),%eax
c000609c:	8d 48 01             	lea    0x1(%eax),%ecx
c000609f:	8b 55 08             	mov    0x8(%ebp),%edx
c00060a2:	89 0a                	mov    %ecx,(%edx)
c00060a4:	c6 00 2d             	movb   $0x2d,(%eax)
c00060a7:	f7 5d 0c             	negl   0xc(%ebp)
c00060aa:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c00060b1:	eb 0f                	jmp    c00060c2 <dec_to_ascii+0x38>
c00060b3:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00060b6:	89 d0                	mov    %edx,%eax
c00060b8:	c1 e0 02             	shl    $0x2,%eax
c00060bb:	01 d0                	add    %edx,%eax
c00060bd:	01 c0                	add    %eax,%eax
c00060bf:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00060c2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00060c5:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c00060c8:	73 e9                	jae    c00060b3 <dec_to_ascii+0x29>
c00060ca:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00060cd:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c00060d2:	f7 e2                	mul    %edx
c00060d4:	89 d0                	mov    %edx,%eax
c00060d6:	c1 e8 03             	shr    $0x3,%eax
c00060d9:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00060dc:	eb 44                	jmp    c0006122 <dec_to_ascii+0x98>
c00060de:	8b 45 0c             	mov    0xc(%ebp),%eax
c00060e1:	ba 00 00 00 00       	mov    $0x0,%edx
c00060e6:	f7 75 fc             	divl   -0x4(%ebp)
c00060e9:	88 45 fb             	mov    %al,-0x5(%ebp)
c00060ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00060ef:	8b 00                	mov    (%eax),%eax
c00060f1:	8d 48 01             	lea    0x1(%eax),%ecx
c00060f4:	8b 55 08             	mov    0x8(%ebp),%edx
c00060f7:	89 0a                	mov    %ecx,(%edx)
c00060f9:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00060fd:	83 c2 30             	add    $0x30,%edx
c0006100:	88 10                	mov    %dl,(%eax)
c0006102:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006105:	ba 00 00 00 00       	mov    $0x0,%edx
c000610a:	f7 75 fc             	divl   -0x4(%ebp)
c000610d:	89 55 0c             	mov    %edx,0xc(%ebp)
c0006110:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006113:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c0006118:	f7 e2                	mul    %edx
c000611a:	89 d0                	mov    %edx,%eax
c000611c:	c1 e8 03             	shr    $0x3,%eax
c000611f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0006122:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0006126:	75 b6                	jne    c00060de <dec_to_ascii+0x54>
c0006128:	c9                   	leave  
c0006129:	c3                   	ret    

c000612a <unsign_to_ascii>:
c000612a:	55                   	push   %ebp
c000612b:	89 e5                	mov    %esp,%ebp
c000612d:	53                   	push   %ebx
c000612e:	83 ec 10             	sub    $0x10,%esp
c0006131:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
c0006135:	75 24                	jne    c000615b <unsign_to_ascii+0x31>
c0006137:	8b 45 08             	mov    0x8(%ebp),%eax
c000613a:	8b 00                	mov    (%eax),%eax
c000613c:	c7 00 66 66 66 66    	movl   $0x66666666,(%eax)
c0006142:	c7 40 04 66 66 66 66 	movl   $0x66666666,0x4(%eax)
c0006149:	8b 45 08             	mov    0x8(%ebp),%eax
c000614c:	8b 00                	mov    (%eax),%eax
c000614e:	8d 50 08             	lea    0x8(%eax),%edx
c0006151:	8b 45 08             	mov    0x8(%ebp),%eax
c0006154:	89 10                	mov    %edx,(%eax)
c0006156:	e9 ae 00 00 00       	jmp    c0006209 <unsign_to_ascii+0xdf>
c000615b:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
c0006162:	eb 04                	jmp    c0006168 <unsign_to_ascii+0x3e>
c0006164:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0006168:	8b 45 0c             	mov    0xc(%ebp),%eax
c000616b:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c000616e:	72 f4                	jb     c0006164 <unsign_to_ascii+0x3a>
c0006170:	eb 5e                	jmp    c00061d0 <unsign_to_ascii+0xa6>
c0006172:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0006175:	8d 58 01             	lea    0x1(%eax),%ebx
c0006178:	8b 45 0c             	mov    0xc(%ebp),%eax
c000617b:	ba 00 00 00 00       	mov    $0x0,%edx
c0006180:	f7 f3                	div    %ebx
c0006182:	88 45 f7             	mov    %al,-0x9(%ebp)
c0006185:	80 7d f7 09          	cmpb   $0x9,-0x9(%ebp)
c0006189:	7f 18                	jg     c00061a3 <unsign_to_ascii+0x79>
c000618b:	8b 45 08             	mov    0x8(%ebp),%eax
c000618e:	8b 00                	mov    (%eax),%eax
c0006190:	8d 48 01             	lea    0x1(%eax),%ecx
c0006193:	8b 55 08             	mov    0x8(%ebp),%edx
c0006196:	89 0a                	mov    %ecx,(%edx)
c0006198:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c000619c:	83 c2 30             	add    $0x30,%edx
c000619f:	88 10                	mov    %dl,(%eax)
c00061a1:	eb 16                	jmp    c00061b9 <unsign_to_ascii+0x8f>
c00061a3:	8b 45 08             	mov    0x8(%ebp),%eax
c00061a6:	8b 00                	mov    (%eax),%eax
c00061a8:	8d 48 01             	lea    0x1(%eax),%ecx
c00061ab:	8b 55 08             	mov    0x8(%ebp),%edx
c00061ae:	89 0a                	mov    %ecx,(%edx)
c00061b0:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c00061b4:	83 c2 57             	add    $0x57,%edx
c00061b7:	88 10                	mov    %dl,(%eax)
c00061b9:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00061bc:	8d 48 01             	lea    0x1(%eax),%ecx
c00061bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00061c2:	ba 00 00 00 00       	mov    $0x0,%edx
c00061c7:	f7 f1                	div    %ecx
c00061c9:	89 55 0c             	mov    %edx,0xc(%ebp)
c00061cc:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c00061d0:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c00061d4:	75 9c                	jne    c0006172 <unsign_to_ascii+0x48>
c00061d6:	83 7d 0c 09          	cmpl   $0x9,0xc(%ebp)
c00061da:	77 17                	ja     c00061f3 <unsign_to_ascii+0xc9>
c00061dc:	8b 45 08             	mov    0x8(%ebp),%eax
c00061df:	8b 00                	mov    (%eax),%eax
c00061e1:	8d 48 01             	lea    0x1(%eax),%ecx
c00061e4:	8b 55 08             	mov    0x8(%ebp),%edx
c00061e7:	89 0a                	mov    %ecx,(%edx)
c00061e9:	8b 55 0c             	mov    0xc(%ebp),%edx
c00061ec:	83 c2 30             	add    $0x30,%edx
c00061ef:	88 10                	mov    %dl,(%eax)
c00061f1:	eb 16                	jmp    c0006209 <unsign_to_ascii+0xdf>
c00061f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00061f6:	8b 00                	mov    (%eax),%eax
c00061f8:	8d 48 01             	lea    0x1(%eax),%ecx
c00061fb:	8b 55 08             	mov    0x8(%ebp),%edx
c00061fe:	89 0a                	mov    %ecx,(%edx)
c0006200:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006204:	83 c2 57             	add    $0x57,%edx
c0006207:	88 10                	mov    %dl,(%eax)
c0006209:	83 c4 10             	add    $0x10,%esp
c000620c:	5b                   	pop    %ebx
c000620d:	5d                   	pop    %ebp
c000620e:	c3                   	ret    

c000620f <getpid>:
c000620f:	55                   	push   %ebp
c0006210:	89 e5                	mov    %esp,%ebp
c0006212:	83 ec 10             	sub    $0x10,%esp
c0006215:	6a 00                	push   $0x0
c0006217:	cd 80                	int    $0x80
c0006219:	83 c4 04             	add    $0x4,%esp
c000621c:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000621f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006222:	c9                   	leave  
c0006223:	c3                   	ret    

c0006224 <malloc>:
c0006224:	55                   	push   %ebp
c0006225:	89 e5                	mov    %esp,%ebp
c0006227:	83 ec 10             	sub    $0x10,%esp
c000622a:	ff 75 08             	pushl  0x8(%ebp)
c000622d:	6a 02                	push   $0x2
c000622f:	cd 80                	int    $0x80
c0006231:	83 c4 08             	add    $0x8,%esp
c0006234:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0006237:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000623a:	c9                   	leave  
c000623b:	c3                   	ret    

c000623c <free>:
c000623c:	55                   	push   %ebp
c000623d:	89 e5                	mov    %esp,%ebp
c000623f:	83 ec 10             	sub    $0x10,%esp
c0006242:	ff 75 08             	pushl  0x8(%ebp)
c0006245:	6a 03                	push   $0x3
c0006247:	cd 80                	int    $0x80
c0006249:	83 c4 08             	add    $0x8,%esp
c000624c:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000624f:	90                   	nop
c0006250:	c9                   	leave  
c0006251:	c3                   	ret    

c0006252 <read_port>:
c0006252:	55                   	push   %ebp
c0006253:	89 e5                	mov    %esp,%ebp
c0006255:	83 ec 14             	sub    $0x14,%esp
c0006258:	8b 45 08             	mov    0x8(%ebp),%eax
c000625b:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c000625f:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
c0006263:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c0006267:	ec                   	in     (%dx),%al
c0006268:	88 45 ff             	mov    %al,-0x1(%ebp)
c000626b:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c000626f:	c9                   	leave  
c0006270:	c3                   	ret    

c0006271 <read_stream>:
c0006271:	55                   	push   %ebp
c0006272:	89 e5                	mov    %esp,%ebp
c0006274:	57                   	push   %edi
c0006275:	53                   	push   %ebx
c0006276:	83 ec 04             	sub    $0x4,%esp
c0006279:	8b 45 08             	mov    0x8(%ebp),%eax
c000627c:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
c0006280:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
c0006284:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0006287:	8b 45 10             	mov    0x10(%ebp),%eax
c000628a:	89 cb                	mov    %ecx,%ebx
c000628c:	89 df                	mov    %ebx,%edi
c000628e:	89 c1                	mov    %eax,%ecx
c0006290:	fc                   	cld    
c0006291:	f3 6c                	rep insb (%dx),%es:(%edi)
c0006293:	89 c8                	mov    %ecx,%eax
c0006295:	89 fb                	mov    %edi,%ebx
c0006297:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c000629a:	89 45 10             	mov    %eax,0x10(%ebp)
c000629d:	83 c4 04             	add    $0x4,%esp
c00062a0:	5b                   	pop    %ebx
c00062a1:	5f                   	pop    %edi
c00062a2:	5d                   	pop    %ebp
c00062a3:	c3                   	ret    

c00062a4 <write_port>:
c00062a4:	55                   	push   %ebp
c00062a5:	89 e5                	mov    %esp,%ebp
c00062a7:	83 ec 04             	sub    $0x4,%esp
c00062aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00062ad:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00062b1:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c00062b5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00062b8:	ee                   	out    %al,(%dx)
c00062b9:	c9                   	leave  
c00062ba:	c3                   	ret    

c00062bb <write_stream>:
c00062bb:	55                   	push   %ebp
c00062bc:	89 e5                	mov    %esp,%ebp
c00062be:	56                   	push   %esi
c00062bf:	53                   	push   %ebx
c00062c0:	83 ec 04             	sub    $0x4,%esp
c00062c3:	8b 45 08             	mov    0x8(%ebp),%eax
c00062c6:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
c00062ca:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
c00062ce:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00062d1:	8b 45 10             	mov    0x10(%ebp),%eax
c00062d4:	89 cb                	mov    %ecx,%ebx
c00062d6:	89 de                	mov    %ebx,%esi
c00062d8:	89 c1                	mov    %eax,%ecx
c00062da:	fc                   	cld    
c00062db:	f3 6e                	rep outsb %ds:(%esi),(%dx)
c00062dd:	89 c8                	mov    %ecx,%eax
c00062df:	89 f3                	mov    %esi,%ebx
c00062e1:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00062e4:	89 45 10             	mov    %eax,0x10(%ebp)
c00062e7:	83 c4 04             	add    $0x4,%esp
c00062ea:	5b                   	pop    %ebx
c00062eb:	5e                   	pop    %esi
c00062ec:	5d                   	pop    %ebp
c00062ed:	c3                   	ret    

c00062ee <channel_init>:
c00062ee:	55                   	push   %ebp
c00062ef:	89 e5                	mov    %esp,%ebp
c00062f1:	83 ec 28             	sub    $0x28,%esp
c00062f4:	b8 75 04 00 00       	mov    $0x475,%eax
c00062f9:	0f b6 00             	movzbl (%eax),%eax
c00062fc:	88 45 f6             	mov    %al,-0xa(%ebp)
c00062ff:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
c0006303:	89 c2                	mov    %eax,%edx
c0006305:	c0 ea 07             	shr    $0x7,%dl
c0006308:	01 d0                	add    %edx,%eax
c000630a:	d0 f8                	sar    %al
c000630c:	88 45 f5             	mov    %al,-0xb(%ebp)
c000630f:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
c0006313:	e9 df 00 00 00       	jmp    c00063f7 <channel_init+0x109>
c0006318:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000631c:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c0006322:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c0006327:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000632a:	c7 45 ec 74 75 00 c0 	movl   $0xc0007574,-0x14(%ebp)
c0006331:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006334:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
c000633b:	00 
c000633c:	8b 55 ec             	mov    -0x14(%ebp),%edx
c000633f:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006343:	89 04 24             	mov    %eax,(%esp)
c0006346:	e8 ef d3 ff ff       	call   c000373a <memcopy>
c000634b:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000634f:	83 c0 30             	add    $0x30,%eax
c0006352:	89 c2                	mov    %eax,%edx
c0006354:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006357:	88 50 03             	mov    %dl,0x3(%eax)
c000635a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000635d:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0006361:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006365:	85 c0                	test   %eax,%eax
c0006367:	74 07                	je     c0006370 <channel_init+0x82>
c0006369:	83 f8 01             	cmp    $0x1,%eax
c000636c:	74 2e                	je     c000639c <channel_init+0xae>
c000636e:	eb 57                	jmp    c00063c7 <channel_init+0xd9>
c0006370:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006373:	c7 40 08 f0 01 00 00 	movl   $0x1f0,0x8(%eax)
c000637a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000637d:	c7 40 0c 2e 00 00 00 	movl   $0x2e,0xc(%eax)
c0006384:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006387:	8b 40 0c             	mov    0xc(%eax),%eax
c000638a:	c7 44 24 04 87 67 00 	movl   $0xc0006787,0x4(%esp)
c0006391:	c0 
c0006392:	89 04 24             	mov    %eax,(%esp)
c0006395:	e8 eb b3 ff ff       	call   c0001785 <register_int>
c000639a:	eb 2b                	jmp    c00063c7 <channel_init+0xd9>
c000639c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000639f:	c7 40 08 70 01 00 00 	movl   $0x170,0x8(%eax)
c00063a6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00063a9:	c7 40 0c 2f 00 00 00 	movl   $0x2f,0xc(%eax)
c00063b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00063b3:	8b 40 0c             	mov    0xc(%eax),%eax
c00063b6:	c7 44 24 04 87 67 00 	movl   $0xc0006787,0x4(%esp)
c00063bd:	c0 
c00063be:	89 04 24             	mov    %eax,(%esp)
c00063c1:	e8 bf b3 ff ff       	call   c0001785 <register_int>
c00063c6:	90                   	nop
c00063c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00063ca:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c00063d1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00063d4:	83 c0 14             	add    $0x14,%eax
c00063d7:	89 04 24             	mov    %eax,(%esp)
c00063da:	e8 b6 eb ff ff       	call   c0004f95 <init_mutex>
c00063df:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00063e2:	83 c0 28             	add    $0x28,%eax
c00063e5:	89 04 24             	mov    %eax,(%esp)
c00063e8:	e8 d2 eb ff ff       	call   c0004fbf <sema_init>
c00063ed:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c00063f1:	83 c0 01             	add    $0x1,%eax
c00063f4:	88 45 f7             	mov    %al,-0x9(%ebp)
c00063f7:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c00063fb:	3a 45 f5             	cmp    -0xb(%ebp),%al
c00063fe:	0f 86 14 ff ff ff    	jbe    c0006318 <channel_init+0x2a>
c0006404:	c9                   	leave  
c0006405:	c3                   	ret    

c0006406 <select_disk>:
c0006406:	55                   	push   %ebp
c0006407:	89 e5                	mov    %esp,%ebp
c0006409:	83 ec 18             	sub    $0x18,%esp
c000640c:	c6 45 ff e0          	movb   $0xe0,-0x1(%ebp)
c0006410:	8b 45 08             	mov    0x8(%ebp),%eax
c0006413:	0f b6 40 14          	movzbl 0x14(%eax),%eax
c0006417:	84 c0                	test   %al,%al
c0006419:	74 04                	je     c000641f <select_disk+0x19>
c000641b:	80 4d ff 10          	orb    $0x10,-0x1(%ebp)
c000641f:	0f b6 55 ff          	movzbl -0x1(%ebp),%edx
c0006423:	8b 45 08             	mov    0x8(%ebp),%eax
c0006426:	8b 40 10             	mov    0x10(%eax),%eax
c0006429:	8b 40 08             	mov    0x8(%eax),%eax
c000642c:	83 c0 06             	add    $0x6,%eax
c000642f:	0f b7 c0             	movzwl %ax,%eax
c0006432:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006436:	89 04 24             	mov    %eax,(%esp)
c0006439:	e8 66 fe ff ff       	call   c00062a4 <write_port>
c000643e:	8b 45 08             	mov    0x8(%ebp),%eax
c0006441:	c9                   	leave  
c0006442:	c3                   	ret    

c0006443 <select_sector>:
c0006443:	55                   	push   %ebp
c0006444:	89 e5                	mov    %esp,%ebp
c0006446:	83 ec 1c             	sub    $0x1c,%esp
c0006449:	8b 45 10             	mov    0x10(%ebp),%eax
c000644c:	88 45 ec             	mov    %al,-0x14(%ebp)
c000644f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006452:	8b 40 10             	mov    0x10(%eax),%eax
c0006455:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0006458:	8b 45 0c             	mov    0xc(%ebp),%eax
c000645b:	88 45 fb             	mov    %al,-0x5(%ebp)
c000645e:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c0006462:	8b 45 08             	mov    0x8(%ebp),%eax
c0006465:	8b 40 10             	mov    0x10(%eax),%eax
c0006468:	8b 40 08             	mov    0x8(%eax),%eax
c000646b:	83 c0 03             	add    $0x3,%eax
c000646e:	0f b7 c0             	movzwl %ax,%eax
c0006471:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006475:	89 04 24             	mov    %eax,(%esp)
c0006478:	e8 27 fe ff ff       	call   c00062a4 <write_port>
c000647d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006480:	c1 e8 08             	shr    $0x8,%eax
c0006483:	88 45 fb             	mov    %al,-0x5(%ebp)
c0006486:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c000648a:	8b 45 08             	mov    0x8(%ebp),%eax
c000648d:	8b 40 10             	mov    0x10(%eax),%eax
c0006490:	8b 40 08             	mov    0x8(%eax),%eax
c0006493:	83 c0 04             	add    $0x4,%eax
c0006496:	0f b7 c0             	movzwl %ax,%eax
c0006499:	89 54 24 04          	mov    %edx,0x4(%esp)
c000649d:	89 04 24             	mov    %eax,(%esp)
c00064a0:	e8 ff fd ff ff       	call   c00062a4 <write_port>
c00064a5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00064a8:	c1 e8 10             	shr    $0x10,%eax
c00064ab:	88 45 fb             	mov    %al,-0x5(%ebp)
c00064ae:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00064b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00064b5:	8b 40 10             	mov    0x10(%eax),%eax
c00064b8:	8b 40 08             	mov    0x8(%eax),%eax
c00064bb:	83 c0 05             	add    $0x5,%eax
c00064be:	0f b7 c0             	movzwl %ax,%eax
c00064c1:	89 54 24 04          	mov    %edx,0x4(%esp)
c00064c5:	89 04 24             	mov    %eax,(%esp)
c00064c8:	e8 d7 fd ff ff       	call   c00062a4 <write_port>
c00064cd:	8b 45 0c             	mov    0xc(%ebp),%eax
c00064d0:	c1 e8 18             	shr    $0x18,%eax
c00064d3:	88 45 fb             	mov    %al,-0x5(%ebp)
c00064d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00064d9:	0f b6 40 14          	movzbl 0x14(%eax),%eax
c00064dd:	84 c0                	test   %al,%al
c00064df:	74 07                	je     c00064e8 <select_sector+0xa5>
c00064e1:	b8 f0 00 00 00       	mov    $0xf0,%eax
c00064e6:	eb 05                	jmp    c00064ed <select_sector+0xaa>
c00064e8:	b8 e0 00 00 00       	mov    $0xe0,%eax
c00064ed:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00064f1:	09 d0                	or     %edx,%eax
c00064f3:	89 c2                	mov    %eax,%edx
c00064f5:	8b 45 08             	mov    0x8(%ebp),%eax
c00064f8:	8b 40 10             	mov    0x10(%eax),%eax
c00064fb:	8b 40 08             	mov    0x8(%eax),%eax
c00064fe:	83 c0 06             	add    $0x6,%eax
c0006501:	0f b7 c0             	movzwl %ax,%eax
c0006504:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006508:	89 04 24             	mov    %eax,(%esp)
c000650b:	e8 94 fd ff ff       	call   c00062a4 <write_port>
c0006510:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
c0006514:	8b 45 08             	mov    0x8(%ebp),%eax
c0006517:	8b 40 10             	mov    0x10(%eax),%eax
c000651a:	8b 40 08             	mov    0x8(%eax),%eax
c000651d:	83 c0 02             	add    $0x2,%eax
c0006520:	0f b7 c0             	movzwl %ax,%eax
c0006523:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006527:	89 04 24             	mov    %eax,(%esp)
c000652a:	e8 75 fd ff ff       	call   c00062a4 <write_port>
c000652f:	c9                   	leave  
c0006530:	c3                   	ret    

c0006531 <send_cmd>:
c0006531:	55                   	push   %ebp
c0006532:	89 e5                	mov    %esp,%ebp
c0006534:	83 ec 18             	sub    $0x18,%esp
c0006537:	8b 45 0c             	mov    0xc(%ebp),%eax
c000653a:	88 45 f4             	mov    %al,-0xc(%ebp)
c000653d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006540:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0006547:	8b 45 08             	mov    0x8(%ebp),%eax
c000654a:	8b 40 08             	mov    0x8(%eax),%eax
c000654d:	8d 50 07             	lea    0x7(%eax),%edx
c0006550:	8b 45 08             	mov    0x8(%ebp),%eax
c0006553:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006557:	89 44 24 04          	mov    %eax,0x4(%esp)
c000655b:	c7 04 24 78 75 00 c0 	movl   $0xc0007578,(%esp)
c0006562:	e8 6e 08 00 00       	call   c0006dd5 <printk>
c0006567:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
c000656b:	8b 45 08             	mov    0x8(%ebp),%eax
c000656e:	8b 40 08             	mov    0x8(%eax),%eax
c0006571:	83 c0 07             	add    $0x7,%eax
c0006574:	0f b7 c0             	movzwl %ax,%eax
c0006577:	89 54 24 04          	mov    %edx,0x4(%esp)
c000657b:	89 04 24             	mov    %eax,(%esp)
c000657e:	e8 21 fd ff ff       	call   c00062a4 <write_port>
c0006583:	c9                   	leave  
c0006584:	c3                   	ret    

c0006585 <hd_busy>:
c0006585:	55                   	push   %ebp
c0006586:	89 e5                	mov    %esp,%ebp
c0006588:	83 ec 28             	sub    $0x28,%esp
c000658b:	c7 45 f4 40 9c 00 00 	movl   $0x9c40,-0xc(%ebp)
c0006592:	eb 23                	jmp    c00065b7 <hd_busy+0x32>
c0006594:	a1 28 b2 00 c0       	mov    0xc000b228,%eax
c0006599:	83 c0 07             	add    $0x7,%eax
c000659c:	0f b7 c0             	movzwl %ax,%eax
c000659f:	89 04 24             	mov    %eax,(%esp)
c00065a2:	e8 ab fc ff ff       	call   c0006252 <read_port>
c00065a7:	c7 04 24 32 00 00 00 	movl   $0x32,(%esp)
c00065ae:	e8 88 b3 ff ff       	call   c000193b <mtime_sleep>
c00065b3:	83 6d f4 32          	subl   $0x32,-0xc(%ebp)
c00065b7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00065bb:	75 d7                	jne    c0006594 <hd_busy+0xf>
c00065bd:	b8 00 00 00 00       	mov    $0x0,%eax
c00065c2:	c9                   	leave  
c00065c3:	c3                   	ret    

c00065c4 <read_hd>:
c00065c4:	55                   	push   %ebp
c00065c5:	89 e5                	mov    %esp,%ebp
c00065c7:	83 ec 18             	sub    $0x18,%esp
c00065ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00065cd:	8b 40 10             	mov    0x10(%eax),%eax
c00065d0:	83 c0 14             	add    $0x14,%eax
c00065d3:	89 04 24             	mov    %eax,(%esp)
c00065d6:	e8 90 eb ff ff       	call   c000516b <lock>
c00065db:	8b 45 08             	mov    0x8(%ebp),%eax
c00065de:	89 04 24             	mov    %eax,(%esp)
c00065e1:	e8 20 fe ff ff       	call   c0006406 <select_disk>
c00065e6:	8b 45 14             	mov    0x14(%ebp),%eax
c00065e9:	0f b6 c0             	movzbl %al,%eax
c00065ec:	89 44 24 08          	mov    %eax,0x8(%esp)
c00065f0:	8b 45 10             	mov    0x10(%ebp),%eax
c00065f3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00065f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00065fa:	89 04 24             	mov    %eax,(%esp)
c00065fd:	e8 41 fe ff ff       	call   c0006443 <select_sector>
c0006602:	8b 45 08             	mov    0x8(%ebp),%eax
c0006605:	8b 40 10             	mov    0x10(%eax),%eax
c0006608:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c000660f:	00 
c0006610:	89 04 24             	mov    %eax,(%esp)
c0006613:	e8 19 ff ff ff       	call   c0006531 <send_cmd>
c0006618:	8b 45 08             	mov    0x8(%ebp),%eax
c000661b:	8b 40 10             	mov    0x10(%eax),%eax
c000661e:	83 c0 28             	add    $0x28,%eax
c0006621:	89 04 24             	mov    %eax,(%esp)
c0006624:	e8 b8 e9 ff ff       	call   c0004fe1 <sema_down>
c0006629:	8b 45 08             	mov    0x8(%ebp),%eax
c000662c:	89 04 24             	mov    %eax,(%esp)
c000662f:	e8 51 ff ff ff       	call   c0006585 <hd_busy>
c0006634:	85 c0                	test   %eax,%eax
c0006636:	75 33                	jne    c000666b <read_hd+0xa7>
c0006638:	8b 45 08             	mov    0x8(%ebp),%eax
c000663b:	8b 40 10             	mov    0x10(%eax),%eax
c000663e:	89 c2                	mov    %eax,%edx
c0006640:	8b 45 08             	mov    0x8(%ebp),%eax
c0006643:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006647:	89 44 24 04          	mov    %eax,0x4(%esp)
c000664b:	c7 04 24 97 75 00 c0 	movl   $0xc0007597,(%esp)
c0006652:	e8 7e 07 00 00       	call   c0006dd5 <printk>
c0006657:	8b 45 10             	mov    0x10(%ebp),%eax
c000665a:	89 44 24 04          	mov    %eax,0x4(%esp)
c000665e:	c7 04 24 af 75 00 c0 	movl   $0xc00075af,(%esp)
c0006665:	e8 6b 07 00 00       	call   c0006dd5 <printk>
c000666a:	f4                   	hlt    
c000666b:	8b 45 14             	mov    0x14(%ebp),%eax
c000666e:	c1 e0 09             	shl    $0x9,%eax
c0006671:	c1 e8 03             	shr    $0x3,%eax
c0006674:	89 c2                	mov    %eax,%edx
c0006676:	8b 45 08             	mov    0x8(%ebp),%eax
c0006679:	8b 40 10             	mov    0x10(%eax),%eax
c000667c:	8b 40 08             	mov    0x8(%eax),%eax
c000667f:	0f b7 c0             	movzwl %ax,%eax
c0006682:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006686:	8b 55 0c             	mov    0xc(%ebp),%edx
c0006689:	89 54 24 04          	mov    %edx,0x4(%esp)
c000668d:	89 04 24             	mov    %eax,(%esp)
c0006690:	e8 dc fb ff ff       	call   c0006271 <read_stream>
c0006695:	8b 45 08             	mov    0x8(%ebp),%eax
c0006698:	8b 40 10             	mov    0x10(%eax),%eax
c000669b:	83 c0 14             	add    $0x14,%eax
c000669e:	89 04 24             	mov    %eax,(%esp)
c00066a1:	e8 1b eb ff ff       	call   c00051c1 <unlock>
c00066a6:	c9                   	leave  
c00066a7:	c3                   	ret    

c00066a8 <write_hd>:
c00066a8:	55                   	push   %ebp
c00066a9:	89 e5                	mov    %esp,%ebp
c00066ab:	83 ec 18             	sub    $0x18,%esp
c00066ae:	8b 45 08             	mov    0x8(%ebp),%eax
c00066b1:	8b 40 10             	mov    0x10(%eax),%eax
c00066b4:	83 c0 14             	add    $0x14,%eax
c00066b7:	89 04 24             	mov    %eax,(%esp)
c00066ba:	e8 ac ea ff ff       	call   c000516b <lock>
c00066bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00066c2:	89 04 24             	mov    %eax,(%esp)
c00066c5:	e8 3c fd ff ff       	call   c0006406 <select_disk>
c00066ca:	8b 45 14             	mov    0x14(%ebp),%eax
c00066cd:	c1 e8 09             	shr    $0x9,%eax
c00066d0:	0f b6 c0             	movzbl %al,%eax
c00066d3:	89 44 24 08          	mov    %eax,0x8(%esp)
c00066d7:	8b 45 10             	mov    0x10(%ebp),%eax
c00066da:	89 44 24 04          	mov    %eax,0x4(%esp)
c00066de:	8b 45 08             	mov    0x8(%ebp),%eax
c00066e1:	89 04 24             	mov    %eax,(%esp)
c00066e4:	e8 5a fd ff ff       	call   c0006443 <select_sector>
c00066e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00066ec:	8b 40 10             	mov    0x10(%eax),%eax
c00066ef:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%esp)
c00066f6:	00 
c00066f7:	89 04 24             	mov    %eax,(%esp)
c00066fa:	e8 32 fe ff ff       	call   c0006531 <send_cmd>
c00066ff:	8b 45 08             	mov    0x8(%ebp),%eax
c0006702:	8b 40 10             	mov    0x10(%eax),%eax
c0006705:	83 c0 28             	add    $0x28,%eax
c0006708:	89 04 24             	mov    %eax,(%esp)
c000670b:	e8 d1 e8 ff ff       	call   c0004fe1 <sema_down>
c0006710:	8b 45 08             	mov    0x8(%ebp),%eax
c0006713:	89 04 24             	mov    %eax,(%esp)
c0006716:	e8 6a fe ff ff       	call   c0006585 <hd_busy>
c000671b:	85 c0                	test   %eax,%eax
c000671d:	75 33                	jne    c0006752 <write_hd+0xaa>
c000671f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006722:	8b 40 10             	mov    0x10(%eax),%eax
c0006725:	89 c2                	mov    %eax,%edx
c0006727:	8b 45 08             	mov    0x8(%ebp),%eax
c000672a:	89 54 24 08          	mov    %edx,0x8(%esp)
c000672e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006732:	c7 04 24 97 75 00 c0 	movl   $0xc0007597,(%esp)
c0006739:	e8 97 06 00 00       	call   c0006dd5 <printk>
c000673e:	8b 45 10             	mov    0x10(%ebp),%eax
c0006741:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006745:	c7 04 24 c7 75 00 c0 	movl   $0xc00075c7,(%esp)
c000674c:	e8 84 06 00 00       	call   c0006dd5 <printk>
c0006751:	f4                   	hlt    
c0006752:	8b 45 08             	mov    0x8(%ebp),%eax
c0006755:	8b 40 10             	mov    0x10(%eax),%eax
c0006758:	8b 40 08             	mov    0x8(%eax),%eax
c000675b:	0f b7 c0             	movzwl %ax,%eax
c000675e:	8b 55 14             	mov    0x14(%ebp),%edx
c0006761:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006765:	8b 55 0c             	mov    0xc(%ebp),%edx
c0006768:	89 54 24 04          	mov    %edx,0x4(%esp)
c000676c:	89 04 24             	mov    %eax,(%esp)
c000676f:	e8 47 fb ff ff       	call   c00062bb <write_stream>
c0006774:	8b 45 08             	mov    0x8(%ebp),%eax
c0006777:	8b 40 10             	mov    0x10(%eax),%eax
c000677a:	83 c0 14             	add    $0x14,%eax
c000677d:	89 04 24             	mov    %eax,(%esp)
c0006780:	e8 3c ea ff ff       	call   c00051c1 <unlock>
c0006785:	c9                   	leave  
c0006786:	c3                   	ret    

c0006787 <hd_intr>:
c0006787:	55                   	push   %ebp
c0006788:	89 e5                	mov    %esp,%ebp
c000678a:	83 ec 28             	sub    $0x28,%esp
c000678d:	66 8b 45 08          	mov    0x8(%ebp),%ax
c0006791:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0006794:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006797:	83 e8 2e             	sub    $0x2e,%eax
c000679a:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c00067a0:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c00067a5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00067a8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00067ab:	89 44 24 04          	mov    %eax,0x4(%esp)
c00067af:	c7 04 24 de 75 00 c0 	movl   $0xc00075de,(%esp)
c00067b6:	e8 1a 06 00 00       	call   c0006dd5 <printk>
c00067bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00067be:	8b 40 10             	mov    0x10(%eax),%eax
c00067c1:	85 c0                	test   %eax,%eax
c00067c3:	74 18                	je     c00067dd <hd_intr+0x56>
c00067c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00067c8:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c00067cf:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00067d2:	83 c0 28             	add    $0x28,%eax
c00067d5:	89 04 24             	mov    %eax,(%esp)
c00067d8:	e8 35 e9 ff ff       	call   c0005112 <sema_up>
c00067dd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00067e0:	8b 40 08             	mov    0x8(%eax),%eax
c00067e3:	83 c0 07             	add    $0x7,%eax
c00067e6:	0f b7 c0             	movzwl %ax,%eax
c00067e9:	89 04 24             	mov    %eax,(%esp)
c00067ec:	e8 61 fa ff ff       	call   c0006252 <read_port>
c00067f1:	c9                   	leave  
c00067f2:	c3                   	ret    

c00067f3 <disk_init>:
c00067f3:	55                   	push   %ebp
c00067f4:	89 e5                	mov    %esp,%ebp
c00067f6:	83 ec 28             	sub    $0x28,%esp
c00067f9:	b8 75 04 00 00       	mov    $0x475,%eax
c00067fe:	0f b6 00             	movzbl (%eax),%eax
c0006801:	88 45 f6             	mov    %al,-0xa(%ebp)
c0006804:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
c0006808:	e9 dd 00 00 00       	jmp    c00068ea <disk_init+0xf7>
c000680d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006811:	89 c2                	mov    %eax,%edx
c0006813:	c0 ea 07             	shr    $0x7,%dl
c0006816:	01 d0                	add    %edx,%eax
c0006818:	d0 f8                	sar    %al
c000681a:	0f be c0             	movsbl %al,%eax
c000681d:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c0006823:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c0006828:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000682b:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000682f:	89 c2                	mov    %eax,%edx
c0006831:	c0 fa 07             	sar    $0x7,%dl
c0006834:	c0 ea 07             	shr    $0x7,%dl
c0006837:	01 d0                	add    %edx,%eax
c0006839:	83 e0 01             	and    $0x1,%eax
c000683c:	29 d0                	sub    %edx,%eax
c000683e:	0f be c0             	movsbl %al,%eax
c0006841:	69 c0 c8 01 00 00    	imul   $0x1c8,%eax,%eax
c0006847:	8d 50 30             	lea    0x30(%eax),%edx
c000684a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000684d:	01 d0                	add    %edx,%eax
c000684f:	83 c0 04             	add    $0x4,%eax
c0006852:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0006855:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006858:	8b 55 f0             	mov    -0x10(%ebp),%edx
c000685b:	89 50 10             	mov    %edx,0x10(%eax)
c000685e:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006862:	89 c2                	mov    %eax,%edx
c0006864:	c0 fa 07             	sar    $0x7,%dl
c0006867:	c0 ea 07             	shr    $0x7,%dl
c000686a:	01 d0                	add    %edx,%eax
c000686c:	83 e0 01             	and    $0x1,%eax
c000686f:	29 d0                	sub    %edx,%eax
c0006871:	89 c2                	mov    %eax,%edx
c0006873:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006876:	88 50 14             	mov    %dl,0x14(%eax)
c0006879:	c7 45 e8 e8 75 00 c0 	movl   $0xc00075e8,-0x18(%ebp)
c0006880:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006883:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
c000688a:	00 
c000688b:	8b 55 e8             	mov    -0x18(%ebp),%edx
c000688e:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006892:	89 04 24             	mov    %eax,(%esp)
c0006895:	e8 a0 ce ff ff       	call   c000373a <memcopy>
c000689a:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000689e:	83 c0 61             	add    $0x61,%eax
c00068a1:	89 c2                	mov    %eax,%edx
c00068a3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00068a6:	88 50 02             	mov    %dl,0x2(%eax)
c00068a9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00068ac:	c6 40 03 00          	movb   $0x0,0x3(%eax)
c00068b0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00068b3:	89 04 24             	mov    %eax,(%esp)
c00068b6:	e8 74 00 00 00       	call   c000692f <identify_disk>
c00068bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00068be:	89 04 24             	mov    %eax,(%esp)
c00068c1:	e8 26 02 00 00       	call   c0006aec <read_partition>
c00068c6:	c7 04 24 ec 75 00 c0 	movl   $0xc00075ec,(%esp)
c00068cd:	e8 03 05 00 00       	call   c0006dd5 <printk>
c00068d2:	c7 44 24 04 f9 68 00 	movl   $0xc00068f9,0x4(%esp)
c00068d9:	c0 
c00068da:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c00068e1:	e8 67 e6 ff ff       	call   c0004f4d <lst_traverse>
c00068e6:	80 45 f7 01          	addb   $0x1,-0x9(%ebp)
c00068ea:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c00068ee:	3a 45 f6             	cmp    -0xa(%ebp),%al
c00068f1:	0f 8c 16 ff ff ff    	jl     c000680d <disk_init+0x1a>
c00068f7:	c9                   	leave  
c00068f8:	c3                   	ret    

c00068f9 <out_partition>:
c00068f9:	55                   	push   %ebp
c00068fa:	89 e5                	mov    %esp,%ebp
c00068fc:	83 ec 28             	sub    $0x28,%esp
c00068ff:	c7 45 f4 f8 ff ff ff 	movl   $0xfffffff8,-0xc(%ebp)
c0006906:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006909:	8b 48 14             	mov    0x14(%eax),%ecx
c000690c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000690f:	8b 50 10             	mov    0x10(%eax),%edx
c0006912:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006915:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c0006919:	89 54 24 08          	mov    %edx,0x8(%esp)
c000691d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006921:	c7 04 24 14 76 00 c0 	movl   $0xc0007614,(%esp)
c0006928:	e8 a8 04 00 00       	call   c0006dd5 <printk>
c000692d:	c9                   	leave  
c000692e:	c3                   	ret    

c000692f <identify_disk>:
c000692f:	55                   	push   %ebp
c0006930:	89 e5                	mov    %esp,%ebp
c0006932:	53                   	push   %ebx
c0006933:	81 ec 64 02 00 00    	sub    $0x264,%esp
c0006939:	c7 04 24 a9 76 00 c0 	movl   $0xc00076a9,(%esp)
c0006940:	e8 90 cb ff ff       	call   c00034d5 <put_str>
c0006945:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c000694c:	e8 ff c9 ff ff       	call   c0003350 <put_char>
c0006951:	8b 45 08             	mov    0x8(%ebp),%eax
c0006954:	8b 40 10             	mov    0x10(%eax),%eax
c0006957:	83 c0 14             	add    $0x14,%eax
c000695a:	89 04 24             	mov    %eax,(%esp)
c000695d:	e8 09 e8 ff ff       	call   c000516b <lock>
c0006962:	8b 45 08             	mov    0x8(%ebp),%eax
c0006965:	8b 40 10             	mov    0x10(%eax),%eax
c0006968:	c7 44 24 04 ec 00 00 	movl   $0xec,0x4(%esp)
c000696f:	00 
c0006970:	89 04 24             	mov    %eax,(%esp)
c0006973:	e8 b9 fb ff ff       	call   c0006531 <send_cmd>
c0006978:	8b 45 08             	mov    0x8(%ebp),%eax
c000697b:	8b 40 10             	mov    0x10(%eax),%eax
c000697e:	83 c0 28             	add    $0x28,%eax
c0006981:	89 04 24             	mov    %eax,(%esp)
c0006984:	e8 58 e6 ff ff       	call   c0004fe1 <sema_down>
c0006989:	8b 45 08             	mov    0x8(%ebp),%eax
c000698c:	89 04 24             	mov    %eax,(%esp)
c000698f:	e8 f1 fb ff ff       	call   c0006585 <hd_busy>
c0006994:	85 c0                	test   %eax,%eax
c0006996:	75 20                	jne    c00069b8 <identify_disk+0x89>
c0006998:	8b 45 08             	mov    0x8(%ebp),%eax
c000699b:	8b 40 10             	mov    0x10(%eax),%eax
c000699e:	89 c2                	mov    %eax,%edx
c00069a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00069a3:	89 54 24 08          	mov    %edx,0x8(%esp)
c00069a7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00069ab:	c7 04 24 97 75 00 c0 	movl   $0xc0007597,(%esp)
c00069b2:	e8 1e 04 00 00       	call   c0006dd5 <printk>
c00069b7:	f4                   	hlt    
c00069b8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00069bf:	eb 46                	jmp    c0006a07 <identify_disk+0xd8>
c00069c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00069c4:	8d 58 01             	lea    0x1(%eax),%ebx
c00069c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00069ca:	8b 40 10             	mov    0x10(%eax),%eax
c00069cd:	8b 40 08             	mov    0x8(%eax),%eax
c00069d0:	0f b7 c0             	movzwl %ax,%eax
c00069d3:	89 04 24             	mov    %eax,(%esp)
c00069d6:	e8 77 f8 ff ff       	call   c0006252 <read_port>
c00069db:	88 84 1d f2 fd ff ff 	mov    %al,-0x20e(%ebp,%ebx,1)
c00069e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00069e5:	8b 40 10             	mov    0x10(%eax),%eax
c00069e8:	8b 40 08             	mov    0x8(%eax),%eax
c00069eb:	0f b7 c0             	movzwl %ax,%eax
c00069ee:	89 04 24             	mov    %eax,(%esp)
c00069f1:	e8 5c f8 ff ff       	call   c0006252 <read_port>
c00069f6:	8d 8d f2 fd ff ff    	lea    -0x20e(%ebp),%ecx
c00069fc:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00069ff:	01 ca                	add    %ecx,%edx
c0006a01:	88 02                	mov    %al,(%edx)
c0006a03:	83 45 f4 02          	addl   $0x2,-0xc(%ebp)
c0006a07:	81 7d f4 ff 01 00 00 	cmpl   $0x1ff,-0xc(%ebp)
c0006a0e:	7e b1                	jle    c00069c1 <identify_disk+0x92>
c0006a10:	8b 45 08             	mov    0x8(%ebp),%eax
c0006a13:	8b 40 10             	mov    0x10(%eax),%eax
c0006a16:	83 c0 14             	add    $0x14,%eax
c0006a19:	89 04 24             	mov    %eax,(%esp)
c0006a1c:	e8 a0 e7 ff ff       	call   c00051c1 <unlock>
c0006a21:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0006a28:	00 
c0006a29:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0006a30:	00 
c0006a31:	8d 85 b2 fd ff ff    	lea    -0x24e(%ebp),%eax
c0006a37:	89 04 24             	mov    %eax,(%esp)
c0006a3a:	e8 3e cc ff ff       	call   c000367d <memset_8>
c0006a3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006a42:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006a46:	c7 04 24 1f 76 00 c0 	movl   $0xc000761f,(%esp)
c0006a4d:	e8 83 03 00 00       	call   c0006dd5 <printk>
c0006a52:	c7 44 24 08 14 00 00 	movl   $0x14,0x8(%esp)
c0006a59:	00 
c0006a5a:	8d 85 f2 fd ff ff    	lea    -0x20e(%ebp),%eax
c0006a60:	83 c0 0a             	add    $0xa,%eax
c0006a63:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006a67:	8d 85 b2 fd ff ff    	lea    -0x24e(%ebp),%eax
c0006a6d:	89 04 24             	mov    %eax,(%esp)
c0006a70:	e8 c5 cc ff ff       	call   c000373a <memcopy>
c0006a75:	8d 85 b2 fd ff ff    	lea    -0x24e(%ebp),%eax
c0006a7b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006a7f:	c7 04 24 2f 76 00 c0 	movl   $0xc000762f,(%esp)
c0006a86:	e8 4a 03 00 00       	call   c0006dd5 <printk>
c0006a8b:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
c0006a92:	00 
c0006a93:	8d 85 f2 fd ff ff    	lea    -0x20e(%ebp),%eax
c0006a99:	83 c0 1b             	add    $0x1b,%eax
c0006a9c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006aa0:	8d 85 b2 fd ff ff    	lea    -0x24e(%ebp),%eax
c0006aa6:	89 04 24             	mov    %eax,(%esp)
c0006aa9:	e8 8c cc ff ff       	call   c000373a <memcopy>
c0006aae:	8d 85 b2 fd ff ff    	lea    -0x24e(%ebp),%eax
c0006ab4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006ab8:	c7 04 24 36 76 00 c0 	movl   $0xc0007636,(%esp)
c0006abf:	e8 11 03 00 00       	call   c0006dd5 <printk>
c0006ac4:	0f b7 85 2e fe ff ff 	movzwl -0x1d2(%ebp),%eax
c0006acb:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
c0006acf:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
c0006ad3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006ad7:	c7 04 24 42 76 00 c0 	movl   $0xc0007642,(%esp)
c0006ade:	e8 f2 02 00 00       	call   c0006dd5 <printk>
c0006ae3:	81 c4 64 02 00 00    	add    $0x264,%esp
c0006ae9:	5b                   	pop    %ebx
c0006aea:	5d                   	pop    %ebp
c0006aeb:	c3                   	ret    

c0006aec <read_partition>:
c0006aec:	55                   	push   %ebp
c0006aed:	89 e5                	mov    %esp,%ebp
c0006aef:	81 ec 38 02 00 00    	sub    $0x238,%esp
c0006af5:	c7 04 24 b7 76 00 c0 	movl   $0xc00076b7,(%esp)
c0006afc:	e8 d4 c9 ff ff       	call   c00034d5 <put_str>
c0006b01:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0006b08:	e8 43 c8 ff ff       	call   c0003350 <put_char>
c0006b0d:	c6 05 00 b2 00 c0 00 	movb   $0x0,0xc000b200
c0006b14:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0006b1b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0006b22:	c6 45 eb 00          	movb   $0x0,-0x15(%ebp)
c0006b26:	c6 45 ea 00          	movb   $0x0,-0x16(%ebp)
c0006b2a:	e9 88 01 00 00       	jmp    c0006cb7 <read_partition+0x1cb>
c0006b2f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0006b36:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0006b3d:	c7 44 24 0c 04 02 00 	movl   $0x204,0xc(%esp)
c0006b44:	00 
c0006b45:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006b48:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006b4c:	8d 85 e0 fd ff ff    	lea    -0x220(%ebp),%eax
c0006b52:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006b56:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b59:	89 04 24             	mov    %eax,(%esp)
c0006b5c:	e8 63 fa ff ff       	call   c00065c4 <read_hd>
c0006b61:	e9 47 01 00 00       	jmp    c0006cad <read_partition+0x1c1>
c0006b66:	8d 85 e0 fd ff ff    	lea    -0x220(%ebp),%eax
c0006b6c:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0006b6f:	83 c2 1c             	add    $0x1c,%edx
c0006b72:	c1 e2 04             	shl    $0x4,%edx
c0006b75:	01 d0                	add    %edx,%eax
c0006b77:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0006b7a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006b7d:	0f b6 40 04          	movzbl 0x4(%eax),%eax
c0006b81:	3c 05                	cmp    $0x5,%al
c0006b83:	75 15                	jne    c0006b9a <read_partition+0xae>
c0006b85:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0006b8c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006b8f:	8b 40 08             	mov    0x8(%eax),%eax
c0006b92:	01 45 ec             	add    %eax,-0x14(%ebp)
c0006b95:	e9 0f 01 00 00       	jmp    c0006ca9 <read_partition+0x1bd>
c0006b9a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006b9d:	0f b6 40 04          	movzbl 0x4(%eax),%eax
c0006ba1:	84 c0                	test   %al,%al
c0006ba3:	0f 84 00 01 00 00    	je     c0006ca9 <read_partition+0x1bd>
c0006ba9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006bac:	0f b6 40 02          	movzbl 0x2(%eax),%eax
c0006bb0:	84 c0                	test   %al,%al
c0006bb2:	75 7a                	jne    c0006c2e <read_partition+0x142>
c0006bb4:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006bb8:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0006bbb:	89 d0                	mov    %edx,%eax
c0006bbd:	c1 e0 03             	shl    $0x3,%eax
c0006bc0:	01 d0                	add    %edx,%eax
c0006bc2:	c1 e0 02             	shl    $0x2,%eax
c0006bc5:	01 c8                	add    %ecx,%eax
c0006bc7:	83 c0 30             	add    $0x30,%eax
c0006bca:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0006bd0:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006bd4:	89 d0                	mov    %edx,%eax
c0006bd6:	c1 e0 03             	shl    $0x3,%eax
c0006bd9:	01 d0                	add    %edx,%eax
c0006bdb:	c1 e0 02             	shl    $0x2,%eax
c0006bde:	8d 50 10             	lea    0x10(%eax),%edx
c0006be1:	8b 45 08             	mov    0x8(%ebp),%eax
c0006be4:	01 d0                	add    %edx,%eax
c0006be6:	8d 50 08             	lea    0x8(%eax),%edx
c0006be9:	8b 45 08             	mov    0x8(%ebp),%eax
c0006bec:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006bf0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006bf3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006bf7:	89 14 24             	mov    %edx,(%esp)
c0006bfa:	e8 c4 00 00 00       	call   c0006cc3 <partition_init>
c0006bff:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006c03:	89 d0                	mov    %edx,%eax
c0006c05:	c1 e0 03             	shl    $0x3,%eax
c0006c08:	01 d0                	add    %edx,%eax
c0006c0a:	c1 e0 02             	shl    $0x2,%eax
c0006c0d:	8d 50 10             	lea    0x10(%eax),%edx
c0006c10:	8b 45 08             	mov    0x8(%ebp),%eax
c0006c13:	01 d0                	add    %edx,%eax
c0006c15:	83 c0 10             	add    $0x10,%eax
c0006c18:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c1c:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006c23:	e8 3c df ff ff       	call   c0004b64 <lst_push>
c0006c28:	80 45 eb 01          	addb   $0x1,-0x15(%ebp)
c0006c2c:	eb 7b                	jmp    c0006ca9 <read_partition+0x1bd>
c0006c2e:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006c32:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0006c35:	89 d0                	mov    %edx,%eax
c0006c37:	c1 e0 03             	shl    $0x3,%eax
c0006c3a:	01 d0                	add    %edx,%eax
c0006c3c:	c1 e0 02             	shl    $0x2,%eax
c0006c3f:	01 c8                	add    %ecx,%eax
c0006c41:	83 c0 30             	add    $0x30,%eax
c0006c44:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0006c4a:	0f b6 55 ea          	movzbl -0x16(%ebp),%edx
c0006c4e:	89 d0                	mov    %edx,%eax
c0006c50:	c1 e0 03             	shl    $0x3,%eax
c0006c53:	01 d0                	add    %edx,%eax
c0006c55:	c1 e0 02             	shl    $0x2,%eax
c0006c58:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
c0006c5e:	8b 45 08             	mov    0x8(%ebp),%eax
c0006c61:	01 d0                	add    %edx,%eax
c0006c63:	8d 50 08             	lea    0x8(%eax),%edx
c0006c66:	8b 45 08             	mov    0x8(%ebp),%eax
c0006c69:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006c6d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006c70:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c74:	89 14 24             	mov    %edx,(%esp)
c0006c77:	e8 47 00 00 00       	call   c0006cc3 <partition_init>
c0006c7c:	0f b6 55 ea          	movzbl -0x16(%ebp),%edx
c0006c80:	89 d0                	mov    %edx,%eax
c0006c82:	c1 e0 03             	shl    $0x3,%eax
c0006c85:	01 d0                	add    %edx,%eax
c0006c87:	c1 e0 02             	shl    $0x2,%eax
c0006c8a:	8d 50 10             	lea    0x10(%eax),%edx
c0006c8d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006c90:	01 d0                	add    %edx,%eax
c0006c92:	83 c0 10             	add    $0x10,%eax
c0006c95:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c99:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006ca0:	e8 bf de ff ff       	call   c0004b64 <lst_push>
c0006ca5:	80 45 ea 01          	addb   $0x1,-0x16(%ebp)
c0006ca9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0006cad:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
c0006cb1:	0f 8e af fe ff ff    	jle    c0006b66 <read_partition+0x7a>
c0006cb7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0006cbb:	0f 85 6e fe ff ff    	jne    c0006b2f <read_partition+0x43>
c0006cc1:	c9                   	leave  
c0006cc2:	c3                   	ret    

c0006cc3 <partition_init>:
c0006cc3:	55                   	push   %ebp
c0006cc4:	89 e5                	mov    %esp,%ebp
c0006cc6:	83 ec 28             	sub    $0x28,%esp
c0006cc9:	c7 04 24 c6 76 00 c0 	movl   $0xc00076c6,(%esp)
c0006cd0:	e8 00 c8 ff ff       	call   c00034d5 <put_str>
c0006cd5:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0006cdc:	e8 6f c6 ff ff       	call   c0003350 <put_char>
c0006ce1:	0f b6 05 00 b2 00 c0 	movzbl 0xc000b200,%eax
c0006ce8:	8d 50 01             	lea    0x1(%eax),%edx
c0006ceb:	88 15 00 b2 00 c0    	mov    %dl,0xc000b200
c0006cf1:	0f be c0             	movsbl %al,%eax
c0006cf4:	8d 48 30             	lea    0x30(%eax),%ecx
c0006cf7:	8b 55 10             	mov    0x10(%ebp),%edx
c0006cfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0006cfd:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c0006d01:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006d05:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006d09:	c7 04 24 4e 76 00 c0 	movl   $0xc000764e,(%esp)
c0006d10:	e8 71 cb ff ff       	call   c0003886 <formative_str>
c0006d15:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0006d18:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006d1b:	89 04 24             	mov    %eax,(%esp)
c0006d1e:	e8 d7 ca ff ff       	call   c00037fa <strlen>
c0006d23:	8b 55 08             	mov    0x8(%ebp),%edx
c0006d26:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006d2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006d2d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006d31:	89 14 24             	mov    %edx,(%esp)
c0006d34:	e8 01 ca ff ff       	call   c000373a <memcopy>
c0006d39:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006d3c:	0f b6 40 02          	movzbl 0x2(%eax),%eax
c0006d40:	0f b6 d0             	movzbl %al,%edx
c0006d43:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d46:	89 50 10             	mov    %edx,0x10(%eax)
c0006d49:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006d4c:	0f b6 40 06          	movzbl 0x6(%eax),%eax
c0006d50:	0f b6 d0             	movzbl %al,%edx
c0006d53:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d56:	89 50 14             	mov    %edx,0x14(%eax)
c0006d59:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d5c:	8b 55 10             	mov    0x10(%ebp),%edx
c0006d5f:	89 50 1c             	mov    %edx,0x1c(%eax)
c0006d62:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d65:	83 c0 20             	add    $0x20,%eax
c0006d68:	89 04 24             	mov    %eax,(%esp)
c0006d6b:	e8 44 cb ff ff       	call   c00038b4 <init_bit_map>
c0006d70:	c9                   	leave  
c0006d71:	c3                   	ret    

c0006d72 <ide_init>:
c0006d72:	55                   	push   %ebp
c0006d73:	89 e5                	mov    %esp,%ebp
c0006d75:	83 ec 18             	sub    $0x18,%esp
c0006d78:	c7 04 24 53 76 00 c0 	movl   $0xc0007653,(%esp)
c0006d7f:	e8 51 00 00 00       	call   c0006dd5 <printk>
c0006d84:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006d8b:	e8 bc dd ff ff       	call   c0004b4c <init_list>
c0006d90:	c7 04 24 63 76 00 c0 	movl   $0xc0007663,(%esp)
c0006d97:	e8 39 00 00 00       	call   c0006dd5 <printk>
c0006d9c:	e8 4d f5 ff ff       	call   c00062ee <channel_init>
c0006da1:	a1 2c b2 00 c0       	mov    0xc000b22c,%eax
c0006da6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006daa:	c7 04 24 77 76 00 c0 	movl   $0xc0007677,(%esp)
c0006db1:	e8 1f 00 00 00       	call   c0006dd5 <printk>
c0006db6:	c7 04 24 89 76 00 c0 	movl   $0xc0007689,(%esp)
c0006dbd:	e8 13 00 00 00       	call   c0006dd5 <printk>
c0006dc2:	e8 2c fa ff ff       	call   c00067f3 <disk_init>
c0006dc7:	c7 04 24 9a 76 00 c0 	movl   $0xc000769a,(%esp)
c0006dce:	e8 02 00 00 00       	call   c0006dd5 <printk>
c0006dd3:	c9                   	leave  
c0006dd4:	c3                   	ret    

c0006dd5 <printk>:
c0006dd5:	55                   	push   %ebp
c0006dd6:	89 e5                	mov    %esp,%ebp
c0006dd8:	83 ec 28             	sub    $0x28,%esp
c0006ddb:	8d 45 08             	lea    0x8(%ebp),%eax
c0006dde:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0006de1:	8b 45 08             	mov    0x8(%ebp),%eax
c0006de4:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0006de7:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006deb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006def:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0006df6:	e8 b2 f0 ff ff       	call   c0005ead <vsprintf>
c0006dfb:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0006e02:	e8 34 e5 ff ff       	call   c000533b <console_put_str>
c0006e07:	c9                   	leave  
c0006e08:	c3                   	ret    
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

00000018 0000001c 0000001c FDE cie=00000000 pc=c0001500..c00015a4
  DW_CFA_advance_loc: 1 to c0001501
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001503
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 160 to c00015a3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000038 0000001c 0000003c FDE cie=00000000 pc=c00015a4..c00015ce
  DW_CFA_advance_loc: 1 to c00015a5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00015a7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 38 to c00015cd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000058 0000001c 0000005c FDE cie=00000000 pc=c00015ce..c00015e5
  DW_CFA_advance_loc: 1 to c00015cf
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00015d1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 19 to c00015e4
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000078 0000001c 0000007c FDE cie=00000000 pc=c00015e5..c0001619
  DW_CFA_advance_loc: 1 to c00015e6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00015e8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c0001618
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000098 0000001c 0000009c FDE cie=00000000 pc=c0001619..c0001682
  DW_CFA_advance_loc: 1 to c000161a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000161c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 101 to c0001681
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000000b8 0000001c 000000bc FDE cie=00000000 pc=c0001682..c0001785
  DW_CFA_advance_loc: 1 to c0001683
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001685
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 255 to c0001784
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000000d8 0000001c 000000dc FDE cie=00000000 pc=c0001785..c0001797
  DW_CFA_advance_loc: 1 to c0001786
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001788
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 14 to c0001796
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000000f8 0000001c 000000fc FDE cie=00000000 pc=c0001797..c00017ce
  DW_CFA_advance_loc: 1 to c0001798
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000179a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 51 to c00017cd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000118 0000001c 0000011c FDE cie=00000000 pc=c00017ce..c000180f
  DW_CFA_advance_loc: 1 to c00017cf
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00017d1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 61 to c000180e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000138 0000001c 0000013c FDE cie=00000000 pc=c000180f..c00018e0
  DW_CFA_advance_loc: 1 to c0001810
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001812
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 205 to c00018df
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000158 0000001c 0000015c FDE cie=00000000 pc=c00018e0..c000193b
  DW_CFA_advance_loc: 1 to c00018e1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00018e3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 87 to c000193a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000178 0000001c 0000017c FDE cie=00000000 pc=c000193b..c0001978
  DW_CFA_advance_loc: 1 to c000193c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000193e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 57 to c0001977
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000198 00000024 0000019c FDE cie=00000000 pc=c0001978..c00019e3
  DW_CFA_advance_loc: 1 to c0001979
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000197b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0001980
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 96 to c00019e0
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00019e1
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c00019e2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000001c0 0000001c 000001c4 FDE cie=00000000 pc=c00034d5..c00034fe
  DW_CFA_advance_loc: 1 to c00034d6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00034d8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 37 to c00034fd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000001e0 0000001c 000001e4 FDE cie=00000000 pc=c00034fe..c0003522
  DW_CFA_advance_loc: 1 to c00034ff
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003501
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 32 to c0003521
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000200 0000001c 00000204 FDE cie=00000000 pc=c0003522..c0003536
  DW_CFA_advance_loc: 1 to c0003523
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003525
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c0003535
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000220 0000001c 00000224 FDE cie=00000000 pc=c0003536..c000354a
  DW_CFA_advance_loc: 1 to c0003537
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003539
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c0003549
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000240 0000001c 00000244 FDE cie=00000000 pc=c000354a..c0003570
  DW_CFA_advance_loc: 1 to c000354b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000354d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 34 to c000356f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000260 0000001c 00000264 FDE cie=00000000 pc=c0003570..c0003630
  DW_CFA_advance_loc: 1 to c0003571
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003573
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 188 to c000362f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000280 0000001c 00000284 FDE cie=00000000 pc=c0003630..c000367d
  DW_CFA_advance_loc: 1 to c0003631
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003633
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 73 to c000367c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000002a0 0000001c 000002a4 FDE cie=00000000 pc=c000367d..c00036df
  DW_CFA_advance_loc: 1 to c000367e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003680
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 94 to c00036de
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000002c0 0000001c 000002c4 FDE cie=00000000 pc=c00036df..c000373a
  DW_CFA_advance_loc: 1 to c00036e0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00036e2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 87 to c0003739
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000002e0 0000001c 000002e4 FDE cie=00000000 pc=c000373a..c00037aa
  DW_CFA_advance_loc: 1 to c000373b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000373d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 108 to c00037a9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000300 0000001c 00000304 FDE cie=00000000 pc=c00037aa..c00037fa
  DW_CFA_advance_loc: 1 to c00037ab
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00037ad
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 76 to c00037f9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000320 0000001c 00000324 FDE cie=00000000 pc=c00037fa..c0003822
  DW_CFA_advance_loc: 1 to c00037fb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00037fd
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 36 to c0003821
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000340 0000001c 00000344 FDE cie=00000000 pc=c0003822..c0003886
  DW_CFA_advance_loc: 1 to c0003823
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003825
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 96 to c0003885
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000360 0000001c 00000364 FDE cie=00000000 pc=c0003886..c00038b4
  DW_CFA_advance_loc: 1 to c0003887
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003889
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 42 to c00038b3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000380 0000001c 00000384 FDE cie=00000000 pc=c00038b4..c00038b9
  DW_CFA_advance_loc: 1 to c00038b5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038b7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 1 to c00038b8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000003a0 00000020 000003a4 FDE cie=00000000 pc=c00038b9..c0003933
  DW_CFA_advance_loc: 1 to c00038ba
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038bc
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c00038c0
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 113 to c0003931
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0003932
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000003c4 00000024 000003c8 FDE cie=00000000 pc=c0003933..c00039d6
  DW_CFA_advance_loc: 1 to c0003934
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003936
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c000393b
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 152 to c00039d3
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00039d4
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c00039d5
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000003ec 00000024 000003f0 FDE cie=00000000 pc=c00039d6..c0003ac9
  DW_CFA_advance_loc: 1 to c00039d7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00039d9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c00039de
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 232 to c0003ac6
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0003ac7
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c0003ac8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000414 0000001c 00000418 FDE cie=00000000 pc=c0003ac9..c0003b68
  DW_CFA_advance_loc: 1 to c0003aca
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003acc
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 155 to c0003b67
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000434 0000001c 00000438 FDE cie=00000000 pc=c0003b68..c0003bf0
  DW_CFA_advance_loc: 1 to c0003b69
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003b6b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 132 to c0003bef
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000454 0000001c 00000458 FDE cie=00000000 pc=c0003bf0..c0003c3f
  DW_CFA_advance_loc: 1 to c0003bf1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003bf3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 75 to c0003c3e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000474 0000001c 00000478 FDE cie=00000000 pc=c0003c3f..c0003d3c
  DW_CFA_advance_loc: 1 to c0003c40
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003c42
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 249 to c0003d3b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000494 0000001c 00000498 FDE cie=00000000 pc=c0003d3c..c0003e0c
  DW_CFA_advance_loc: 1 to c0003d3d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003d3f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 204 to c0003e0b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004b4 0000001c 000004b8 FDE cie=00000000 pc=c0003e0c..c0003ef1
  DW_CFA_advance_loc: 1 to c0003e0d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003e0f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 225 to c0003ef0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004d4 0000001c 000004d8 FDE cie=00000000 pc=c0003ef1..c0003f38
  DW_CFA_advance_loc: 1 to c0003ef2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003ef4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 67 to c0003f37
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004f4 0000001c 000004f8 FDE cie=00000000 pc=c0003f38..c0004065
  DW_CFA_advance_loc: 1 to c0003f39
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003f3b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 297 to c0004064
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000514 0000001c 00000518 FDE cie=00000000 pc=c0004065..c00040cd
  DW_CFA_advance_loc: 1 to c0004066
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004068
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 100 to c00040cc
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000534 0000001c 00000538 FDE cie=00000000 pc=c00040cd..c000425b
  DW_CFA_advance_loc: 1 to c00040ce
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00040d0
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 394 to c000425a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000554 0000001c 00000558 FDE cie=00000000 pc=c000425b..c00042c4
  DW_CFA_advance_loc: 1 to c000425c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000425e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 101 to c00042c3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000574 0000001c 00000578 FDE cie=00000000 pc=c00042c4..c0004377
  DW_CFA_advance_loc: 1 to c00042c5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00042c7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 175 to c0004376
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000594 0000001c 00000598 FDE cie=00000000 pc=c0004377..c000444b
  DW_CFA_advance_loc: 1 to c0004378
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000437a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 208 to c000444a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000005b4 0000001c 000005b8 FDE cie=00000000 pc=c000444b..c000445e
  DW_CFA_advance_loc: 1 to c000444c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000444e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c000445d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000005d4 0000001c 000005d8 FDE cie=00000000 pc=c000445e..c0004471
  DW_CFA_advance_loc: 1 to c000445f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004461
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c0004470
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000005f4 0000001c 000005f8 FDE cie=00000000 pc=c0004471..c0004545
  DW_CFA_advance_loc: 1 to c0004472
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004474
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 208 to c0004544
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000614 0000001c 00000618 FDE cie=00000000 pc=c0004545..c0004565
  DW_CFA_advance_loc: 1 to c0004546
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004548
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 28 to c0004564
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000634 0000001c 00000638 FDE cie=00000000 pc=c0004565..c00045d8
  DW_CFA_advance_loc: 1 to c0004566
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004568
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 111 to c00045d7
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000654 0000001c 00000658 FDE cie=00000000 pc=c00045d8..c00045ed
  DW_CFA_advance_loc: 1 to c00045d9
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00045db
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 17 to c00045ec
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000674 0000001c 00000678 FDE cie=00000000 pc=c00045ed..c000477d
  DW_CFA_advance_loc: 1 to c00045ee
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00045f0
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 396 to c000477c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000694 0000001c 00000698 FDE cie=00000000 pc=c000477d..c00047b0
  DW_CFA_advance_loc: 1 to c000477e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004780
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 47 to c00047af
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006b4 0000001c 000006b8 FDE cie=00000000 pc=c00047b0..c00047e4
  DW_CFA_advance_loc: 1 to c00047b1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00047b3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c00047e3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006d4 0000001c 000006d8 FDE cie=00000000 pc=c00047e4..c0004892
  DW_CFA_advance_loc: 1 to c00047e5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00047e7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 170 to c0004891
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000006f4 0000001c 000006f8 FDE cie=00000000 pc=c0004892..c0004925
  DW_CFA_advance_loc: 1 to c0004893
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004895
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 143 to c0004924
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000714 0000001c 00000718 FDE cie=00000000 pc=c0004925..c00049df
  DW_CFA_advance_loc: 1 to c0004926
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004928
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 182 to c00049de
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000734 0000001c 00000738 FDE cie=00000000 pc=c00049df..c0004a43
  DW_CFA_advance_loc: 1 to c00049e0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00049e2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 96 to c0004a42
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000754 0000001c 00000758 FDE cie=00000000 pc=c0004a43..c0004a7f
  DW_CFA_advance_loc: 1 to c0004a44
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004a46
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 56 to c0004a7e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000774 0000001c 00000778 FDE cie=00000000 pc=c0004a7f..c0004b05
  DW_CFA_advance_loc: 1 to c0004a80
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004a82
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 130 to c0004b04
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000794 0000001c 00000798 FDE cie=00000000 pc=c0004b05..c0004b4c
  DW_CFA_advance_loc: 1 to c0004b06
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004b08
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 67 to c0004b4b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000007b4 0000001c 000007b8 FDE cie=00000000 pc=c0004b4c..c0004b64
  DW_CFA_advance_loc: 1 to c0004b4d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004b4f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 20 to c0004b63
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000007d4 0000001c 000007d8 FDE cie=00000000 pc=c0004b64..c0004c7d
  DW_CFA_advance_loc: 1 to c0004b65
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004b67
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 277 to c0004c7c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000007f4 0000001c 000007f8 FDE cie=00000000 pc=c0004c7d..c0004d1b
  DW_CFA_advance_loc: 1 to c0004c7e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004c80
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 154 to c0004d1a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000814 0000001c 00000818 FDE cie=00000000 pc=c0004d1b..c0004d80
  DW_CFA_advance_loc: 1 to c0004d1c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004d1e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 97 to c0004d7f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000834 0000001c 00000838 FDE cie=00000000 pc=c0004d80..c0004e56
  DW_CFA_advance_loc: 1 to c0004d81
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004d83
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 210 to c0004e55
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000854 0000001c 00000858 FDE cie=00000000 pc=c0004e56..c0004f3a
  DW_CFA_advance_loc: 1 to c0004e57
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004e59
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 224 to c0004f39
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000874 0000001c 00000878 FDE cie=00000000 pc=c0004f3a..c0004f4d
  DW_CFA_advance_loc: 1 to c0004f3b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004f3d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c0004f4c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000894 0000001c 00000898 FDE cie=00000000 pc=c0004f4d..c0004f74
  DW_CFA_advance_loc: 1 to c0004f4e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004f50
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 35 to c0004f73
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008b4 0000001c 000008b8 FDE cie=00000000 pc=c0004f95..c0004fbf
  DW_CFA_advance_loc: 1 to c0004f96
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004f98
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 38 to c0004fbe
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008d4 0000001c 000008d8 FDE cie=00000000 pc=c0004fbf..c0004fe1
  DW_CFA_advance_loc: 1 to c0004fc0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004fc2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 30 to c0004fe0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008f4 0000001c 000008f8 FDE cie=00000000 pc=c0004fe1..c0005112
  DW_CFA_advance_loc: 1 to c0004fe2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004fe4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 301 to c0005111
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000914 0000001c 00000918 FDE cie=00000000 pc=c0005112..c000516b
  DW_CFA_advance_loc: 1 to c0005113
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005115
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 85 to c000516a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000934 0000001c 00000938 FDE cie=00000000 pc=c000516b..c00051c1
  DW_CFA_advance_loc: 1 to c000516c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000516e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 82 to c00051c0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000954 0000001c 00000958 FDE cie=00000000 pc=c00051c1..c000520c
  DW_CFA_advance_loc: 1 to c00051c2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00051c4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 71 to c000520b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000974 0000001c 00000978 FDE cie=00000000 pc=c000520c..c00052a4
  DW_CFA_advance_loc: 1 to c000520d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000520f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 148 to c00052a3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000994 0000001c 00000998 FDE cie=00000000 pc=c00052a4..c0005327
  DW_CFA_advance_loc: 1 to c00052a5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00052a7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 127 to c0005326
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000009b4 0000001c 000009b8 FDE cie=00000000 pc=c0005327..c000533b
  DW_CFA_advance_loc: 1 to c0005328
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000532a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c000533a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000009d4 0000001c 000009d8 FDE cie=00000000 pc=c000533b..c0005366
  DW_CFA_advance_loc: 1 to c000533c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000533e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 39 to c0005365
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000009f4 0000001c 000009f8 FDE cie=00000000 pc=c0005366..c0005398
  DW_CFA_advance_loc: 1 to c0005367
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005369
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 46 to c0005397
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a14 0000001c 00000a18 FDE cie=00000000 pc=c0005398..c00053c3
  DW_CFA_advance_loc: 1 to c0005399
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000539b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 39 to c00053c2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a34 0000001c 00000a38 FDE cie=00000000 pc=c00053c3..c00053e2
  DW_CFA_advance_loc: 1 to c00053c4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00053c6
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 27 to c00053e1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a54 0000001c 00000a58 FDE cie=00000000 pc=c00053e2..c00054af
  DW_CFA_advance_loc: 1 to c00053e3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00053e5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 201 to c00054ae
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000a74 0000001c 00000a78 FDE cie=00000000 pc=c00054af..c00056ed
  DW_CFA_advance_loc: 1 to c00054b0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00054b2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 570 to c00056ec
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000a94 0000001c 00000a98 FDE cie=00000000 pc=c00056ed..c000573f
  DW_CFA_advance_loc: 1 to c00056ee
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00056f0
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 78 to c000573e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000ab4 00000018 00000ab8 FDE cie=00000000 pc=c000573f..c0005783
  DW_CFA_advance_loc: 1 to c0005740
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005742
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000ad0 0000001c 00000ad4 FDE cie=00000000 pc=c0005783..c00057aa
  DW_CFA_advance_loc: 1 to c0005784
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005786
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 35 to c00057a9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000af0 0000001c 00000af4 FDE cie=00000000 pc=c00057aa..c000580b
  DW_CFA_advance_loc: 1 to c00057ab
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00057ad
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 93 to c000580a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b10 0000001c 00000b14 FDE cie=00000000 pc=c000580b..c0005857
  DW_CFA_advance_loc: 1 to c000580c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000580e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 72 to c0005856
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b30 0000001c 00000b34 FDE cie=00000000 pc=c0005857..c0005893
  DW_CFA_advance_loc: 1 to c0005858
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000585a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 54 to c0005890
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000b50 0000001c 00000b54 FDE cie=00000000 pc=c0005893..c00058f2
  DW_CFA_advance_loc: 1 to c0005894
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005896
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 91 to c00058f1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b70 0000001c 00000b74 FDE cie=00000000 pc=c00058f2..c000594f
  DW_CFA_advance_loc: 1 to c00058f3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00058f5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 89 to c000594e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b90 0000001c 00000b94 FDE cie=00000000 pc=c000594f..c000599a
  DW_CFA_advance_loc: 1 to c0005950
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005952
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 71 to c0005999
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000bb0 0000001c 00000bb4 FDE cie=00000000 pc=c000599a..c00059bb
  DW_CFA_advance_loc: 1 to c000599b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000599d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 29 to c00059ba
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000bd0 0000001c 00000bd4 FDE cie=00000000 pc=c00059bb..c00059cd
  DW_CFA_advance_loc: 1 to c00059bc
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00059be
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 14 to c00059cc
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000bf0 00000020 00000bf4 FDE cie=00000000 pc=c00059cd..c0005ada
  DW_CFA_advance_loc: 1 to c00059ce
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00059d0
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c00059d4
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc2: 261 to c0005ad9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_restore: r3 (ebx)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000c14 0000001c 00000c18 FDE cie=00000000 pc=c0005ada..c0005b39
  DW_CFA_advance_loc: 1 to c0005adb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005add
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 89 to c0005b36
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000c34 00000020 00000c38 FDE cie=00000000 pc=c0005b39..c0005b82
  DW_CFA_advance_loc: 1 to c0005b3a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005b3c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005b40
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 64 to c0005b80
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0005b81
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000c58 0000001c 00000c5c FDE cie=00000000 pc=c0005b82..c0005bd1
  DW_CFA_advance_loc: 1 to c0005b83
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005b85
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 75 to c0005bd0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000c78 0000001c 00000c7c FDE cie=00000000 pc=c0005bd1..c0005d08
  DW_CFA_advance_loc: 1 to c0005bd2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005bd4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 307 to c0005d07
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000c98 00000018 00000c9c FDE cie=00000000 pc=c0005d08..c0005d90
  DW_CFA_advance_loc: 1 to c0005d09
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005d0b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000cb4 0000001c 00000cb8 FDE cie=00000000 pc=c0005d90..c0005e1b
  DW_CFA_advance_loc: 1 to c0005d91
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005d93
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 135 to c0005e1a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000cd4 0000001c 00000cd8 FDE cie=00000000 pc=c0005e1b..c0005e48
  DW_CFA_advance_loc: 1 to c0005e1c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005e1e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 41 to c0005e47
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000cf4 0000001c 00000cf8 FDE cie=00000000 pc=c0005e48..c0005e58
  DW_CFA_advance_loc: 1 to c0005e49
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005e4b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 12 to c0005e57
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d14 0000001c 00000d18 FDE cie=00000000 pc=c0005e58..c0005e76
  DW_CFA_advance_loc: 1 to c0005e59
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005e5b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 26 to c0005e75
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d34 0000001c 00000d38 FDE cie=00000000 pc=c0005e76..c0005ead
  DW_CFA_advance_loc: 1 to c0005e77
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005e79
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 51 to c0005eac
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d54 0000001c 00000d58 FDE cie=00000000 pc=c0005ead..c0005fb2
  DW_CFA_advance_loc: 1 to c0005eae
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005eb0
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 257 to c0005fb1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000d74 00000020 00000d78 FDE cie=00000000 pc=c0005fb2..c000608a
  DW_CFA_advance_loc: 1 to c0005fb3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005fb5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005fb9
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 207 to c0006088
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0006089
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000d98 0000001c 00000d9c FDE cie=00000000 pc=c000608a..c000612a
  DW_CFA_advance_loc: 1 to c000608b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000608d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 156 to c0006129
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000db8 00000020 00000dbc FDE cie=00000000 pc=c000612a..c000620f
  DW_CFA_advance_loc: 1 to c000612b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000612d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0006131
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 220 to c000620d
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c000620e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000ddc 0000001c 00000de0 FDE cie=00000000 pc=c000620f..c0006224
  DW_CFA_advance_loc: 1 to c0006210
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006212
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 17 to c0006223
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000dfc 0000001c 00000e00 FDE cie=00000000 pc=c0006224..c000623c
  DW_CFA_advance_loc: 1 to c0006225
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006227
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 20 to c000623b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e1c 0000001c 00000e20 FDE cie=00000000 pc=c000623c..c0006252
  DW_CFA_advance_loc: 1 to c000623d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000623f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 18 to c0006251
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e3c 0000001c 00000e40 FDE cie=00000000 pc=c0006252..c0006271
  DW_CFA_advance_loc: 1 to c0006253
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006255
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 27 to c0006270
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e5c 00000024 00000e60 FDE cie=00000000 pc=c0006271..c00062a4
  DW_CFA_advance_loc: 1 to c0006272
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006274
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0006279
  DW_CFA_offset: r7 (edi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc: 40 to c00062a1
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00062a2
  DW_CFA_restore: r7 (edi)
  DW_CFA_advance_loc: 1 to c00062a3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000e84 0000001c 00000e88 FDE cie=00000000 pc=c00062a4..c00062bb
  DW_CFA_advance_loc: 1 to c00062a5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00062a7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 19 to c00062ba
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000ea4 00000024 00000ea8 FDE cie=00000000 pc=c00062bb..c00062ee
  DW_CFA_advance_loc: 1 to c00062bc
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00062be
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c00062c3
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc: 40 to c00062eb
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00062ec
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c00062ed
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000ecc 0000001c 00000ed0 FDE cie=00000000 pc=c00062ee..c0006406
  DW_CFA_advance_loc: 1 to c00062ef
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00062f1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 276 to c0006405
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000eec 0000001c 00000ef0 FDE cie=00000000 pc=c0006406..c0006443
  DW_CFA_advance_loc: 1 to c0006407
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006409
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 57 to c0006442
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000f0c 0000001c 00000f10 FDE cie=00000000 pc=c0006443..c0006531
  DW_CFA_advance_loc: 1 to c0006444
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006446
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 234 to c0006530
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f2c 0000001c 00000f30 FDE cie=00000000 pc=c0006531..c0006585
  DW_CFA_advance_loc: 1 to c0006532
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006534
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 80 to c0006584
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f4c 0000001c 00000f50 FDE cie=00000000 pc=c0006585..c00065c4
  DW_CFA_advance_loc: 1 to c0006586
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006588
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 59 to c00065c3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000f6c 0000001c 00000f70 FDE cie=00000000 pc=c00065c4..c00066a8
  DW_CFA_advance_loc: 1 to c00065c5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00065c7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 224 to c00066a7
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f8c 0000001c 00000f90 FDE cie=00000000 pc=c00066a8..c0006787
  DW_CFA_advance_loc: 1 to c00066a9
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00066ab
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 219 to c0006786
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000fac 0000001c 00000fb0 FDE cie=00000000 pc=c0006787..c00067f3
  DW_CFA_advance_loc: 1 to c0006788
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000678a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 104 to c00067f2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000fcc 0000001c 00000fd0 FDE cie=00000000 pc=c00067f3..c00068f9
  DW_CFA_advance_loc: 1 to c00067f4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00067f6
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 258 to c00068f8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000fec 0000001c 00000ff0 FDE cie=00000000 pc=c00068f9..c000692f
  DW_CFA_advance_loc: 1 to c00068fa
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00068fc
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 50 to c000692e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

0000100c 00000024 00001010 FDE cie=00000000 pc=c000692f..c0006aec
  DW_CFA_advance_loc: 1 to c0006930
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006932
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 7 to c0006939
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc2: 433 to c0006aea
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0006aeb
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00001034 0000001c 00001038 FDE cie=00000000 pc=c0006aec..c0006cc3
  DW_CFA_advance_loc: 1 to c0006aed
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006aef
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 467 to c0006cc2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00001054 0000001c 00001058 FDE cie=00000000 pc=c0006cc3..c0006d72
  DW_CFA_advance_loc: 1 to c0006cc4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006cc6
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 171 to c0006d71
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001074 0000001c 00001078 FDE cie=00000000 pc=c0006d72..c0006dd5
  DW_CFA_advance_loc: 1 to c0006d73
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006d75
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 95 to c0006dd4
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001094 0000001c 00001098 FDE cie=00000000 pc=c0006dd5..c0006e09
  DW_CFA_advance_loc: 1 to c0006dd6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006dd8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c0006e08
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

