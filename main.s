
Disassembly of section .text:

c0001500 <main>:
c0001500:	55                   	push   %ebp
c0001501:	89 e5                	mov    %esp,%ebp
c0001503:	83 e4 f0             	and    $0xfffffff0,%esp
c0001506:	83 ec 10             	sub    $0x10,%esp
c0001509:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
c0001510:	e8 cc 1f 00 00       	call   c00034e1 <set_cursor>
c0001515:	e8 4c 20 00 00       	call   c0003566 <int_disable>
c000151a:	e8 91 04 00 00       	call   c00019b0 <init_int>
c000151f:	c7 04 24 ac 6f 00 c0 	movl   $0xc0006fac,(%esp)
c0001526:	e8 da 1f 00 00       	call   c0003505 <put_str>
c000152b:	e8 77 2e 00 00       	call   c00043a7 <init_pool>
c0001530:	c7 04 24 b8 6f 00 c0 	movl   $0xc0006fb8,(%esp)
c0001537:	e8 c9 1f 00 00       	call   c0003505 <put_str>
c000153c:	e8 3f 35 00 00       	call   c0004a80 <init_thread_list>
c0001541:	c7 04 24 c4 6f 00 c0 	movl   $0xc0006fc4,(%esp)
c0001548:	e8 b8 1f 00 00       	call   c0003505 <put_str>
c000154d:	e8 61 3e 00 00       	call   c00053b3 <init_console>
c0001552:	c7 04 24 d2 6f 00 c0 	movl   $0xc0006fd2,(%esp)
c0001559:	e8 a7 1f 00 00       	call   c0003505 <put_str>
c000155e:	e8 0b 3f 00 00       	call   c000546e <init_keyboard>
c0001563:	c7 04 24 e1 6f 00 c0 	movl   $0xc0006fe1,(%esp)
c000156a:	e8 96 1f 00 00       	call   c0003505 <put_str>
c000156f:	e8 f0 44 00 00       	call   c0005a64 <init_proc_data>
c0001574:	c7 04 24 f1 6f 00 c0 	movl   $0xc0006ff1,(%esp)
c000157b:	e8 47 3e 00 00       	call   c00053c7 <console_put_str>
c0001580:	c7 04 24 20 a7 00 c0 	movl   $0xc000a720,(%esp)
c0001587:	e8 09 2b 00 00       	call   c0004095 <mem_decs_init>
c000158c:	c7 04 24 fd 6f 00 c0 	movl   $0xc0006ffd,(%esp)
c0001593:	e8 2f 3e 00 00       	call   c00053c7 <console_put_str>
c0001598:	e8 76 59 00 00       	call   c0006f13 <ide_init>
c000159d:	e8 b0 1f 00 00       	call   c0003552 <int_enable>
c00015a2:	b8 00 00 00 00       	mov    $0x0,%eax
c00015a7:	c9                   	leave  
c00015a8:	c3                   	ret    

c00015a9 <print>:
c00015a9:	55                   	push   %ebp
c00015aa:	89 e5                	mov    %esp,%ebp
c00015ac:	83 ec 28             	sub    $0x28,%esp
c00015af:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c00015b6:	e8 76 4d 00 00       	call   c0006331 <malloc>
c00015bb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00015be:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00015c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00015c5:	c7 04 24 08 70 00 c0 	movl   $0xc0007008,(%esp)
c00015cc:	e8 3c 49 00 00       	call   c0005f0d <printf>
c00015d1:	c9                   	leave  
c00015d2:	c3                   	ret    

c00015d3 <write_port>:
c00015d3:	55                   	push   %ebp
c00015d4:	89 e5                	mov    %esp,%ebp
c00015d6:	83 ec 04             	sub    $0x4,%esp
c00015d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00015dc:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00015e0:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c00015e4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00015e7:	ee                   	out    %al,(%dx)
c00015e8:	c9                   	leave  
c00015e9:	c3                   	ret    

c00015ea <gernal_handle>:
c00015ea:	55                   	push   %ebp
c00015eb:	89 e5                	mov    %esp,%ebp
c00015ed:	83 ec 18             	sub    $0x18,%esp
c00015f0:	fa                   	cli    
c00015f1:	83 7d 08 27          	cmpl   $0x27,0x8(%ebp)
c00015f5:	74 30                	je     c0001627 <gernal_handle+0x3d>
c00015f7:	83 7d 08 2f          	cmpl   $0x2f,0x8(%ebp)
c00015fb:	74 2a                	je     c0001627 <gernal_handle+0x3d>
c00015fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0001600:	8b 04 85 e0 a7 00 c0 	mov    -0x3fff5820(,%eax,4),%eax
c0001607:	89 04 24             	mov    %eax,(%esp)
c000160a:	e8 f6 1e 00 00       	call   c0003505 <put_str>
c000160f:	8b 45 08             	mov    0x8(%ebp),%eax
c0001612:	89 04 24             	mov    %eax,(%esp)
c0001615:	e8 49 1e 00 00       	call   c0003463 <put_int>
c000161a:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0001621:	e8 5a 1d 00 00       	call   c0003380 <put_char>
c0001626:	f4                   	hlt    
c0001627:	90                   	nop
c0001628:	c9                   	leave  
c0001629:	c3                   	ret    

c000162a <handle_clock_intr>:
c000162a:	55                   	push   %ebp
c000162b:	89 e5                	mov    %esp,%ebp
c000162d:	83 ec 28             	sub    $0x28,%esp
c0001630:	e8 31 1f 00 00       	call   c0003566 <int_disable>
c0001635:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0001638:	e8 cb 2f 00 00       	call   c0004608 <get_running>
c000163d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0001640:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001643:	8b 40 2c             	mov    0x2c(%eax),%eax
c0001646:	8d 50 ff             	lea    -0x1(%eax),%edx
c0001649:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000164c:	89 50 2c             	mov    %edx,0x2c(%eax)
c000164f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001652:	8b 40 34             	mov    0x34(%eax),%eax
c0001655:	8d 50 01             	lea    0x1(%eax),%edx
c0001658:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000165b:	89 50 34             	mov    %edx,0x34(%eax)
c000165e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001661:	8b 40 2c             	mov    0x2c(%eax),%eax
c0001664:	85 c0                	test   %eax,%eax
c0001666:	75 11                	jne    c0001679 <handle_clock_intr+0x4f>
c0001668:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000166b:	8b 50 30             	mov    0x30(%eax),%edx
c000166e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0001671:	89 50 2c             	mov    %edx,0x2c(%eax)
c0001674:	e8 a4 2f 00 00       	call   c000461d <schedule>
c0001679:	a1 08 ae 00 c0       	mov    0xc000ae08,%eax
c000167e:	83 c0 01             	add    $0x1,%eax
c0001681:	a3 08 ae 00 c0       	mov    %eax,0xc000ae08
c0001686:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0001689:	89 04 24             	mov    %eax,(%esp)
c000168c:	e8 e9 1e 00 00       	call   c000357a <set_int_status>
c0001691:	c9                   	leave  
c0001692:	c3                   	ret    

c0001693 <idt_table_init>:
c0001693:	55                   	push   %ebp
c0001694:	89 e5                	mov    %esp,%ebp
c0001696:	83 ec 10             	sub    $0x10,%esp
c0001699:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00016a0:	eb 20                	jmp    c00016c2 <idt_table_init+0x2f>
c00016a2:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00016a5:	c7 04 85 20 ae 00 c0 	movl   $0xc00015ea,-0x3fff51e0(,%eax,4)
c00016ac:	ea 15 00 c0 
c00016b0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00016b3:	c7 04 85 e0 a7 00 c0 	movl   $0xc000701c,-0x3fff5820(,%eax,4)
c00016ba:	1c 70 00 c0 
c00016be:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c00016c2:	81 7d fc 81 00 00 00 	cmpl   $0x81,-0x4(%ebp)
c00016c9:	7e d7                	jle    c00016a2 <idt_table_init+0xf>
c00016cb:	c7 05 a0 ae 00 c0 2a 	movl   $0xc000162a,0xc000aea0
c00016d2:	16 00 c0 
c00016d5:	c7 05 a4 ae 00 c0 3b 	movl   $0xc000553b,0xc000aea4
c00016dc:	55 00 c0 
c00016df:	c7 05 e0 a7 00 c0 27 	movl   $0xc0007027,0xc000a7e0
c00016e6:	70 00 c0 
c00016e9:	c7 05 e4 a7 00 c0 38 	movl   $0xc0007038,0xc000a7e4
c00016f0:	70 00 c0 
c00016f3:	c7 05 ec a7 00 c0 42 	movl   $0xc0007042,0xc000a7ec
c00016fa:	70 00 c0 
c00016fd:	c7 05 f0 a7 00 c0 52 	movl   $0xc0007052,0xc000a7f0
c0001704:	70 00 c0 
c0001707:	c7 05 f4 a7 00 c0 5f 	movl   $0xc000705f,0xc000a7f4
c000170e:	70 00 c0 
c0001711:	c7 05 f8 a7 00 c0 78 	movl   $0xc0007078,0xc000a7f8
c0001718:	70 00 c0 
c000171b:	c7 05 fc a7 00 c0 8b 	movl   $0xc000708b,0xc000a7fc
c0001722:	70 00 c0 
c0001725:	c7 05 00 a8 00 c0 a4 	movl   $0xc00070a4,0xc000a800
c000172c:	70 00 c0 
c000172f:	c7 05 08 a8 00 c0 b5 	movl   $0xc00070b5,0xc000a808
c0001736:	70 00 c0 
c0001739:	c7 05 0c a8 00 c0 c5 	movl   $0xc00070c5,0xc000a80c
c0001740:	70 00 c0 
c0001743:	c7 05 10 a8 00 c0 dd 	movl   $0xc00070dd,0xc000a810
c000174a:	70 00 c0 
c000174d:	c7 05 14 a8 00 c0 f5 	movl   $0xc00070f5,0xc000a814
c0001754:	70 00 c0 
c0001757:	c7 05 18 a8 00 c0 0c 	movl   $0xc000710c,0xc000a818
c000175e:	71 00 c0 
c0001761:	c7 05 20 a8 00 c0 1c 	movl   $0xc000711c,0xc000a820
c0001768:	71 00 c0 
c000176b:	c7 05 24 a8 00 c0 4a 	movl   $0xc000714a,0xc000a824
c0001772:	71 00 c0 
c0001775:	c7 05 28 a8 00 c0 5e 	movl   $0xc000715e,0xc000a828
c000177c:	71 00 c0 
c000177f:	c7 05 2c a8 00 c0 70 	movl   $0xc0007170,0xc000a82c
c0001786:	71 00 c0 
c0001789:	c7 05 30 a8 00 c0 92 	movl   $0xc0007192,0xc000a830
c0001790:	71 00 c0 
c0001793:	90                   	nop
c0001794:	c9                   	leave  
c0001795:	c3                   	ret    

c0001796 <register_int>:
c0001796:	55                   	push   %ebp
c0001797:	89 e5                	mov    %esp,%ebp
c0001799:	8b 45 08             	mov    0x8(%ebp),%eax
c000179c:	8b 55 0c             	mov    0xc(%ebp),%edx
c000179f:	89 14 85 20 ae 00 c0 	mov    %edx,-0x3fff51e0(,%eax,4)
c00017a6:	5d                   	pop    %ebp
c00017a7:	c3                   	ret    

c00017a8 <make_idt_entry>:
c00017a8:	55                   	push   %ebp
c00017a9:	89 e5                	mov    %esp,%ebp
c00017ab:	8b 45 0c             	mov    0xc(%ebp),%eax
c00017ae:	c1 e8 10             	shr    $0x10,%eax
c00017b1:	89 c2                	mov    %eax,%edx
c00017b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00017b6:	66 89 50 06          	mov    %dx,0x6(%eax)
c00017ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00017bd:	c6 40 05 ee          	movb   $0xee,0x5(%eax)
c00017c1:	8b 45 08             	mov    0x8(%ebp),%eax
c00017c4:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00017c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00017cb:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c00017d1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00017d4:	89 c2                	mov    %eax,%edx
c00017d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00017d9:	66 89 10             	mov    %dx,(%eax)
c00017dc:	90                   	nop
c00017dd:	5d                   	pop    %ebp
c00017de:	c3                   	ret    

c00017df <init_int_des>:
c00017df:	55                   	push   %ebp
c00017e0:	89 e5                	mov    %esp,%ebp
c00017e2:	83 ec 18             	sub    $0x18,%esp
c00017e5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00017ec:	eb 26                	jmp    c0001814 <init_int_des+0x35>
c00017ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00017f1:	8b 04 85 00 a0 00 c0 	mov    -0x3fff6000(,%eax,4),%eax
c00017f8:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00017fb:	c1 e2 03             	shl    $0x3,%edx
c00017fe:	81 c2 00 aa 00 c0    	add    $0xc000aa00,%edx
c0001804:	89 44 24 04          	mov    %eax,0x4(%esp)
c0001808:	89 14 24             	mov    %edx,(%esp)
c000180b:	e8 98 ff ff ff       	call   c00017a8 <make_idt_entry>
c0001810:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0001814:	81 7d fc 81 00 00 00 	cmpl   $0x81,-0x4(%ebp)
c000181b:	7e d1                	jle    c00017ee <init_int_des+0xf>
c000181d:	90                   	nop
c000181e:	c9                   	leave  
c000181f:	c3                   	ret    

c0001820 <init_pic>:
c0001820:	55                   	push   %ebp
c0001821:	89 e5                	mov    %esp,%ebp
c0001823:	83 ec 08             	sub    $0x8,%esp
c0001826:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c000182d:	00 
c000182e:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0001835:	e8 99 fd ff ff       	call   c00015d3 <write_port>
c000183a:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0001841:	00 
c0001842:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0001849:	e8 85 fd ff ff       	call   c00015d3 <write_port>
c000184e:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0001855:	00 
c0001856:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c000185d:	e8 71 fd ff ff       	call   c00015d3 <write_port>
c0001862:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0001869:	00 
c000186a:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0001871:	e8 5d fd ff ff       	call   c00015d3 <write_port>
c0001876:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c000187d:	00 
c000187e:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c0001885:	e8 49 fd ff ff       	call   c00015d3 <write_port>
c000188a:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
c0001891:	00 
c0001892:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c0001899:	e8 35 fd ff ff       	call   c00015d3 <write_port>
c000189e:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
c00018a5:	00 
c00018a6:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c00018ad:	e8 21 fd ff ff       	call   c00015d3 <write_port>
c00018b2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00018b9:	00 
c00018ba:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c00018c1:	e8 0d fd ff ff       	call   c00015d3 <write_port>
c00018c6:	c7 44 24 04 f8 00 00 	movl   $0xf8,0x4(%esp)
c00018cd:	00 
c00018ce:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c00018d5:	e8 f9 fc ff ff       	call   c00015d3 <write_port>
c00018da:	c7 44 24 04 bf 00 00 	movl   $0xbf,0x4(%esp)
c00018e1:	00 
c00018e2:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c00018e9:	e8 e5 fc ff ff       	call   c00015d3 <write_port>
c00018ee:	90                   	nop
c00018ef:	c9                   	leave  
c00018f0:	c3                   	ret    

c00018f1 <init_timer>:
c00018f1:	55                   	push   %ebp
c00018f2:	89 e5                	mov    %esp,%ebp
c00018f4:	83 ec 1c             	sub    $0x1c,%esp
c00018f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00018fa:	88 45 ec             	mov    %al,-0x14(%ebp)
c00018fd:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c0001901:	89 44 24 04          	mov    %eax,0x4(%esp)
c0001905:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
c000190c:	e8 c2 fc ff ff       	call   c00015d3 <write_port>
c0001911:	66 c7 45 fe a9 04    	movw   $0x4a9,-0x2(%ebp)
c0001917:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c000191b:	0f b6 c0             	movzbl %al,%eax
c000191e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0001922:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c0001929:	e8 a5 fc ff ff       	call   c00015d3 <write_port>
c000192e:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
c0001932:	66 c1 e8 08          	shr    $0x8,%ax
c0001936:	0f b6 c0             	movzbl %al,%eax
c0001939:	89 44 24 04          	mov    %eax,0x4(%esp)
c000193d:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c0001944:	e8 8a fc ff ff       	call   c00015d3 <write_port>
c0001949:	90                   	nop
c000194a:	c9                   	leave  
c000194b:	c3                   	ret    

c000194c <mtime_sleep>:
c000194c:	55                   	push   %ebp
c000194d:	89 e5                	mov    %esp,%ebp
c000194f:	83 ec 28             	sub    $0x28,%esp
c0001952:	a1 08 ae 00 c0       	mov    0xc000ae08,%eax
c0001957:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000195a:	8b 45 08             	mov    0x8(%ebp),%eax
c000195d:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
c0001963:	83 e8 01             	sub    $0x1,%eax
c0001966:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
c000196b:	f7 e2                	mul    %edx
c000196d:	89 d0                	mov    %edx,%eax
c000196f:	c1 e8 06             	shr    $0x6,%eax
c0001972:	83 c0 01             	add    $0x1,%eax
c0001975:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0001978:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000197b:	89 44 24 04          	mov    %eax,0x4(%esp)
c000197f:	c7 04 24 af 71 00 c0 	movl   $0xc00071af,(%esp)
c0001986:	e8 eb 55 00 00       	call   c0006f76 <__printk>
c000198b:	8b 55 f0             	mov    -0x10(%ebp),%edx
c000198e:	89 d0                	mov    %edx,%eax
c0001990:	c1 e0 02             	shl    $0x2,%eax
c0001993:	01 d0                	add    %edx,%eax
c0001995:	01 c0                	add    %eax,%eax
c0001997:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000199a:	eb 05                	jmp    c00019a1 <mtime_sleep+0x55>
c000199c:	e8 72 31 00 00       	call   c0004b13 <thread_yield>
c00019a1:	a1 08 ae 00 c0       	mov    0xc000ae08,%eax
c00019a6:	2b 45 f4             	sub    -0xc(%ebp),%eax
c00019a9:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c00019ac:	72 ee                	jb     c000199c <mtime_sleep+0x50>
c00019ae:	c9                   	leave  
c00019af:	c3                   	ret    

c00019b0 <init_int>:
c00019b0:	55                   	push   %ebp
c00019b1:	89 e5                	mov    %esp,%ebp
c00019b3:	56                   	push   %esi
c00019b4:	53                   	push   %ebx
c00019b5:	83 ec 20             	sub    $0x20,%esp
c00019b8:	e8 ab 14 00 00       	call   c0002e68 <int_entry_fill>
c00019bd:	e8 1d fe ff ff       	call   c00017df <init_int_des>
c00019c2:	e8 59 fe ff ff       	call   c0001820 <init_pic>
c00019c7:	e8 c7 fc ff ff       	call   c0001693 <idt_table_init>
c00019cc:	e8 e1 44 00 00       	call   c0005eb2 <syscall_table_init>
c00019d1:	c7 04 24 34 00 00 00 	movl   $0x34,(%esp)
c00019d8:	e8 14 ff ff ff       	call   c00018f1 <init_timer>
c00019dd:	b8 00 aa 00 c0       	mov    $0xc000aa00,%eax
c00019e2:	ba 00 00 00 00       	mov    $0x0,%edx
c00019e7:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c00019eb:	c1 e0 10             	shl    $0x10,%eax
c00019ee:	89 c1                	mov    %eax,%ecx
c00019f0:	81 c9 07 04 00 00    	or     $0x407,%ecx
c00019f6:	89 cb                	mov    %ecx,%ebx
c00019f8:	89 d0                	mov    %edx,%eax
c00019fa:	80 cc 00             	or     $0x0,%ah
c00019fd:	89 c6                	mov    %eax,%esi
c00019ff:	89 5d f0             	mov    %ebx,-0x10(%ebp)
c0001a02:	89 75 f4             	mov    %esi,-0xc(%ebp)
c0001a05:	0f 01 5d f0          	lidtl  -0x10(%ebp)
c0001a09:	c7 05 08 ae 00 c0 00 	movl   $0x0,0xc000ae08
c0001a10:	00 00 00 
c0001a13:	90                   	nop
c0001a14:	83 c4 20             	add    $0x20,%esp
c0001a17:	5b                   	pop    %ebx
c0001a18:	5e                   	pop    %esi
c0001a19:	5d                   	pop    %ebp
c0001a1a:	c3                   	ret    
c0001a1b:	66 90                	xchg   %ax,%ax
c0001a1d:	66 90                	xchg   %ax,%ax
c0001a1f:	90                   	nop

c0001a20 <int128_entry>:
c0001a20:	fa                   	cli    
c0001a21:	6a 00                	push   $0x0
c0001a23:	60                   	pusha  
c0001a24:	1e                   	push   %ds
c0001a25:	06                   	push   %es
c0001a26:	0f a0                	push   %fs
c0001a28:	0f a8                	push   %gs
c0001a2a:	66 b8 10 00          	mov    $0x10,%ax
c0001a2e:	8e d8                	mov    %eax,%ds
c0001a30:	8e c0                	mov    %eax,%es
c0001a32:	8e e0                	mov    %eax,%fs
c0001a34:	b0 20                	mov    $0x20,%al
c0001a36:	e6 20                	out    %al,$0x20
c0001a38:	e6 a0                	out    %al,$0xa0
c0001a3a:	68 80 00 00 00       	push   $0x80
c0001a3f:	8b 5c 24 44          	mov    0x44(%esp),%ebx
c0001a43:	ff 73 0c             	pushl  0xc(%ebx)
c0001a46:	ff 73 08             	pushl  0x8(%ebx)
c0001a49:	ff 73 04             	pushl  0x4(%ebx)
c0001a4c:	8b 33                	mov    (%ebx),%esi
c0001a4e:	c1 e6 02             	shl    $0x2,%esi
c0001a51:	fb                   	sti    
c0001a52:	ff 96 c0 b1 00 c0    	call   *-0x3fff4e40(%esi)
c0001a58:	83 c4 0c             	add    $0xc,%esp
c0001a5b:	89 44 24 30          	mov    %eax,0x30(%esp)
c0001a5f:	eb 00                	jmp    c0001a61 <exit_int>

c0001a61 <exit_int>:
c0001a61:	83 c4 04             	add    $0x4,%esp
c0001a64:	58                   	pop    %eax
c0001a65:	8e e8                	mov    %eax,%gs
c0001a67:	58                   	pop    %eax
c0001a68:	8e e0                	mov    %eax,%fs
c0001a6a:	58                   	pop    %eax
c0001a6b:	8e c0                	mov    %eax,%es
c0001a6d:	58                   	pop    %eax
c0001a6e:	8e d8                	mov    %eax,%ds
c0001a70:	61                   	popa   
c0001a71:	83 c4 04             	add    $0x4,%esp
c0001a74:	cf                   	iret   

c0001a75 <int0_entry>:
c0001a75:	fa                   	cli    
c0001a76:	6a 00                	push   $0x0
c0001a78:	60                   	pusha  
c0001a79:	1e                   	push   %ds
c0001a7a:	06                   	push   %es
c0001a7b:	0f a0                	push   %fs
c0001a7d:	0f a8                	push   %gs
c0001a7f:	66 b8 10 00          	mov    $0x10,%ax
c0001a83:	8e d8                	mov    %eax,%ds
c0001a85:	8e c0                	mov    %eax,%es
c0001a87:	8e e0                	mov    %eax,%fs
c0001a89:	b0 20                	mov    $0x20,%al
c0001a8b:	e6 20                	out    %al,$0x20
c0001a8d:	e6 a0                	out    %al,$0xa0
c0001a8f:	6a 00                	push   $0x0
c0001a91:	fb                   	sti    
c0001a92:	ff 15 20 ae 00 c0    	call   *0xc000ae20
c0001a98:	eb c7                	jmp    c0001a61 <exit_int>

c0001a9a <int1_entry>:
c0001a9a:	fa                   	cli    
c0001a9b:	6a 00                	push   $0x0
c0001a9d:	60                   	pusha  
c0001a9e:	1e                   	push   %ds
c0001a9f:	06                   	push   %es
c0001aa0:	0f a0                	push   %fs
c0001aa2:	0f a8                	push   %gs
c0001aa4:	66 b8 10 00          	mov    $0x10,%ax
c0001aa8:	8e d8                	mov    %eax,%ds
c0001aaa:	8e c0                	mov    %eax,%es
c0001aac:	8e e0                	mov    %eax,%fs
c0001aae:	b0 20                	mov    $0x20,%al
c0001ab0:	e6 20                	out    %al,$0x20
c0001ab2:	e6 a0                	out    %al,$0xa0
c0001ab4:	6a 01                	push   $0x1
c0001ab6:	fb                   	sti    
c0001ab7:	ff 15 24 ae 00 c0    	call   *0xc000ae24
c0001abd:	eb a2                	jmp    c0001a61 <exit_int>

c0001abf <int2_entry>:
c0001abf:	fa                   	cli    
c0001ac0:	6a 00                	push   $0x0
c0001ac2:	60                   	pusha  
c0001ac3:	1e                   	push   %ds
c0001ac4:	06                   	push   %es
c0001ac5:	0f a0                	push   %fs
c0001ac7:	0f a8                	push   %gs
c0001ac9:	66 b8 10 00          	mov    $0x10,%ax
c0001acd:	8e d8                	mov    %eax,%ds
c0001acf:	8e c0                	mov    %eax,%es
c0001ad1:	8e e0                	mov    %eax,%fs
c0001ad3:	b0 20                	mov    $0x20,%al
c0001ad5:	e6 20                	out    %al,$0x20
c0001ad7:	e6 a0                	out    %al,$0xa0
c0001ad9:	6a 02                	push   $0x2
c0001adb:	fb                   	sti    
c0001adc:	ff 15 28 ae 00 c0    	call   *0xc000ae28
c0001ae2:	e9 7a ff ff ff       	jmp    c0001a61 <exit_int>

c0001ae7 <int3_entry>:
c0001ae7:	fa                   	cli    
c0001ae8:	6a 00                	push   $0x0
c0001aea:	60                   	pusha  
c0001aeb:	1e                   	push   %ds
c0001aec:	06                   	push   %es
c0001aed:	0f a0                	push   %fs
c0001aef:	0f a8                	push   %gs
c0001af1:	66 b8 10 00          	mov    $0x10,%ax
c0001af5:	8e d8                	mov    %eax,%ds
c0001af7:	8e c0                	mov    %eax,%es
c0001af9:	8e e0                	mov    %eax,%fs
c0001afb:	b0 20                	mov    $0x20,%al
c0001afd:	e6 20                	out    %al,$0x20
c0001aff:	e6 a0                	out    %al,$0xa0
c0001b01:	6a 03                	push   $0x3
c0001b03:	fb                   	sti    
c0001b04:	ff 15 2c ae 00 c0    	call   *0xc000ae2c
c0001b0a:	e9 52 ff ff ff       	jmp    c0001a61 <exit_int>

c0001b0f <int4_entry>:
c0001b0f:	fa                   	cli    
c0001b10:	6a 00                	push   $0x0
c0001b12:	60                   	pusha  
c0001b13:	1e                   	push   %ds
c0001b14:	06                   	push   %es
c0001b15:	0f a0                	push   %fs
c0001b17:	0f a8                	push   %gs
c0001b19:	66 b8 10 00          	mov    $0x10,%ax
c0001b1d:	8e d8                	mov    %eax,%ds
c0001b1f:	8e c0                	mov    %eax,%es
c0001b21:	8e e0                	mov    %eax,%fs
c0001b23:	b0 20                	mov    $0x20,%al
c0001b25:	e6 20                	out    %al,$0x20
c0001b27:	e6 a0                	out    %al,$0xa0
c0001b29:	6a 04                	push   $0x4
c0001b2b:	fb                   	sti    
c0001b2c:	ff 15 30 ae 00 c0    	call   *0xc000ae30
c0001b32:	e9 2a ff ff ff       	jmp    c0001a61 <exit_int>

c0001b37 <int5_entry>:
c0001b37:	fa                   	cli    
c0001b38:	6a 00                	push   $0x0
c0001b3a:	60                   	pusha  
c0001b3b:	1e                   	push   %ds
c0001b3c:	06                   	push   %es
c0001b3d:	0f a0                	push   %fs
c0001b3f:	0f a8                	push   %gs
c0001b41:	66 b8 10 00          	mov    $0x10,%ax
c0001b45:	8e d8                	mov    %eax,%ds
c0001b47:	8e c0                	mov    %eax,%es
c0001b49:	8e e0                	mov    %eax,%fs
c0001b4b:	b0 20                	mov    $0x20,%al
c0001b4d:	e6 20                	out    %al,$0x20
c0001b4f:	e6 a0                	out    %al,$0xa0
c0001b51:	6a 05                	push   $0x5
c0001b53:	fb                   	sti    
c0001b54:	ff 15 34 ae 00 c0    	call   *0xc000ae34
c0001b5a:	e9 02 ff ff ff       	jmp    c0001a61 <exit_int>

c0001b5f <int6_entry>:
c0001b5f:	fa                   	cli    
c0001b60:	6a 00                	push   $0x0
c0001b62:	60                   	pusha  
c0001b63:	1e                   	push   %ds
c0001b64:	06                   	push   %es
c0001b65:	0f a0                	push   %fs
c0001b67:	0f a8                	push   %gs
c0001b69:	66 b8 10 00          	mov    $0x10,%ax
c0001b6d:	8e d8                	mov    %eax,%ds
c0001b6f:	8e c0                	mov    %eax,%es
c0001b71:	8e e0                	mov    %eax,%fs
c0001b73:	b0 20                	mov    $0x20,%al
c0001b75:	e6 20                	out    %al,$0x20
c0001b77:	e6 a0                	out    %al,$0xa0
c0001b79:	6a 06                	push   $0x6
c0001b7b:	fb                   	sti    
c0001b7c:	ff 15 38 ae 00 c0    	call   *0xc000ae38
c0001b82:	e9 da fe ff ff       	jmp    c0001a61 <exit_int>

c0001b87 <int7_entry>:
c0001b87:	fa                   	cli    
c0001b88:	6a 00                	push   $0x0
c0001b8a:	60                   	pusha  
c0001b8b:	1e                   	push   %ds
c0001b8c:	06                   	push   %es
c0001b8d:	0f a0                	push   %fs
c0001b8f:	0f a8                	push   %gs
c0001b91:	66 b8 10 00          	mov    $0x10,%ax
c0001b95:	8e d8                	mov    %eax,%ds
c0001b97:	8e c0                	mov    %eax,%es
c0001b99:	8e e0                	mov    %eax,%fs
c0001b9b:	b0 20                	mov    $0x20,%al
c0001b9d:	e6 20                	out    %al,$0x20
c0001b9f:	e6 a0                	out    %al,$0xa0
c0001ba1:	6a 07                	push   $0x7
c0001ba3:	fb                   	sti    
c0001ba4:	ff 15 3c ae 00 c0    	call   *0xc000ae3c
c0001baa:	e9 b2 fe ff ff       	jmp    c0001a61 <exit_int>

c0001baf <int8_entry>:
c0001baf:	fa                   	cli    
c0001bb0:	90                   	nop
c0001bb1:	60                   	pusha  
c0001bb2:	1e                   	push   %ds
c0001bb3:	06                   	push   %es
c0001bb4:	0f a0                	push   %fs
c0001bb6:	0f a8                	push   %gs
c0001bb8:	66 b8 10 00          	mov    $0x10,%ax
c0001bbc:	8e d8                	mov    %eax,%ds
c0001bbe:	8e c0                	mov    %eax,%es
c0001bc0:	8e e0                	mov    %eax,%fs
c0001bc2:	b0 20                	mov    $0x20,%al
c0001bc4:	e6 20                	out    %al,$0x20
c0001bc6:	e6 a0                	out    %al,$0xa0
c0001bc8:	6a 08                	push   $0x8
c0001bca:	fb                   	sti    
c0001bcb:	ff 15 40 ae 00 c0    	call   *0xc000ae40
c0001bd1:	e9 8b fe ff ff       	jmp    c0001a61 <exit_int>

c0001bd6 <int9_entry>:
c0001bd6:	fa                   	cli    
c0001bd7:	6a 00                	push   $0x0
c0001bd9:	60                   	pusha  
c0001bda:	1e                   	push   %ds
c0001bdb:	06                   	push   %es
c0001bdc:	0f a0                	push   %fs
c0001bde:	0f a8                	push   %gs
c0001be0:	66 b8 10 00          	mov    $0x10,%ax
c0001be4:	8e d8                	mov    %eax,%ds
c0001be6:	8e c0                	mov    %eax,%es
c0001be8:	8e e0                	mov    %eax,%fs
c0001bea:	b0 20                	mov    $0x20,%al
c0001bec:	e6 20                	out    %al,$0x20
c0001bee:	e6 a0                	out    %al,$0xa0
c0001bf0:	6a 09                	push   $0x9
c0001bf2:	fb                   	sti    
c0001bf3:	ff 15 44 ae 00 c0    	call   *0xc000ae44
c0001bf9:	e9 63 fe ff ff       	jmp    c0001a61 <exit_int>

c0001bfe <int10_entry>:
c0001bfe:	fa                   	cli    
c0001bff:	90                   	nop
c0001c00:	60                   	pusha  
c0001c01:	1e                   	push   %ds
c0001c02:	06                   	push   %es
c0001c03:	0f a0                	push   %fs
c0001c05:	0f a8                	push   %gs
c0001c07:	66 b8 10 00          	mov    $0x10,%ax
c0001c0b:	8e d8                	mov    %eax,%ds
c0001c0d:	8e c0                	mov    %eax,%es
c0001c0f:	8e e0                	mov    %eax,%fs
c0001c11:	b0 20                	mov    $0x20,%al
c0001c13:	e6 20                	out    %al,$0x20
c0001c15:	e6 a0                	out    %al,$0xa0
c0001c17:	6a 0a                	push   $0xa
c0001c19:	fb                   	sti    
c0001c1a:	ff 15 48 ae 00 c0    	call   *0xc000ae48
c0001c20:	e9 3c fe ff ff       	jmp    c0001a61 <exit_int>

c0001c25 <int11_entry>:
c0001c25:	fa                   	cli    
c0001c26:	90                   	nop
c0001c27:	60                   	pusha  
c0001c28:	1e                   	push   %ds
c0001c29:	06                   	push   %es
c0001c2a:	0f a0                	push   %fs
c0001c2c:	0f a8                	push   %gs
c0001c2e:	66 b8 10 00          	mov    $0x10,%ax
c0001c32:	8e d8                	mov    %eax,%ds
c0001c34:	8e c0                	mov    %eax,%es
c0001c36:	8e e0                	mov    %eax,%fs
c0001c38:	b0 20                	mov    $0x20,%al
c0001c3a:	e6 20                	out    %al,$0x20
c0001c3c:	e6 a0                	out    %al,$0xa0
c0001c3e:	6a 0b                	push   $0xb
c0001c40:	fb                   	sti    
c0001c41:	ff 15 4c ae 00 c0    	call   *0xc000ae4c
c0001c47:	e9 15 fe ff ff       	jmp    c0001a61 <exit_int>

c0001c4c <int12_entry>:
c0001c4c:	fa                   	cli    
c0001c4d:	90                   	nop
c0001c4e:	60                   	pusha  
c0001c4f:	1e                   	push   %ds
c0001c50:	06                   	push   %es
c0001c51:	0f a0                	push   %fs
c0001c53:	0f a8                	push   %gs
c0001c55:	66 b8 10 00          	mov    $0x10,%ax
c0001c59:	8e d8                	mov    %eax,%ds
c0001c5b:	8e c0                	mov    %eax,%es
c0001c5d:	8e e0                	mov    %eax,%fs
c0001c5f:	b0 20                	mov    $0x20,%al
c0001c61:	e6 20                	out    %al,$0x20
c0001c63:	e6 a0                	out    %al,$0xa0
c0001c65:	6a 0c                	push   $0xc
c0001c67:	fb                   	sti    
c0001c68:	ff 15 50 ae 00 c0    	call   *0xc000ae50
c0001c6e:	e9 ee fd ff ff       	jmp    c0001a61 <exit_int>

c0001c73 <int13_entry>:
c0001c73:	fa                   	cli    
c0001c74:	90                   	nop
c0001c75:	60                   	pusha  
c0001c76:	1e                   	push   %ds
c0001c77:	06                   	push   %es
c0001c78:	0f a0                	push   %fs
c0001c7a:	0f a8                	push   %gs
c0001c7c:	66 b8 10 00          	mov    $0x10,%ax
c0001c80:	8e d8                	mov    %eax,%ds
c0001c82:	8e c0                	mov    %eax,%es
c0001c84:	8e e0                	mov    %eax,%fs
c0001c86:	b0 20                	mov    $0x20,%al
c0001c88:	e6 20                	out    %al,$0x20
c0001c8a:	e6 a0                	out    %al,$0xa0
c0001c8c:	6a 0d                	push   $0xd
c0001c8e:	fb                   	sti    
c0001c8f:	ff 15 54 ae 00 c0    	call   *0xc000ae54
c0001c95:	e9 c7 fd ff ff       	jmp    c0001a61 <exit_int>

c0001c9a <int14_entry>:
c0001c9a:	fa                   	cli    
c0001c9b:	90                   	nop
c0001c9c:	60                   	pusha  
c0001c9d:	1e                   	push   %ds
c0001c9e:	06                   	push   %es
c0001c9f:	0f a0                	push   %fs
c0001ca1:	0f a8                	push   %gs
c0001ca3:	66 b8 10 00          	mov    $0x10,%ax
c0001ca7:	8e d8                	mov    %eax,%ds
c0001ca9:	8e c0                	mov    %eax,%es
c0001cab:	8e e0                	mov    %eax,%fs
c0001cad:	b0 20                	mov    $0x20,%al
c0001caf:	e6 20                	out    %al,$0x20
c0001cb1:	e6 a0                	out    %al,$0xa0
c0001cb3:	6a 0e                	push   $0xe
c0001cb5:	fb                   	sti    
c0001cb6:	ff 15 58 ae 00 c0    	call   *0xc000ae58
c0001cbc:	e9 a0 fd ff ff       	jmp    c0001a61 <exit_int>

c0001cc1 <int15_entry>:
c0001cc1:	fa                   	cli    
c0001cc2:	6a 00                	push   $0x0
c0001cc4:	60                   	pusha  
c0001cc5:	1e                   	push   %ds
c0001cc6:	06                   	push   %es
c0001cc7:	0f a0                	push   %fs
c0001cc9:	0f a8                	push   %gs
c0001ccb:	66 b8 10 00          	mov    $0x10,%ax
c0001ccf:	8e d8                	mov    %eax,%ds
c0001cd1:	8e c0                	mov    %eax,%es
c0001cd3:	8e e0                	mov    %eax,%fs
c0001cd5:	b0 20                	mov    $0x20,%al
c0001cd7:	e6 20                	out    %al,$0x20
c0001cd9:	e6 a0                	out    %al,$0xa0
c0001cdb:	6a 0f                	push   $0xf
c0001cdd:	fb                   	sti    
c0001cde:	ff 15 5c ae 00 c0    	call   *0xc000ae5c
c0001ce4:	e9 78 fd ff ff       	jmp    c0001a61 <exit_int>

c0001ce9 <int16_entry>:
c0001ce9:	fa                   	cli    
c0001cea:	6a 00                	push   $0x0
c0001cec:	60                   	pusha  
c0001ced:	1e                   	push   %ds
c0001cee:	06                   	push   %es
c0001cef:	0f a0                	push   %fs
c0001cf1:	0f a8                	push   %gs
c0001cf3:	66 b8 10 00          	mov    $0x10,%ax
c0001cf7:	8e d8                	mov    %eax,%ds
c0001cf9:	8e c0                	mov    %eax,%es
c0001cfb:	8e e0                	mov    %eax,%fs
c0001cfd:	b0 20                	mov    $0x20,%al
c0001cff:	e6 20                	out    %al,$0x20
c0001d01:	e6 a0                	out    %al,$0xa0
c0001d03:	6a 10                	push   $0x10
c0001d05:	fb                   	sti    
c0001d06:	ff 15 60 ae 00 c0    	call   *0xc000ae60
c0001d0c:	e9 50 fd ff ff       	jmp    c0001a61 <exit_int>

c0001d11 <int17_entry>:
c0001d11:	fa                   	cli    
c0001d12:	90                   	nop
c0001d13:	60                   	pusha  
c0001d14:	1e                   	push   %ds
c0001d15:	06                   	push   %es
c0001d16:	0f a0                	push   %fs
c0001d18:	0f a8                	push   %gs
c0001d1a:	66 b8 10 00          	mov    $0x10,%ax
c0001d1e:	8e d8                	mov    %eax,%ds
c0001d20:	8e c0                	mov    %eax,%es
c0001d22:	8e e0                	mov    %eax,%fs
c0001d24:	b0 20                	mov    $0x20,%al
c0001d26:	e6 20                	out    %al,$0x20
c0001d28:	e6 a0                	out    %al,$0xa0
c0001d2a:	6a 11                	push   $0x11
c0001d2c:	fb                   	sti    
c0001d2d:	ff 15 64 ae 00 c0    	call   *0xc000ae64
c0001d33:	e9 29 fd ff ff       	jmp    c0001a61 <exit_int>

c0001d38 <int18_entry>:
c0001d38:	fa                   	cli    
c0001d39:	6a 00                	push   $0x0
c0001d3b:	60                   	pusha  
c0001d3c:	1e                   	push   %ds
c0001d3d:	06                   	push   %es
c0001d3e:	0f a0                	push   %fs
c0001d40:	0f a8                	push   %gs
c0001d42:	66 b8 10 00          	mov    $0x10,%ax
c0001d46:	8e d8                	mov    %eax,%ds
c0001d48:	8e c0                	mov    %eax,%es
c0001d4a:	8e e0                	mov    %eax,%fs
c0001d4c:	b0 20                	mov    $0x20,%al
c0001d4e:	e6 20                	out    %al,$0x20
c0001d50:	e6 a0                	out    %al,$0xa0
c0001d52:	6a 12                	push   $0x12
c0001d54:	fb                   	sti    
c0001d55:	ff 15 68 ae 00 c0    	call   *0xc000ae68
c0001d5b:	e9 01 fd ff ff       	jmp    c0001a61 <exit_int>

c0001d60 <int19_entry>:
c0001d60:	fa                   	cli    
c0001d61:	6a 00                	push   $0x0
c0001d63:	60                   	pusha  
c0001d64:	1e                   	push   %ds
c0001d65:	06                   	push   %es
c0001d66:	0f a0                	push   %fs
c0001d68:	0f a8                	push   %gs
c0001d6a:	66 b8 10 00          	mov    $0x10,%ax
c0001d6e:	8e d8                	mov    %eax,%ds
c0001d70:	8e c0                	mov    %eax,%es
c0001d72:	8e e0                	mov    %eax,%fs
c0001d74:	b0 20                	mov    $0x20,%al
c0001d76:	e6 20                	out    %al,$0x20
c0001d78:	e6 a0                	out    %al,$0xa0
c0001d7a:	6a 13                	push   $0x13
c0001d7c:	fb                   	sti    
c0001d7d:	ff 15 6c ae 00 c0    	call   *0xc000ae6c
c0001d83:	e9 d9 fc ff ff       	jmp    c0001a61 <exit_int>

c0001d88 <int20_entry>:
c0001d88:	fa                   	cli    
c0001d89:	6a 00                	push   $0x0
c0001d8b:	60                   	pusha  
c0001d8c:	1e                   	push   %ds
c0001d8d:	06                   	push   %es
c0001d8e:	0f a0                	push   %fs
c0001d90:	0f a8                	push   %gs
c0001d92:	66 b8 10 00          	mov    $0x10,%ax
c0001d96:	8e d8                	mov    %eax,%ds
c0001d98:	8e c0                	mov    %eax,%es
c0001d9a:	8e e0                	mov    %eax,%fs
c0001d9c:	b0 20                	mov    $0x20,%al
c0001d9e:	e6 20                	out    %al,$0x20
c0001da0:	e6 a0                	out    %al,$0xa0
c0001da2:	6a 14                	push   $0x14
c0001da4:	fb                   	sti    
c0001da5:	ff 15 70 ae 00 c0    	call   *0xc000ae70
c0001dab:	e9 b1 fc ff ff       	jmp    c0001a61 <exit_int>

c0001db0 <int21_entry>:
c0001db0:	fa                   	cli    
c0001db1:	6a 00                	push   $0x0
c0001db3:	60                   	pusha  
c0001db4:	1e                   	push   %ds
c0001db5:	06                   	push   %es
c0001db6:	0f a0                	push   %fs
c0001db8:	0f a8                	push   %gs
c0001dba:	66 b8 10 00          	mov    $0x10,%ax
c0001dbe:	8e d8                	mov    %eax,%ds
c0001dc0:	8e c0                	mov    %eax,%es
c0001dc2:	8e e0                	mov    %eax,%fs
c0001dc4:	b0 20                	mov    $0x20,%al
c0001dc6:	e6 20                	out    %al,$0x20
c0001dc8:	e6 a0                	out    %al,$0xa0
c0001dca:	6a 15                	push   $0x15
c0001dcc:	fb                   	sti    
c0001dcd:	ff 15 74 ae 00 c0    	call   *0xc000ae74
c0001dd3:	e9 89 fc ff ff       	jmp    c0001a61 <exit_int>

c0001dd8 <int22_entry>:
c0001dd8:	fa                   	cli    
c0001dd9:	6a 00                	push   $0x0
c0001ddb:	60                   	pusha  
c0001ddc:	1e                   	push   %ds
c0001ddd:	06                   	push   %es
c0001dde:	0f a0                	push   %fs
c0001de0:	0f a8                	push   %gs
c0001de2:	66 b8 10 00          	mov    $0x10,%ax
c0001de6:	8e d8                	mov    %eax,%ds
c0001de8:	8e c0                	mov    %eax,%es
c0001dea:	8e e0                	mov    %eax,%fs
c0001dec:	b0 20                	mov    $0x20,%al
c0001dee:	e6 20                	out    %al,$0x20
c0001df0:	e6 a0                	out    %al,$0xa0
c0001df2:	6a 16                	push   $0x16
c0001df4:	fb                   	sti    
c0001df5:	ff 15 78 ae 00 c0    	call   *0xc000ae78
c0001dfb:	e9 61 fc ff ff       	jmp    c0001a61 <exit_int>

c0001e00 <int23_entry>:
c0001e00:	fa                   	cli    
c0001e01:	6a 00                	push   $0x0
c0001e03:	60                   	pusha  
c0001e04:	1e                   	push   %ds
c0001e05:	06                   	push   %es
c0001e06:	0f a0                	push   %fs
c0001e08:	0f a8                	push   %gs
c0001e0a:	66 b8 10 00          	mov    $0x10,%ax
c0001e0e:	8e d8                	mov    %eax,%ds
c0001e10:	8e c0                	mov    %eax,%es
c0001e12:	8e e0                	mov    %eax,%fs
c0001e14:	b0 20                	mov    $0x20,%al
c0001e16:	e6 20                	out    %al,$0x20
c0001e18:	e6 a0                	out    %al,$0xa0
c0001e1a:	6a 17                	push   $0x17
c0001e1c:	fb                   	sti    
c0001e1d:	ff 15 7c ae 00 c0    	call   *0xc000ae7c
c0001e23:	e9 39 fc ff ff       	jmp    c0001a61 <exit_int>

c0001e28 <int24_entry>:
c0001e28:	fa                   	cli    
c0001e29:	6a 00                	push   $0x0
c0001e2b:	60                   	pusha  
c0001e2c:	1e                   	push   %ds
c0001e2d:	06                   	push   %es
c0001e2e:	0f a0                	push   %fs
c0001e30:	0f a8                	push   %gs
c0001e32:	66 b8 10 00          	mov    $0x10,%ax
c0001e36:	8e d8                	mov    %eax,%ds
c0001e38:	8e c0                	mov    %eax,%es
c0001e3a:	8e e0                	mov    %eax,%fs
c0001e3c:	b0 20                	mov    $0x20,%al
c0001e3e:	e6 20                	out    %al,$0x20
c0001e40:	e6 a0                	out    %al,$0xa0
c0001e42:	6a 18                	push   $0x18
c0001e44:	fb                   	sti    
c0001e45:	ff 15 80 ae 00 c0    	call   *0xc000ae80
c0001e4b:	e9 11 fc ff ff       	jmp    c0001a61 <exit_int>

c0001e50 <int25_entry>:
c0001e50:	fa                   	cli    
c0001e51:	6a 00                	push   $0x0
c0001e53:	60                   	pusha  
c0001e54:	1e                   	push   %ds
c0001e55:	06                   	push   %es
c0001e56:	0f a0                	push   %fs
c0001e58:	0f a8                	push   %gs
c0001e5a:	66 b8 10 00          	mov    $0x10,%ax
c0001e5e:	8e d8                	mov    %eax,%ds
c0001e60:	8e c0                	mov    %eax,%es
c0001e62:	8e e0                	mov    %eax,%fs
c0001e64:	b0 20                	mov    $0x20,%al
c0001e66:	e6 20                	out    %al,$0x20
c0001e68:	e6 a0                	out    %al,$0xa0
c0001e6a:	6a 19                	push   $0x19
c0001e6c:	fb                   	sti    
c0001e6d:	ff 15 84 ae 00 c0    	call   *0xc000ae84
c0001e73:	e9 e9 fb ff ff       	jmp    c0001a61 <exit_int>

c0001e78 <int26_entry>:
c0001e78:	fa                   	cli    
c0001e79:	6a 00                	push   $0x0
c0001e7b:	60                   	pusha  
c0001e7c:	1e                   	push   %ds
c0001e7d:	06                   	push   %es
c0001e7e:	0f a0                	push   %fs
c0001e80:	0f a8                	push   %gs
c0001e82:	66 b8 10 00          	mov    $0x10,%ax
c0001e86:	8e d8                	mov    %eax,%ds
c0001e88:	8e c0                	mov    %eax,%es
c0001e8a:	8e e0                	mov    %eax,%fs
c0001e8c:	b0 20                	mov    $0x20,%al
c0001e8e:	e6 20                	out    %al,$0x20
c0001e90:	e6 a0                	out    %al,$0xa0
c0001e92:	6a 1a                	push   $0x1a
c0001e94:	fb                   	sti    
c0001e95:	ff 15 88 ae 00 c0    	call   *0xc000ae88
c0001e9b:	e9 c1 fb ff ff       	jmp    c0001a61 <exit_int>

c0001ea0 <int27_entry>:
c0001ea0:	fa                   	cli    
c0001ea1:	6a 00                	push   $0x0
c0001ea3:	60                   	pusha  
c0001ea4:	1e                   	push   %ds
c0001ea5:	06                   	push   %es
c0001ea6:	0f a0                	push   %fs
c0001ea8:	0f a8                	push   %gs
c0001eaa:	66 b8 10 00          	mov    $0x10,%ax
c0001eae:	8e d8                	mov    %eax,%ds
c0001eb0:	8e c0                	mov    %eax,%es
c0001eb2:	8e e0                	mov    %eax,%fs
c0001eb4:	b0 20                	mov    $0x20,%al
c0001eb6:	e6 20                	out    %al,$0x20
c0001eb8:	e6 a0                	out    %al,$0xa0
c0001eba:	6a 1b                	push   $0x1b
c0001ebc:	fb                   	sti    
c0001ebd:	ff 15 8c ae 00 c0    	call   *0xc000ae8c
c0001ec3:	e9 99 fb ff ff       	jmp    c0001a61 <exit_int>

c0001ec8 <int28_entry>:
c0001ec8:	fa                   	cli    
c0001ec9:	6a 00                	push   $0x0
c0001ecb:	60                   	pusha  
c0001ecc:	1e                   	push   %ds
c0001ecd:	06                   	push   %es
c0001ece:	0f a0                	push   %fs
c0001ed0:	0f a8                	push   %gs
c0001ed2:	66 b8 10 00          	mov    $0x10,%ax
c0001ed6:	8e d8                	mov    %eax,%ds
c0001ed8:	8e c0                	mov    %eax,%es
c0001eda:	8e e0                	mov    %eax,%fs
c0001edc:	b0 20                	mov    $0x20,%al
c0001ede:	e6 20                	out    %al,$0x20
c0001ee0:	e6 a0                	out    %al,$0xa0
c0001ee2:	6a 1c                	push   $0x1c
c0001ee4:	fb                   	sti    
c0001ee5:	ff 15 90 ae 00 c0    	call   *0xc000ae90
c0001eeb:	e9 71 fb ff ff       	jmp    c0001a61 <exit_int>

c0001ef0 <int29_entry>:
c0001ef0:	fa                   	cli    
c0001ef1:	6a 00                	push   $0x0
c0001ef3:	60                   	pusha  
c0001ef4:	1e                   	push   %ds
c0001ef5:	06                   	push   %es
c0001ef6:	0f a0                	push   %fs
c0001ef8:	0f a8                	push   %gs
c0001efa:	66 b8 10 00          	mov    $0x10,%ax
c0001efe:	8e d8                	mov    %eax,%ds
c0001f00:	8e c0                	mov    %eax,%es
c0001f02:	8e e0                	mov    %eax,%fs
c0001f04:	b0 20                	mov    $0x20,%al
c0001f06:	e6 20                	out    %al,$0x20
c0001f08:	e6 a0                	out    %al,$0xa0
c0001f0a:	6a 1d                	push   $0x1d
c0001f0c:	fb                   	sti    
c0001f0d:	ff 15 94 ae 00 c0    	call   *0xc000ae94
c0001f13:	e9 49 fb ff ff       	jmp    c0001a61 <exit_int>

c0001f18 <int30_entry>:
c0001f18:	fa                   	cli    
c0001f19:	6a 00                	push   $0x0
c0001f1b:	60                   	pusha  
c0001f1c:	1e                   	push   %ds
c0001f1d:	06                   	push   %es
c0001f1e:	0f a0                	push   %fs
c0001f20:	0f a8                	push   %gs
c0001f22:	66 b8 10 00          	mov    $0x10,%ax
c0001f26:	8e d8                	mov    %eax,%ds
c0001f28:	8e c0                	mov    %eax,%es
c0001f2a:	8e e0                	mov    %eax,%fs
c0001f2c:	b0 20                	mov    $0x20,%al
c0001f2e:	e6 20                	out    %al,$0x20
c0001f30:	e6 a0                	out    %al,$0xa0
c0001f32:	6a 1e                	push   $0x1e
c0001f34:	fb                   	sti    
c0001f35:	ff 15 98 ae 00 c0    	call   *0xc000ae98
c0001f3b:	e9 21 fb ff ff       	jmp    c0001a61 <exit_int>

c0001f40 <int31_entry>:
c0001f40:	fa                   	cli    
c0001f41:	6a 00                	push   $0x0
c0001f43:	60                   	pusha  
c0001f44:	1e                   	push   %ds
c0001f45:	06                   	push   %es
c0001f46:	0f a0                	push   %fs
c0001f48:	0f a8                	push   %gs
c0001f4a:	66 b8 10 00          	mov    $0x10,%ax
c0001f4e:	8e d8                	mov    %eax,%ds
c0001f50:	8e c0                	mov    %eax,%es
c0001f52:	8e e0                	mov    %eax,%fs
c0001f54:	b0 20                	mov    $0x20,%al
c0001f56:	e6 20                	out    %al,$0x20
c0001f58:	e6 a0                	out    %al,$0xa0
c0001f5a:	6a 1f                	push   $0x1f
c0001f5c:	fb                   	sti    
c0001f5d:	ff 15 9c ae 00 c0    	call   *0xc000ae9c
c0001f63:	e9 f9 fa ff ff       	jmp    c0001a61 <exit_int>

c0001f68 <int32_entry>:
c0001f68:	fa                   	cli    
c0001f69:	6a 00                	push   $0x0
c0001f6b:	60                   	pusha  
c0001f6c:	1e                   	push   %ds
c0001f6d:	06                   	push   %es
c0001f6e:	0f a0                	push   %fs
c0001f70:	0f a8                	push   %gs
c0001f72:	66 b8 10 00          	mov    $0x10,%ax
c0001f76:	8e d8                	mov    %eax,%ds
c0001f78:	8e c0                	mov    %eax,%es
c0001f7a:	8e e0                	mov    %eax,%fs
c0001f7c:	b0 20                	mov    $0x20,%al
c0001f7e:	e6 20                	out    %al,$0x20
c0001f80:	e6 a0                	out    %al,$0xa0
c0001f82:	6a 20                	push   $0x20
c0001f84:	fb                   	sti    
c0001f85:	ff 15 a0 ae 00 c0    	call   *0xc000aea0
c0001f8b:	e9 d1 fa ff ff       	jmp    c0001a61 <exit_int>

c0001f90 <int33_entry>:
c0001f90:	fa                   	cli    
c0001f91:	6a 00                	push   $0x0
c0001f93:	60                   	pusha  
c0001f94:	1e                   	push   %ds
c0001f95:	06                   	push   %es
c0001f96:	0f a0                	push   %fs
c0001f98:	0f a8                	push   %gs
c0001f9a:	66 b8 10 00          	mov    $0x10,%ax
c0001f9e:	8e d8                	mov    %eax,%ds
c0001fa0:	8e c0                	mov    %eax,%es
c0001fa2:	8e e0                	mov    %eax,%fs
c0001fa4:	b0 20                	mov    $0x20,%al
c0001fa6:	e6 20                	out    %al,$0x20
c0001fa8:	e6 a0                	out    %al,$0xa0
c0001faa:	6a 21                	push   $0x21
c0001fac:	fb                   	sti    
c0001fad:	ff 15 a4 ae 00 c0    	call   *0xc000aea4
c0001fb3:	e9 a9 fa ff ff       	jmp    c0001a61 <exit_int>

c0001fb8 <int34_entry>:
c0001fb8:	fa                   	cli    
c0001fb9:	6a 00                	push   $0x0
c0001fbb:	60                   	pusha  
c0001fbc:	1e                   	push   %ds
c0001fbd:	06                   	push   %es
c0001fbe:	0f a0                	push   %fs
c0001fc0:	0f a8                	push   %gs
c0001fc2:	66 b8 10 00          	mov    $0x10,%ax
c0001fc6:	8e d8                	mov    %eax,%ds
c0001fc8:	8e c0                	mov    %eax,%es
c0001fca:	8e e0                	mov    %eax,%fs
c0001fcc:	b0 20                	mov    $0x20,%al
c0001fce:	e6 20                	out    %al,$0x20
c0001fd0:	e6 a0                	out    %al,$0xa0
c0001fd2:	6a 22                	push   $0x22
c0001fd4:	fb                   	sti    
c0001fd5:	ff 15 a8 ae 00 c0    	call   *0xc000aea8
c0001fdb:	e9 81 fa ff ff       	jmp    c0001a61 <exit_int>

c0001fe0 <int35_entry>:
c0001fe0:	fa                   	cli    
c0001fe1:	6a 00                	push   $0x0
c0001fe3:	60                   	pusha  
c0001fe4:	1e                   	push   %ds
c0001fe5:	06                   	push   %es
c0001fe6:	0f a0                	push   %fs
c0001fe8:	0f a8                	push   %gs
c0001fea:	66 b8 10 00          	mov    $0x10,%ax
c0001fee:	8e d8                	mov    %eax,%ds
c0001ff0:	8e c0                	mov    %eax,%es
c0001ff2:	8e e0                	mov    %eax,%fs
c0001ff4:	b0 20                	mov    $0x20,%al
c0001ff6:	e6 20                	out    %al,$0x20
c0001ff8:	e6 a0                	out    %al,$0xa0
c0001ffa:	6a 23                	push   $0x23
c0001ffc:	fb                   	sti    
c0001ffd:	ff 15 ac ae 00 c0    	call   *0xc000aeac
c0002003:	e9 59 fa ff ff       	jmp    c0001a61 <exit_int>

c0002008 <int36_entry>:
c0002008:	fa                   	cli    
c0002009:	6a 00                	push   $0x0
c000200b:	60                   	pusha  
c000200c:	1e                   	push   %ds
c000200d:	06                   	push   %es
c000200e:	0f a0                	push   %fs
c0002010:	0f a8                	push   %gs
c0002012:	66 b8 10 00          	mov    $0x10,%ax
c0002016:	8e d8                	mov    %eax,%ds
c0002018:	8e c0                	mov    %eax,%es
c000201a:	8e e0                	mov    %eax,%fs
c000201c:	b0 20                	mov    $0x20,%al
c000201e:	e6 20                	out    %al,$0x20
c0002020:	e6 a0                	out    %al,$0xa0
c0002022:	6a 24                	push   $0x24
c0002024:	fb                   	sti    
c0002025:	ff 15 b0 ae 00 c0    	call   *0xc000aeb0
c000202b:	e9 31 fa ff ff       	jmp    c0001a61 <exit_int>

c0002030 <int37_entry>:
c0002030:	fa                   	cli    
c0002031:	6a 00                	push   $0x0
c0002033:	60                   	pusha  
c0002034:	1e                   	push   %ds
c0002035:	06                   	push   %es
c0002036:	0f a0                	push   %fs
c0002038:	0f a8                	push   %gs
c000203a:	66 b8 10 00          	mov    $0x10,%ax
c000203e:	8e d8                	mov    %eax,%ds
c0002040:	8e c0                	mov    %eax,%es
c0002042:	8e e0                	mov    %eax,%fs
c0002044:	b0 20                	mov    $0x20,%al
c0002046:	e6 20                	out    %al,$0x20
c0002048:	e6 a0                	out    %al,$0xa0
c000204a:	6a 25                	push   $0x25
c000204c:	fb                   	sti    
c000204d:	ff 15 b4 ae 00 c0    	call   *0xc000aeb4
c0002053:	e9 09 fa ff ff       	jmp    c0001a61 <exit_int>

c0002058 <int38_entry>:
c0002058:	fa                   	cli    
c0002059:	6a 00                	push   $0x0
c000205b:	60                   	pusha  
c000205c:	1e                   	push   %ds
c000205d:	06                   	push   %es
c000205e:	0f a0                	push   %fs
c0002060:	0f a8                	push   %gs
c0002062:	66 b8 10 00          	mov    $0x10,%ax
c0002066:	8e d8                	mov    %eax,%ds
c0002068:	8e c0                	mov    %eax,%es
c000206a:	8e e0                	mov    %eax,%fs
c000206c:	b0 20                	mov    $0x20,%al
c000206e:	e6 20                	out    %al,$0x20
c0002070:	e6 a0                	out    %al,$0xa0
c0002072:	6a 26                	push   $0x26
c0002074:	fb                   	sti    
c0002075:	ff 15 b8 ae 00 c0    	call   *0xc000aeb8
c000207b:	e9 e1 f9 ff ff       	jmp    c0001a61 <exit_int>

c0002080 <int39_entry>:
c0002080:	fa                   	cli    
c0002081:	6a 00                	push   $0x0
c0002083:	60                   	pusha  
c0002084:	1e                   	push   %ds
c0002085:	06                   	push   %es
c0002086:	0f a0                	push   %fs
c0002088:	0f a8                	push   %gs
c000208a:	66 b8 10 00          	mov    $0x10,%ax
c000208e:	8e d8                	mov    %eax,%ds
c0002090:	8e c0                	mov    %eax,%es
c0002092:	8e e0                	mov    %eax,%fs
c0002094:	b0 20                	mov    $0x20,%al
c0002096:	e6 20                	out    %al,$0x20
c0002098:	e6 a0                	out    %al,$0xa0
c000209a:	6a 27                	push   $0x27
c000209c:	fb                   	sti    
c000209d:	ff 15 bc ae 00 c0    	call   *0xc000aebc
c00020a3:	e9 b9 f9 ff ff       	jmp    c0001a61 <exit_int>

c00020a8 <int40_entry>:
c00020a8:	fa                   	cli    
c00020a9:	6a 00                	push   $0x0
c00020ab:	60                   	pusha  
c00020ac:	1e                   	push   %ds
c00020ad:	06                   	push   %es
c00020ae:	0f a0                	push   %fs
c00020b0:	0f a8                	push   %gs
c00020b2:	66 b8 10 00          	mov    $0x10,%ax
c00020b6:	8e d8                	mov    %eax,%ds
c00020b8:	8e c0                	mov    %eax,%es
c00020ba:	8e e0                	mov    %eax,%fs
c00020bc:	b0 20                	mov    $0x20,%al
c00020be:	e6 20                	out    %al,$0x20
c00020c0:	e6 a0                	out    %al,$0xa0
c00020c2:	6a 28                	push   $0x28
c00020c4:	fb                   	sti    
c00020c5:	ff 15 c0 ae 00 c0    	call   *0xc000aec0
c00020cb:	e9 91 f9 ff ff       	jmp    c0001a61 <exit_int>

c00020d0 <int41_entry>:
c00020d0:	fa                   	cli    
c00020d1:	6a 00                	push   $0x0
c00020d3:	60                   	pusha  
c00020d4:	1e                   	push   %ds
c00020d5:	06                   	push   %es
c00020d6:	0f a0                	push   %fs
c00020d8:	0f a8                	push   %gs
c00020da:	66 b8 10 00          	mov    $0x10,%ax
c00020de:	8e d8                	mov    %eax,%ds
c00020e0:	8e c0                	mov    %eax,%es
c00020e2:	8e e0                	mov    %eax,%fs
c00020e4:	b0 20                	mov    $0x20,%al
c00020e6:	e6 20                	out    %al,$0x20
c00020e8:	e6 a0                	out    %al,$0xa0
c00020ea:	6a 29                	push   $0x29
c00020ec:	fb                   	sti    
c00020ed:	ff 15 c4 ae 00 c0    	call   *0xc000aec4
c00020f3:	e9 69 f9 ff ff       	jmp    c0001a61 <exit_int>

c00020f8 <int42_entry>:
c00020f8:	fa                   	cli    
c00020f9:	6a 00                	push   $0x0
c00020fb:	60                   	pusha  
c00020fc:	1e                   	push   %ds
c00020fd:	06                   	push   %es
c00020fe:	0f a0                	push   %fs
c0002100:	0f a8                	push   %gs
c0002102:	66 b8 10 00          	mov    $0x10,%ax
c0002106:	8e d8                	mov    %eax,%ds
c0002108:	8e c0                	mov    %eax,%es
c000210a:	8e e0                	mov    %eax,%fs
c000210c:	b0 20                	mov    $0x20,%al
c000210e:	e6 20                	out    %al,$0x20
c0002110:	e6 a0                	out    %al,$0xa0
c0002112:	6a 2a                	push   $0x2a
c0002114:	fb                   	sti    
c0002115:	ff 15 c8 ae 00 c0    	call   *0xc000aec8
c000211b:	e9 41 f9 ff ff       	jmp    c0001a61 <exit_int>

c0002120 <int43_entry>:
c0002120:	fa                   	cli    
c0002121:	6a 00                	push   $0x0
c0002123:	60                   	pusha  
c0002124:	1e                   	push   %ds
c0002125:	06                   	push   %es
c0002126:	0f a0                	push   %fs
c0002128:	0f a8                	push   %gs
c000212a:	66 b8 10 00          	mov    $0x10,%ax
c000212e:	8e d8                	mov    %eax,%ds
c0002130:	8e c0                	mov    %eax,%es
c0002132:	8e e0                	mov    %eax,%fs
c0002134:	b0 20                	mov    $0x20,%al
c0002136:	e6 20                	out    %al,$0x20
c0002138:	e6 a0                	out    %al,$0xa0
c000213a:	6a 2b                	push   $0x2b
c000213c:	fb                   	sti    
c000213d:	ff 15 cc ae 00 c0    	call   *0xc000aecc
c0002143:	e9 19 f9 ff ff       	jmp    c0001a61 <exit_int>

c0002148 <int44_entry>:
c0002148:	fa                   	cli    
c0002149:	6a 00                	push   $0x0
c000214b:	60                   	pusha  
c000214c:	1e                   	push   %ds
c000214d:	06                   	push   %es
c000214e:	0f a0                	push   %fs
c0002150:	0f a8                	push   %gs
c0002152:	66 b8 10 00          	mov    $0x10,%ax
c0002156:	8e d8                	mov    %eax,%ds
c0002158:	8e c0                	mov    %eax,%es
c000215a:	8e e0                	mov    %eax,%fs
c000215c:	b0 20                	mov    $0x20,%al
c000215e:	e6 20                	out    %al,$0x20
c0002160:	e6 a0                	out    %al,$0xa0
c0002162:	6a 2c                	push   $0x2c
c0002164:	fb                   	sti    
c0002165:	ff 15 d0 ae 00 c0    	call   *0xc000aed0
c000216b:	e9 f1 f8 ff ff       	jmp    c0001a61 <exit_int>

c0002170 <int45_entry>:
c0002170:	fa                   	cli    
c0002171:	6a 00                	push   $0x0
c0002173:	60                   	pusha  
c0002174:	1e                   	push   %ds
c0002175:	06                   	push   %es
c0002176:	0f a0                	push   %fs
c0002178:	0f a8                	push   %gs
c000217a:	66 b8 10 00          	mov    $0x10,%ax
c000217e:	8e d8                	mov    %eax,%ds
c0002180:	8e c0                	mov    %eax,%es
c0002182:	8e e0                	mov    %eax,%fs
c0002184:	b0 20                	mov    $0x20,%al
c0002186:	e6 20                	out    %al,$0x20
c0002188:	e6 a0                	out    %al,$0xa0
c000218a:	6a 2d                	push   $0x2d
c000218c:	fb                   	sti    
c000218d:	ff 15 d4 ae 00 c0    	call   *0xc000aed4
c0002193:	e9 c9 f8 ff ff       	jmp    c0001a61 <exit_int>

c0002198 <int46_entry>:
c0002198:	fa                   	cli    
c0002199:	6a 00                	push   $0x0
c000219b:	60                   	pusha  
c000219c:	1e                   	push   %ds
c000219d:	06                   	push   %es
c000219e:	0f a0                	push   %fs
c00021a0:	0f a8                	push   %gs
c00021a2:	66 b8 10 00          	mov    $0x10,%ax
c00021a6:	8e d8                	mov    %eax,%ds
c00021a8:	8e c0                	mov    %eax,%es
c00021aa:	8e e0                	mov    %eax,%fs
c00021ac:	b0 20                	mov    $0x20,%al
c00021ae:	e6 20                	out    %al,$0x20
c00021b0:	e6 a0                	out    %al,$0xa0
c00021b2:	6a 2e                	push   $0x2e
c00021b4:	fb                   	sti    
c00021b5:	ff 15 d8 ae 00 c0    	call   *0xc000aed8
c00021bb:	e9 a1 f8 ff ff       	jmp    c0001a61 <exit_int>

c00021c0 <int47_entry>:
c00021c0:	fa                   	cli    
c00021c1:	6a 00                	push   $0x0
c00021c3:	60                   	pusha  
c00021c4:	1e                   	push   %ds
c00021c5:	06                   	push   %es
c00021c6:	0f a0                	push   %fs
c00021c8:	0f a8                	push   %gs
c00021ca:	66 b8 10 00          	mov    $0x10,%ax
c00021ce:	8e d8                	mov    %eax,%ds
c00021d0:	8e c0                	mov    %eax,%es
c00021d2:	8e e0                	mov    %eax,%fs
c00021d4:	b0 20                	mov    $0x20,%al
c00021d6:	e6 20                	out    %al,$0x20
c00021d8:	e6 a0                	out    %al,$0xa0
c00021da:	6a 2f                	push   $0x2f
c00021dc:	fb                   	sti    
c00021dd:	ff 15 dc ae 00 c0    	call   *0xc000aedc
c00021e3:	e9 79 f8 ff ff       	jmp    c0001a61 <exit_int>

c00021e8 <int48_entry>:
c00021e8:	fa                   	cli    
c00021e9:	6a 00                	push   $0x0
c00021eb:	60                   	pusha  
c00021ec:	1e                   	push   %ds
c00021ed:	06                   	push   %es
c00021ee:	0f a0                	push   %fs
c00021f0:	0f a8                	push   %gs
c00021f2:	66 b8 10 00          	mov    $0x10,%ax
c00021f6:	8e d8                	mov    %eax,%ds
c00021f8:	8e c0                	mov    %eax,%es
c00021fa:	8e e0                	mov    %eax,%fs
c00021fc:	b0 20                	mov    $0x20,%al
c00021fe:	e6 20                	out    %al,$0x20
c0002200:	e6 a0                	out    %al,$0xa0
c0002202:	6a 30                	push   $0x30
c0002204:	fb                   	sti    
c0002205:	ff 15 e0 ae 00 c0    	call   *0xc000aee0
c000220b:	e9 51 f8 ff ff       	jmp    c0001a61 <exit_int>

c0002210 <int49_entry>:
c0002210:	fa                   	cli    
c0002211:	6a 00                	push   $0x0
c0002213:	60                   	pusha  
c0002214:	1e                   	push   %ds
c0002215:	06                   	push   %es
c0002216:	0f a0                	push   %fs
c0002218:	0f a8                	push   %gs
c000221a:	66 b8 10 00          	mov    $0x10,%ax
c000221e:	8e d8                	mov    %eax,%ds
c0002220:	8e c0                	mov    %eax,%es
c0002222:	8e e0                	mov    %eax,%fs
c0002224:	b0 20                	mov    $0x20,%al
c0002226:	e6 20                	out    %al,$0x20
c0002228:	e6 a0                	out    %al,$0xa0
c000222a:	6a 31                	push   $0x31
c000222c:	fb                   	sti    
c000222d:	ff 15 e4 ae 00 c0    	call   *0xc000aee4
c0002233:	e9 29 f8 ff ff       	jmp    c0001a61 <exit_int>

c0002238 <int50_entry>:
c0002238:	fa                   	cli    
c0002239:	6a 00                	push   $0x0
c000223b:	60                   	pusha  
c000223c:	1e                   	push   %ds
c000223d:	06                   	push   %es
c000223e:	0f a0                	push   %fs
c0002240:	0f a8                	push   %gs
c0002242:	66 b8 10 00          	mov    $0x10,%ax
c0002246:	8e d8                	mov    %eax,%ds
c0002248:	8e c0                	mov    %eax,%es
c000224a:	8e e0                	mov    %eax,%fs
c000224c:	b0 20                	mov    $0x20,%al
c000224e:	e6 20                	out    %al,$0x20
c0002250:	e6 a0                	out    %al,$0xa0
c0002252:	6a 32                	push   $0x32
c0002254:	fb                   	sti    
c0002255:	ff 15 e8 ae 00 c0    	call   *0xc000aee8
c000225b:	e9 01 f8 ff ff       	jmp    c0001a61 <exit_int>

c0002260 <int51_entry>:
c0002260:	fa                   	cli    
c0002261:	6a 00                	push   $0x0
c0002263:	60                   	pusha  
c0002264:	1e                   	push   %ds
c0002265:	06                   	push   %es
c0002266:	0f a0                	push   %fs
c0002268:	0f a8                	push   %gs
c000226a:	66 b8 10 00          	mov    $0x10,%ax
c000226e:	8e d8                	mov    %eax,%ds
c0002270:	8e c0                	mov    %eax,%es
c0002272:	8e e0                	mov    %eax,%fs
c0002274:	b0 20                	mov    $0x20,%al
c0002276:	e6 20                	out    %al,$0x20
c0002278:	e6 a0                	out    %al,$0xa0
c000227a:	6a 33                	push   $0x33
c000227c:	fb                   	sti    
c000227d:	ff 15 ec ae 00 c0    	call   *0xc000aeec
c0002283:	e9 d9 f7 ff ff       	jmp    c0001a61 <exit_int>

c0002288 <int52_entry>:
c0002288:	fa                   	cli    
c0002289:	6a 00                	push   $0x0
c000228b:	60                   	pusha  
c000228c:	1e                   	push   %ds
c000228d:	06                   	push   %es
c000228e:	0f a0                	push   %fs
c0002290:	0f a8                	push   %gs
c0002292:	66 b8 10 00          	mov    $0x10,%ax
c0002296:	8e d8                	mov    %eax,%ds
c0002298:	8e c0                	mov    %eax,%es
c000229a:	8e e0                	mov    %eax,%fs
c000229c:	b0 20                	mov    $0x20,%al
c000229e:	e6 20                	out    %al,$0x20
c00022a0:	e6 a0                	out    %al,$0xa0
c00022a2:	6a 34                	push   $0x34
c00022a4:	fb                   	sti    
c00022a5:	ff 15 f0 ae 00 c0    	call   *0xc000aef0
c00022ab:	e9 b1 f7 ff ff       	jmp    c0001a61 <exit_int>

c00022b0 <int53_entry>:
c00022b0:	fa                   	cli    
c00022b1:	6a 00                	push   $0x0
c00022b3:	60                   	pusha  
c00022b4:	1e                   	push   %ds
c00022b5:	06                   	push   %es
c00022b6:	0f a0                	push   %fs
c00022b8:	0f a8                	push   %gs
c00022ba:	66 b8 10 00          	mov    $0x10,%ax
c00022be:	8e d8                	mov    %eax,%ds
c00022c0:	8e c0                	mov    %eax,%es
c00022c2:	8e e0                	mov    %eax,%fs
c00022c4:	b0 20                	mov    $0x20,%al
c00022c6:	e6 20                	out    %al,$0x20
c00022c8:	e6 a0                	out    %al,$0xa0
c00022ca:	6a 35                	push   $0x35
c00022cc:	fb                   	sti    
c00022cd:	ff 15 f4 ae 00 c0    	call   *0xc000aef4
c00022d3:	e9 89 f7 ff ff       	jmp    c0001a61 <exit_int>

c00022d8 <int54_entry>:
c00022d8:	fa                   	cli    
c00022d9:	6a 00                	push   $0x0
c00022db:	60                   	pusha  
c00022dc:	1e                   	push   %ds
c00022dd:	06                   	push   %es
c00022de:	0f a0                	push   %fs
c00022e0:	0f a8                	push   %gs
c00022e2:	66 b8 10 00          	mov    $0x10,%ax
c00022e6:	8e d8                	mov    %eax,%ds
c00022e8:	8e c0                	mov    %eax,%es
c00022ea:	8e e0                	mov    %eax,%fs
c00022ec:	b0 20                	mov    $0x20,%al
c00022ee:	e6 20                	out    %al,$0x20
c00022f0:	e6 a0                	out    %al,$0xa0
c00022f2:	6a 36                	push   $0x36
c00022f4:	fb                   	sti    
c00022f5:	ff 15 f8 ae 00 c0    	call   *0xc000aef8
c00022fb:	e9 61 f7 ff ff       	jmp    c0001a61 <exit_int>

c0002300 <int55_entry>:
c0002300:	fa                   	cli    
c0002301:	6a 00                	push   $0x0
c0002303:	60                   	pusha  
c0002304:	1e                   	push   %ds
c0002305:	06                   	push   %es
c0002306:	0f a0                	push   %fs
c0002308:	0f a8                	push   %gs
c000230a:	66 b8 10 00          	mov    $0x10,%ax
c000230e:	8e d8                	mov    %eax,%ds
c0002310:	8e c0                	mov    %eax,%es
c0002312:	8e e0                	mov    %eax,%fs
c0002314:	b0 20                	mov    $0x20,%al
c0002316:	e6 20                	out    %al,$0x20
c0002318:	e6 a0                	out    %al,$0xa0
c000231a:	6a 37                	push   $0x37
c000231c:	fb                   	sti    
c000231d:	ff 15 fc ae 00 c0    	call   *0xc000aefc
c0002323:	e9 39 f7 ff ff       	jmp    c0001a61 <exit_int>

c0002328 <int56_entry>:
c0002328:	fa                   	cli    
c0002329:	6a 00                	push   $0x0
c000232b:	60                   	pusha  
c000232c:	1e                   	push   %ds
c000232d:	06                   	push   %es
c000232e:	0f a0                	push   %fs
c0002330:	0f a8                	push   %gs
c0002332:	66 b8 10 00          	mov    $0x10,%ax
c0002336:	8e d8                	mov    %eax,%ds
c0002338:	8e c0                	mov    %eax,%es
c000233a:	8e e0                	mov    %eax,%fs
c000233c:	b0 20                	mov    $0x20,%al
c000233e:	e6 20                	out    %al,$0x20
c0002340:	e6 a0                	out    %al,$0xa0
c0002342:	6a 38                	push   $0x38
c0002344:	fb                   	sti    
c0002345:	ff 15 00 af 00 c0    	call   *0xc000af00
c000234b:	e9 11 f7 ff ff       	jmp    c0001a61 <exit_int>

c0002350 <int57_entry>:
c0002350:	fa                   	cli    
c0002351:	6a 00                	push   $0x0
c0002353:	60                   	pusha  
c0002354:	1e                   	push   %ds
c0002355:	06                   	push   %es
c0002356:	0f a0                	push   %fs
c0002358:	0f a8                	push   %gs
c000235a:	66 b8 10 00          	mov    $0x10,%ax
c000235e:	8e d8                	mov    %eax,%ds
c0002360:	8e c0                	mov    %eax,%es
c0002362:	8e e0                	mov    %eax,%fs
c0002364:	b0 20                	mov    $0x20,%al
c0002366:	e6 20                	out    %al,$0x20
c0002368:	e6 a0                	out    %al,$0xa0
c000236a:	6a 39                	push   $0x39
c000236c:	fb                   	sti    
c000236d:	ff 15 04 af 00 c0    	call   *0xc000af04
c0002373:	e9 e9 f6 ff ff       	jmp    c0001a61 <exit_int>

c0002378 <int58_entry>:
c0002378:	fa                   	cli    
c0002379:	6a 00                	push   $0x0
c000237b:	60                   	pusha  
c000237c:	1e                   	push   %ds
c000237d:	06                   	push   %es
c000237e:	0f a0                	push   %fs
c0002380:	0f a8                	push   %gs
c0002382:	66 b8 10 00          	mov    $0x10,%ax
c0002386:	8e d8                	mov    %eax,%ds
c0002388:	8e c0                	mov    %eax,%es
c000238a:	8e e0                	mov    %eax,%fs
c000238c:	b0 20                	mov    $0x20,%al
c000238e:	e6 20                	out    %al,$0x20
c0002390:	e6 a0                	out    %al,$0xa0
c0002392:	6a 3a                	push   $0x3a
c0002394:	fb                   	sti    
c0002395:	ff 15 08 af 00 c0    	call   *0xc000af08
c000239b:	e9 c1 f6 ff ff       	jmp    c0001a61 <exit_int>

c00023a0 <int59_entry>:
c00023a0:	fa                   	cli    
c00023a1:	6a 00                	push   $0x0
c00023a3:	60                   	pusha  
c00023a4:	1e                   	push   %ds
c00023a5:	06                   	push   %es
c00023a6:	0f a0                	push   %fs
c00023a8:	0f a8                	push   %gs
c00023aa:	66 b8 10 00          	mov    $0x10,%ax
c00023ae:	8e d8                	mov    %eax,%ds
c00023b0:	8e c0                	mov    %eax,%es
c00023b2:	8e e0                	mov    %eax,%fs
c00023b4:	b0 20                	mov    $0x20,%al
c00023b6:	e6 20                	out    %al,$0x20
c00023b8:	e6 a0                	out    %al,$0xa0
c00023ba:	6a 3b                	push   $0x3b
c00023bc:	fb                   	sti    
c00023bd:	ff 15 0c af 00 c0    	call   *0xc000af0c
c00023c3:	e9 99 f6 ff ff       	jmp    c0001a61 <exit_int>

c00023c8 <int60_entry>:
c00023c8:	fa                   	cli    
c00023c9:	6a 00                	push   $0x0
c00023cb:	60                   	pusha  
c00023cc:	1e                   	push   %ds
c00023cd:	06                   	push   %es
c00023ce:	0f a0                	push   %fs
c00023d0:	0f a8                	push   %gs
c00023d2:	66 b8 10 00          	mov    $0x10,%ax
c00023d6:	8e d8                	mov    %eax,%ds
c00023d8:	8e c0                	mov    %eax,%es
c00023da:	8e e0                	mov    %eax,%fs
c00023dc:	b0 20                	mov    $0x20,%al
c00023de:	e6 20                	out    %al,$0x20
c00023e0:	e6 a0                	out    %al,$0xa0
c00023e2:	6a 3c                	push   $0x3c
c00023e4:	fb                   	sti    
c00023e5:	ff 15 10 af 00 c0    	call   *0xc000af10
c00023eb:	e9 71 f6 ff ff       	jmp    c0001a61 <exit_int>

c00023f0 <int61_entry>:
c00023f0:	fa                   	cli    
c00023f1:	6a 00                	push   $0x0
c00023f3:	60                   	pusha  
c00023f4:	1e                   	push   %ds
c00023f5:	06                   	push   %es
c00023f6:	0f a0                	push   %fs
c00023f8:	0f a8                	push   %gs
c00023fa:	66 b8 10 00          	mov    $0x10,%ax
c00023fe:	8e d8                	mov    %eax,%ds
c0002400:	8e c0                	mov    %eax,%es
c0002402:	8e e0                	mov    %eax,%fs
c0002404:	b0 20                	mov    $0x20,%al
c0002406:	e6 20                	out    %al,$0x20
c0002408:	e6 a0                	out    %al,$0xa0
c000240a:	6a 3d                	push   $0x3d
c000240c:	fb                   	sti    
c000240d:	ff 15 14 af 00 c0    	call   *0xc000af14
c0002413:	e9 49 f6 ff ff       	jmp    c0001a61 <exit_int>

c0002418 <int62_entry>:
c0002418:	fa                   	cli    
c0002419:	6a 00                	push   $0x0
c000241b:	60                   	pusha  
c000241c:	1e                   	push   %ds
c000241d:	06                   	push   %es
c000241e:	0f a0                	push   %fs
c0002420:	0f a8                	push   %gs
c0002422:	66 b8 10 00          	mov    $0x10,%ax
c0002426:	8e d8                	mov    %eax,%ds
c0002428:	8e c0                	mov    %eax,%es
c000242a:	8e e0                	mov    %eax,%fs
c000242c:	b0 20                	mov    $0x20,%al
c000242e:	e6 20                	out    %al,$0x20
c0002430:	e6 a0                	out    %al,$0xa0
c0002432:	6a 3e                	push   $0x3e
c0002434:	fb                   	sti    
c0002435:	ff 15 18 af 00 c0    	call   *0xc000af18
c000243b:	e9 21 f6 ff ff       	jmp    c0001a61 <exit_int>

c0002440 <int63_entry>:
c0002440:	fa                   	cli    
c0002441:	6a 00                	push   $0x0
c0002443:	60                   	pusha  
c0002444:	1e                   	push   %ds
c0002445:	06                   	push   %es
c0002446:	0f a0                	push   %fs
c0002448:	0f a8                	push   %gs
c000244a:	66 b8 10 00          	mov    $0x10,%ax
c000244e:	8e d8                	mov    %eax,%ds
c0002450:	8e c0                	mov    %eax,%es
c0002452:	8e e0                	mov    %eax,%fs
c0002454:	b0 20                	mov    $0x20,%al
c0002456:	e6 20                	out    %al,$0x20
c0002458:	e6 a0                	out    %al,$0xa0
c000245a:	6a 3f                	push   $0x3f
c000245c:	fb                   	sti    
c000245d:	ff 15 1c af 00 c0    	call   *0xc000af1c
c0002463:	e9 f9 f5 ff ff       	jmp    c0001a61 <exit_int>

c0002468 <int64_entry>:
c0002468:	fa                   	cli    
c0002469:	6a 00                	push   $0x0
c000246b:	60                   	pusha  
c000246c:	1e                   	push   %ds
c000246d:	06                   	push   %es
c000246e:	0f a0                	push   %fs
c0002470:	0f a8                	push   %gs
c0002472:	66 b8 10 00          	mov    $0x10,%ax
c0002476:	8e d8                	mov    %eax,%ds
c0002478:	8e c0                	mov    %eax,%es
c000247a:	8e e0                	mov    %eax,%fs
c000247c:	b0 20                	mov    $0x20,%al
c000247e:	e6 20                	out    %al,$0x20
c0002480:	e6 a0                	out    %al,$0xa0
c0002482:	6a 40                	push   $0x40
c0002484:	fb                   	sti    
c0002485:	ff 15 20 af 00 c0    	call   *0xc000af20
c000248b:	e9 d1 f5 ff ff       	jmp    c0001a61 <exit_int>

c0002490 <int65_entry>:
c0002490:	fa                   	cli    
c0002491:	6a 00                	push   $0x0
c0002493:	60                   	pusha  
c0002494:	1e                   	push   %ds
c0002495:	06                   	push   %es
c0002496:	0f a0                	push   %fs
c0002498:	0f a8                	push   %gs
c000249a:	66 b8 10 00          	mov    $0x10,%ax
c000249e:	8e d8                	mov    %eax,%ds
c00024a0:	8e c0                	mov    %eax,%es
c00024a2:	8e e0                	mov    %eax,%fs
c00024a4:	b0 20                	mov    $0x20,%al
c00024a6:	e6 20                	out    %al,$0x20
c00024a8:	e6 a0                	out    %al,$0xa0
c00024aa:	6a 41                	push   $0x41
c00024ac:	fb                   	sti    
c00024ad:	ff 15 24 af 00 c0    	call   *0xc000af24
c00024b3:	e9 a9 f5 ff ff       	jmp    c0001a61 <exit_int>

c00024b8 <int66_entry>:
c00024b8:	fa                   	cli    
c00024b9:	6a 00                	push   $0x0
c00024bb:	60                   	pusha  
c00024bc:	1e                   	push   %ds
c00024bd:	06                   	push   %es
c00024be:	0f a0                	push   %fs
c00024c0:	0f a8                	push   %gs
c00024c2:	66 b8 10 00          	mov    $0x10,%ax
c00024c6:	8e d8                	mov    %eax,%ds
c00024c8:	8e c0                	mov    %eax,%es
c00024ca:	8e e0                	mov    %eax,%fs
c00024cc:	b0 20                	mov    $0x20,%al
c00024ce:	e6 20                	out    %al,$0x20
c00024d0:	e6 a0                	out    %al,$0xa0
c00024d2:	6a 42                	push   $0x42
c00024d4:	fb                   	sti    
c00024d5:	ff 15 28 af 00 c0    	call   *0xc000af28
c00024db:	e9 81 f5 ff ff       	jmp    c0001a61 <exit_int>

c00024e0 <int67_entry>:
c00024e0:	fa                   	cli    
c00024e1:	6a 00                	push   $0x0
c00024e3:	60                   	pusha  
c00024e4:	1e                   	push   %ds
c00024e5:	06                   	push   %es
c00024e6:	0f a0                	push   %fs
c00024e8:	0f a8                	push   %gs
c00024ea:	66 b8 10 00          	mov    $0x10,%ax
c00024ee:	8e d8                	mov    %eax,%ds
c00024f0:	8e c0                	mov    %eax,%es
c00024f2:	8e e0                	mov    %eax,%fs
c00024f4:	b0 20                	mov    $0x20,%al
c00024f6:	e6 20                	out    %al,$0x20
c00024f8:	e6 a0                	out    %al,$0xa0
c00024fa:	6a 43                	push   $0x43
c00024fc:	fb                   	sti    
c00024fd:	ff 15 2c af 00 c0    	call   *0xc000af2c
c0002503:	e9 59 f5 ff ff       	jmp    c0001a61 <exit_int>

c0002508 <int68_entry>:
c0002508:	fa                   	cli    
c0002509:	6a 00                	push   $0x0
c000250b:	60                   	pusha  
c000250c:	1e                   	push   %ds
c000250d:	06                   	push   %es
c000250e:	0f a0                	push   %fs
c0002510:	0f a8                	push   %gs
c0002512:	66 b8 10 00          	mov    $0x10,%ax
c0002516:	8e d8                	mov    %eax,%ds
c0002518:	8e c0                	mov    %eax,%es
c000251a:	8e e0                	mov    %eax,%fs
c000251c:	b0 20                	mov    $0x20,%al
c000251e:	e6 20                	out    %al,$0x20
c0002520:	e6 a0                	out    %al,$0xa0
c0002522:	6a 44                	push   $0x44
c0002524:	fb                   	sti    
c0002525:	ff 15 30 af 00 c0    	call   *0xc000af30
c000252b:	e9 31 f5 ff ff       	jmp    c0001a61 <exit_int>

c0002530 <int69_entry>:
c0002530:	fa                   	cli    
c0002531:	6a 00                	push   $0x0
c0002533:	60                   	pusha  
c0002534:	1e                   	push   %ds
c0002535:	06                   	push   %es
c0002536:	0f a0                	push   %fs
c0002538:	0f a8                	push   %gs
c000253a:	66 b8 10 00          	mov    $0x10,%ax
c000253e:	8e d8                	mov    %eax,%ds
c0002540:	8e c0                	mov    %eax,%es
c0002542:	8e e0                	mov    %eax,%fs
c0002544:	b0 20                	mov    $0x20,%al
c0002546:	e6 20                	out    %al,$0x20
c0002548:	e6 a0                	out    %al,$0xa0
c000254a:	6a 45                	push   $0x45
c000254c:	fb                   	sti    
c000254d:	ff 15 34 af 00 c0    	call   *0xc000af34
c0002553:	e9 09 f5 ff ff       	jmp    c0001a61 <exit_int>

c0002558 <int70_entry>:
c0002558:	fa                   	cli    
c0002559:	6a 00                	push   $0x0
c000255b:	60                   	pusha  
c000255c:	1e                   	push   %ds
c000255d:	06                   	push   %es
c000255e:	0f a0                	push   %fs
c0002560:	0f a8                	push   %gs
c0002562:	66 b8 10 00          	mov    $0x10,%ax
c0002566:	8e d8                	mov    %eax,%ds
c0002568:	8e c0                	mov    %eax,%es
c000256a:	8e e0                	mov    %eax,%fs
c000256c:	b0 20                	mov    $0x20,%al
c000256e:	e6 20                	out    %al,$0x20
c0002570:	e6 a0                	out    %al,$0xa0
c0002572:	6a 46                	push   $0x46
c0002574:	fb                   	sti    
c0002575:	ff 15 38 af 00 c0    	call   *0xc000af38
c000257b:	e9 e1 f4 ff ff       	jmp    c0001a61 <exit_int>

c0002580 <int71_entry>:
c0002580:	fa                   	cli    
c0002581:	6a 00                	push   $0x0
c0002583:	60                   	pusha  
c0002584:	1e                   	push   %ds
c0002585:	06                   	push   %es
c0002586:	0f a0                	push   %fs
c0002588:	0f a8                	push   %gs
c000258a:	66 b8 10 00          	mov    $0x10,%ax
c000258e:	8e d8                	mov    %eax,%ds
c0002590:	8e c0                	mov    %eax,%es
c0002592:	8e e0                	mov    %eax,%fs
c0002594:	b0 20                	mov    $0x20,%al
c0002596:	e6 20                	out    %al,$0x20
c0002598:	e6 a0                	out    %al,$0xa0
c000259a:	6a 47                	push   $0x47
c000259c:	fb                   	sti    
c000259d:	ff 15 3c af 00 c0    	call   *0xc000af3c
c00025a3:	e9 b9 f4 ff ff       	jmp    c0001a61 <exit_int>

c00025a8 <int72_entry>:
c00025a8:	fa                   	cli    
c00025a9:	6a 00                	push   $0x0
c00025ab:	60                   	pusha  
c00025ac:	1e                   	push   %ds
c00025ad:	06                   	push   %es
c00025ae:	0f a0                	push   %fs
c00025b0:	0f a8                	push   %gs
c00025b2:	66 b8 10 00          	mov    $0x10,%ax
c00025b6:	8e d8                	mov    %eax,%ds
c00025b8:	8e c0                	mov    %eax,%es
c00025ba:	8e e0                	mov    %eax,%fs
c00025bc:	b0 20                	mov    $0x20,%al
c00025be:	e6 20                	out    %al,$0x20
c00025c0:	e6 a0                	out    %al,$0xa0
c00025c2:	6a 48                	push   $0x48
c00025c4:	fb                   	sti    
c00025c5:	ff 15 40 af 00 c0    	call   *0xc000af40
c00025cb:	e9 91 f4 ff ff       	jmp    c0001a61 <exit_int>

c00025d0 <int73_entry>:
c00025d0:	fa                   	cli    
c00025d1:	6a 00                	push   $0x0
c00025d3:	60                   	pusha  
c00025d4:	1e                   	push   %ds
c00025d5:	06                   	push   %es
c00025d6:	0f a0                	push   %fs
c00025d8:	0f a8                	push   %gs
c00025da:	66 b8 10 00          	mov    $0x10,%ax
c00025de:	8e d8                	mov    %eax,%ds
c00025e0:	8e c0                	mov    %eax,%es
c00025e2:	8e e0                	mov    %eax,%fs
c00025e4:	b0 20                	mov    $0x20,%al
c00025e6:	e6 20                	out    %al,$0x20
c00025e8:	e6 a0                	out    %al,$0xa0
c00025ea:	6a 49                	push   $0x49
c00025ec:	fb                   	sti    
c00025ed:	ff 15 44 af 00 c0    	call   *0xc000af44
c00025f3:	e9 69 f4 ff ff       	jmp    c0001a61 <exit_int>

c00025f8 <int74_entry>:
c00025f8:	fa                   	cli    
c00025f9:	6a 00                	push   $0x0
c00025fb:	60                   	pusha  
c00025fc:	1e                   	push   %ds
c00025fd:	06                   	push   %es
c00025fe:	0f a0                	push   %fs
c0002600:	0f a8                	push   %gs
c0002602:	66 b8 10 00          	mov    $0x10,%ax
c0002606:	8e d8                	mov    %eax,%ds
c0002608:	8e c0                	mov    %eax,%es
c000260a:	8e e0                	mov    %eax,%fs
c000260c:	b0 20                	mov    $0x20,%al
c000260e:	e6 20                	out    %al,$0x20
c0002610:	e6 a0                	out    %al,$0xa0
c0002612:	6a 4a                	push   $0x4a
c0002614:	fb                   	sti    
c0002615:	ff 15 48 af 00 c0    	call   *0xc000af48
c000261b:	e9 41 f4 ff ff       	jmp    c0001a61 <exit_int>

c0002620 <int75_entry>:
c0002620:	fa                   	cli    
c0002621:	6a 00                	push   $0x0
c0002623:	60                   	pusha  
c0002624:	1e                   	push   %ds
c0002625:	06                   	push   %es
c0002626:	0f a0                	push   %fs
c0002628:	0f a8                	push   %gs
c000262a:	66 b8 10 00          	mov    $0x10,%ax
c000262e:	8e d8                	mov    %eax,%ds
c0002630:	8e c0                	mov    %eax,%es
c0002632:	8e e0                	mov    %eax,%fs
c0002634:	b0 20                	mov    $0x20,%al
c0002636:	e6 20                	out    %al,$0x20
c0002638:	e6 a0                	out    %al,$0xa0
c000263a:	6a 4b                	push   $0x4b
c000263c:	fb                   	sti    
c000263d:	ff 15 4c af 00 c0    	call   *0xc000af4c
c0002643:	e9 19 f4 ff ff       	jmp    c0001a61 <exit_int>

c0002648 <int76_entry>:
c0002648:	fa                   	cli    
c0002649:	6a 00                	push   $0x0
c000264b:	60                   	pusha  
c000264c:	1e                   	push   %ds
c000264d:	06                   	push   %es
c000264e:	0f a0                	push   %fs
c0002650:	0f a8                	push   %gs
c0002652:	66 b8 10 00          	mov    $0x10,%ax
c0002656:	8e d8                	mov    %eax,%ds
c0002658:	8e c0                	mov    %eax,%es
c000265a:	8e e0                	mov    %eax,%fs
c000265c:	b0 20                	mov    $0x20,%al
c000265e:	e6 20                	out    %al,$0x20
c0002660:	e6 a0                	out    %al,$0xa0
c0002662:	6a 4c                	push   $0x4c
c0002664:	fb                   	sti    
c0002665:	ff 15 50 af 00 c0    	call   *0xc000af50
c000266b:	e9 f1 f3 ff ff       	jmp    c0001a61 <exit_int>

c0002670 <int77_entry>:
c0002670:	fa                   	cli    
c0002671:	6a 00                	push   $0x0
c0002673:	60                   	pusha  
c0002674:	1e                   	push   %ds
c0002675:	06                   	push   %es
c0002676:	0f a0                	push   %fs
c0002678:	0f a8                	push   %gs
c000267a:	66 b8 10 00          	mov    $0x10,%ax
c000267e:	8e d8                	mov    %eax,%ds
c0002680:	8e c0                	mov    %eax,%es
c0002682:	8e e0                	mov    %eax,%fs
c0002684:	b0 20                	mov    $0x20,%al
c0002686:	e6 20                	out    %al,$0x20
c0002688:	e6 a0                	out    %al,$0xa0
c000268a:	6a 4d                	push   $0x4d
c000268c:	fb                   	sti    
c000268d:	ff 15 54 af 00 c0    	call   *0xc000af54
c0002693:	e9 c9 f3 ff ff       	jmp    c0001a61 <exit_int>

c0002698 <int78_entry>:
c0002698:	fa                   	cli    
c0002699:	6a 00                	push   $0x0
c000269b:	60                   	pusha  
c000269c:	1e                   	push   %ds
c000269d:	06                   	push   %es
c000269e:	0f a0                	push   %fs
c00026a0:	0f a8                	push   %gs
c00026a2:	66 b8 10 00          	mov    $0x10,%ax
c00026a6:	8e d8                	mov    %eax,%ds
c00026a8:	8e c0                	mov    %eax,%es
c00026aa:	8e e0                	mov    %eax,%fs
c00026ac:	b0 20                	mov    $0x20,%al
c00026ae:	e6 20                	out    %al,$0x20
c00026b0:	e6 a0                	out    %al,$0xa0
c00026b2:	6a 4e                	push   $0x4e
c00026b4:	fb                   	sti    
c00026b5:	ff 15 58 af 00 c0    	call   *0xc000af58
c00026bb:	e9 a1 f3 ff ff       	jmp    c0001a61 <exit_int>

c00026c0 <int79_entry>:
c00026c0:	fa                   	cli    
c00026c1:	6a 00                	push   $0x0
c00026c3:	60                   	pusha  
c00026c4:	1e                   	push   %ds
c00026c5:	06                   	push   %es
c00026c6:	0f a0                	push   %fs
c00026c8:	0f a8                	push   %gs
c00026ca:	66 b8 10 00          	mov    $0x10,%ax
c00026ce:	8e d8                	mov    %eax,%ds
c00026d0:	8e c0                	mov    %eax,%es
c00026d2:	8e e0                	mov    %eax,%fs
c00026d4:	b0 20                	mov    $0x20,%al
c00026d6:	e6 20                	out    %al,$0x20
c00026d8:	e6 a0                	out    %al,$0xa0
c00026da:	6a 4f                	push   $0x4f
c00026dc:	fb                   	sti    
c00026dd:	ff 15 5c af 00 c0    	call   *0xc000af5c
c00026e3:	e9 79 f3 ff ff       	jmp    c0001a61 <exit_int>

c00026e8 <int80_entry>:
c00026e8:	fa                   	cli    
c00026e9:	6a 00                	push   $0x0
c00026eb:	60                   	pusha  
c00026ec:	1e                   	push   %ds
c00026ed:	06                   	push   %es
c00026ee:	0f a0                	push   %fs
c00026f0:	0f a8                	push   %gs
c00026f2:	66 b8 10 00          	mov    $0x10,%ax
c00026f6:	8e d8                	mov    %eax,%ds
c00026f8:	8e c0                	mov    %eax,%es
c00026fa:	8e e0                	mov    %eax,%fs
c00026fc:	b0 20                	mov    $0x20,%al
c00026fe:	e6 20                	out    %al,$0x20
c0002700:	e6 a0                	out    %al,$0xa0
c0002702:	6a 50                	push   $0x50
c0002704:	fb                   	sti    
c0002705:	ff 15 60 af 00 c0    	call   *0xc000af60
c000270b:	e9 51 f3 ff ff       	jmp    c0001a61 <exit_int>

c0002710 <int81_entry>:
c0002710:	fa                   	cli    
c0002711:	6a 00                	push   $0x0
c0002713:	60                   	pusha  
c0002714:	1e                   	push   %ds
c0002715:	06                   	push   %es
c0002716:	0f a0                	push   %fs
c0002718:	0f a8                	push   %gs
c000271a:	66 b8 10 00          	mov    $0x10,%ax
c000271e:	8e d8                	mov    %eax,%ds
c0002720:	8e c0                	mov    %eax,%es
c0002722:	8e e0                	mov    %eax,%fs
c0002724:	b0 20                	mov    $0x20,%al
c0002726:	e6 20                	out    %al,$0x20
c0002728:	e6 a0                	out    %al,$0xa0
c000272a:	6a 51                	push   $0x51
c000272c:	fb                   	sti    
c000272d:	ff 15 64 af 00 c0    	call   *0xc000af64
c0002733:	e9 29 f3 ff ff       	jmp    c0001a61 <exit_int>

c0002738 <int82_entry>:
c0002738:	fa                   	cli    
c0002739:	6a 00                	push   $0x0
c000273b:	60                   	pusha  
c000273c:	1e                   	push   %ds
c000273d:	06                   	push   %es
c000273e:	0f a0                	push   %fs
c0002740:	0f a8                	push   %gs
c0002742:	66 b8 10 00          	mov    $0x10,%ax
c0002746:	8e d8                	mov    %eax,%ds
c0002748:	8e c0                	mov    %eax,%es
c000274a:	8e e0                	mov    %eax,%fs
c000274c:	b0 20                	mov    $0x20,%al
c000274e:	e6 20                	out    %al,$0x20
c0002750:	e6 a0                	out    %al,$0xa0
c0002752:	6a 52                	push   $0x52
c0002754:	fb                   	sti    
c0002755:	ff 15 68 af 00 c0    	call   *0xc000af68
c000275b:	e9 01 f3 ff ff       	jmp    c0001a61 <exit_int>

c0002760 <int83_entry>:
c0002760:	fa                   	cli    
c0002761:	6a 00                	push   $0x0
c0002763:	60                   	pusha  
c0002764:	1e                   	push   %ds
c0002765:	06                   	push   %es
c0002766:	0f a0                	push   %fs
c0002768:	0f a8                	push   %gs
c000276a:	66 b8 10 00          	mov    $0x10,%ax
c000276e:	8e d8                	mov    %eax,%ds
c0002770:	8e c0                	mov    %eax,%es
c0002772:	8e e0                	mov    %eax,%fs
c0002774:	b0 20                	mov    $0x20,%al
c0002776:	e6 20                	out    %al,$0x20
c0002778:	e6 a0                	out    %al,$0xa0
c000277a:	6a 53                	push   $0x53
c000277c:	fb                   	sti    
c000277d:	ff 15 6c af 00 c0    	call   *0xc000af6c
c0002783:	e9 d9 f2 ff ff       	jmp    c0001a61 <exit_int>

c0002788 <int84_entry>:
c0002788:	fa                   	cli    
c0002789:	6a 00                	push   $0x0
c000278b:	60                   	pusha  
c000278c:	1e                   	push   %ds
c000278d:	06                   	push   %es
c000278e:	0f a0                	push   %fs
c0002790:	0f a8                	push   %gs
c0002792:	66 b8 10 00          	mov    $0x10,%ax
c0002796:	8e d8                	mov    %eax,%ds
c0002798:	8e c0                	mov    %eax,%es
c000279a:	8e e0                	mov    %eax,%fs
c000279c:	b0 20                	mov    $0x20,%al
c000279e:	e6 20                	out    %al,$0x20
c00027a0:	e6 a0                	out    %al,$0xa0
c00027a2:	6a 54                	push   $0x54
c00027a4:	fb                   	sti    
c00027a5:	ff 15 70 af 00 c0    	call   *0xc000af70
c00027ab:	e9 b1 f2 ff ff       	jmp    c0001a61 <exit_int>

c00027b0 <int85_entry>:
c00027b0:	fa                   	cli    
c00027b1:	6a 00                	push   $0x0
c00027b3:	60                   	pusha  
c00027b4:	1e                   	push   %ds
c00027b5:	06                   	push   %es
c00027b6:	0f a0                	push   %fs
c00027b8:	0f a8                	push   %gs
c00027ba:	66 b8 10 00          	mov    $0x10,%ax
c00027be:	8e d8                	mov    %eax,%ds
c00027c0:	8e c0                	mov    %eax,%es
c00027c2:	8e e0                	mov    %eax,%fs
c00027c4:	b0 20                	mov    $0x20,%al
c00027c6:	e6 20                	out    %al,$0x20
c00027c8:	e6 a0                	out    %al,$0xa0
c00027ca:	6a 55                	push   $0x55
c00027cc:	fb                   	sti    
c00027cd:	ff 15 74 af 00 c0    	call   *0xc000af74
c00027d3:	e9 89 f2 ff ff       	jmp    c0001a61 <exit_int>

c00027d8 <int86_entry>:
c00027d8:	fa                   	cli    
c00027d9:	6a 00                	push   $0x0
c00027db:	60                   	pusha  
c00027dc:	1e                   	push   %ds
c00027dd:	06                   	push   %es
c00027de:	0f a0                	push   %fs
c00027e0:	0f a8                	push   %gs
c00027e2:	66 b8 10 00          	mov    $0x10,%ax
c00027e6:	8e d8                	mov    %eax,%ds
c00027e8:	8e c0                	mov    %eax,%es
c00027ea:	8e e0                	mov    %eax,%fs
c00027ec:	b0 20                	mov    $0x20,%al
c00027ee:	e6 20                	out    %al,$0x20
c00027f0:	e6 a0                	out    %al,$0xa0
c00027f2:	6a 56                	push   $0x56
c00027f4:	fb                   	sti    
c00027f5:	ff 15 78 af 00 c0    	call   *0xc000af78
c00027fb:	e9 61 f2 ff ff       	jmp    c0001a61 <exit_int>

c0002800 <int87_entry>:
c0002800:	fa                   	cli    
c0002801:	6a 00                	push   $0x0
c0002803:	60                   	pusha  
c0002804:	1e                   	push   %ds
c0002805:	06                   	push   %es
c0002806:	0f a0                	push   %fs
c0002808:	0f a8                	push   %gs
c000280a:	66 b8 10 00          	mov    $0x10,%ax
c000280e:	8e d8                	mov    %eax,%ds
c0002810:	8e c0                	mov    %eax,%es
c0002812:	8e e0                	mov    %eax,%fs
c0002814:	b0 20                	mov    $0x20,%al
c0002816:	e6 20                	out    %al,$0x20
c0002818:	e6 a0                	out    %al,$0xa0
c000281a:	6a 57                	push   $0x57
c000281c:	fb                   	sti    
c000281d:	ff 15 7c af 00 c0    	call   *0xc000af7c
c0002823:	e9 39 f2 ff ff       	jmp    c0001a61 <exit_int>

c0002828 <int88_entry>:
c0002828:	fa                   	cli    
c0002829:	6a 00                	push   $0x0
c000282b:	60                   	pusha  
c000282c:	1e                   	push   %ds
c000282d:	06                   	push   %es
c000282e:	0f a0                	push   %fs
c0002830:	0f a8                	push   %gs
c0002832:	66 b8 10 00          	mov    $0x10,%ax
c0002836:	8e d8                	mov    %eax,%ds
c0002838:	8e c0                	mov    %eax,%es
c000283a:	8e e0                	mov    %eax,%fs
c000283c:	b0 20                	mov    $0x20,%al
c000283e:	e6 20                	out    %al,$0x20
c0002840:	e6 a0                	out    %al,$0xa0
c0002842:	6a 58                	push   $0x58
c0002844:	fb                   	sti    
c0002845:	ff 15 80 af 00 c0    	call   *0xc000af80
c000284b:	e9 11 f2 ff ff       	jmp    c0001a61 <exit_int>

c0002850 <int89_entry>:
c0002850:	fa                   	cli    
c0002851:	6a 00                	push   $0x0
c0002853:	60                   	pusha  
c0002854:	1e                   	push   %ds
c0002855:	06                   	push   %es
c0002856:	0f a0                	push   %fs
c0002858:	0f a8                	push   %gs
c000285a:	66 b8 10 00          	mov    $0x10,%ax
c000285e:	8e d8                	mov    %eax,%ds
c0002860:	8e c0                	mov    %eax,%es
c0002862:	8e e0                	mov    %eax,%fs
c0002864:	b0 20                	mov    $0x20,%al
c0002866:	e6 20                	out    %al,$0x20
c0002868:	e6 a0                	out    %al,$0xa0
c000286a:	6a 59                	push   $0x59
c000286c:	fb                   	sti    
c000286d:	ff 15 84 af 00 c0    	call   *0xc000af84
c0002873:	e9 e9 f1 ff ff       	jmp    c0001a61 <exit_int>

c0002878 <int90_entry>:
c0002878:	fa                   	cli    
c0002879:	6a 00                	push   $0x0
c000287b:	60                   	pusha  
c000287c:	1e                   	push   %ds
c000287d:	06                   	push   %es
c000287e:	0f a0                	push   %fs
c0002880:	0f a8                	push   %gs
c0002882:	66 b8 10 00          	mov    $0x10,%ax
c0002886:	8e d8                	mov    %eax,%ds
c0002888:	8e c0                	mov    %eax,%es
c000288a:	8e e0                	mov    %eax,%fs
c000288c:	b0 20                	mov    $0x20,%al
c000288e:	e6 20                	out    %al,$0x20
c0002890:	e6 a0                	out    %al,$0xa0
c0002892:	6a 5a                	push   $0x5a
c0002894:	fb                   	sti    
c0002895:	ff 15 88 af 00 c0    	call   *0xc000af88
c000289b:	e9 c1 f1 ff ff       	jmp    c0001a61 <exit_int>

c00028a0 <int91_entry>:
c00028a0:	fa                   	cli    
c00028a1:	6a 00                	push   $0x0
c00028a3:	60                   	pusha  
c00028a4:	1e                   	push   %ds
c00028a5:	06                   	push   %es
c00028a6:	0f a0                	push   %fs
c00028a8:	0f a8                	push   %gs
c00028aa:	66 b8 10 00          	mov    $0x10,%ax
c00028ae:	8e d8                	mov    %eax,%ds
c00028b0:	8e c0                	mov    %eax,%es
c00028b2:	8e e0                	mov    %eax,%fs
c00028b4:	b0 20                	mov    $0x20,%al
c00028b6:	e6 20                	out    %al,$0x20
c00028b8:	e6 a0                	out    %al,$0xa0
c00028ba:	6a 5b                	push   $0x5b
c00028bc:	fb                   	sti    
c00028bd:	ff 15 8c af 00 c0    	call   *0xc000af8c
c00028c3:	e9 99 f1 ff ff       	jmp    c0001a61 <exit_int>

c00028c8 <int92_entry>:
c00028c8:	fa                   	cli    
c00028c9:	6a 00                	push   $0x0
c00028cb:	60                   	pusha  
c00028cc:	1e                   	push   %ds
c00028cd:	06                   	push   %es
c00028ce:	0f a0                	push   %fs
c00028d0:	0f a8                	push   %gs
c00028d2:	66 b8 10 00          	mov    $0x10,%ax
c00028d6:	8e d8                	mov    %eax,%ds
c00028d8:	8e c0                	mov    %eax,%es
c00028da:	8e e0                	mov    %eax,%fs
c00028dc:	b0 20                	mov    $0x20,%al
c00028de:	e6 20                	out    %al,$0x20
c00028e0:	e6 a0                	out    %al,$0xa0
c00028e2:	6a 5c                	push   $0x5c
c00028e4:	fb                   	sti    
c00028e5:	ff 15 90 af 00 c0    	call   *0xc000af90
c00028eb:	e9 71 f1 ff ff       	jmp    c0001a61 <exit_int>

c00028f0 <int93_entry>:
c00028f0:	fa                   	cli    
c00028f1:	6a 00                	push   $0x0
c00028f3:	60                   	pusha  
c00028f4:	1e                   	push   %ds
c00028f5:	06                   	push   %es
c00028f6:	0f a0                	push   %fs
c00028f8:	0f a8                	push   %gs
c00028fa:	66 b8 10 00          	mov    $0x10,%ax
c00028fe:	8e d8                	mov    %eax,%ds
c0002900:	8e c0                	mov    %eax,%es
c0002902:	8e e0                	mov    %eax,%fs
c0002904:	b0 20                	mov    $0x20,%al
c0002906:	e6 20                	out    %al,$0x20
c0002908:	e6 a0                	out    %al,$0xa0
c000290a:	6a 5d                	push   $0x5d
c000290c:	fb                   	sti    
c000290d:	ff 15 94 af 00 c0    	call   *0xc000af94
c0002913:	e9 49 f1 ff ff       	jmp    c0001a61 <exit_int>

c0002918 <int94_entry>:
c0002918:	fa                   	cli    
c0002919:	6a 00                	push   $0x0
c000291b:	60                   	pusha  
c000291c:	1e                   	push   %ds
c000291d:	06                   	push   %es
c000291e:	0f a0                	push   %fs
c0002920:	0f a8                	push   %gs
c0002922:	66 b8 10 00          	mov    $0x10,%ax
c0002926:	8e d8                	mov    %eax,%ds
c0002928:	8e c0                	mov    %eax,%es
c000292a:	8e e0                	mov    %eax,%fs
c000292c:	b0 20                	mov    $0x20,%al
c000292e:	e6 20                	out    %al,$0x20
c0002930:	e6 a0                	out    %al,$0xa0
c0002932:	6a 5e                	push   $0x5e
c0002934:	fb                   	sti    
c0002935:	ff 15 98 af 00 c0    	call   *0xc000af98
c000293b:	e9 21 f1 ff ff       	jmp    c0001a61 <exit_int>

c0002940 <int95_entry>:
c0002940:	fa                   	cli    
c0002941:	6a 00                	push   $0x0
c0002943:	60                   	pusha  
c0002944:	1e                   	push   %ds
c0002945:	06                   	push   %es
c0002946:	0f a0                	push   %fs
c0002948:	0f a8                	push   %gs
c000294a:	66 b8 10 00          	mov    $0x10,%ax
c000294e:	8e d8                	mov    %eax,%ds
c0002950:	8e c0                	mov    %eax,%es
c0002952:	8e e0                	mov    %eax,%fs
c0002954:	b0 20                	mov    $0x20,%al
c0002956:	e6 20                	out    %al,$0x20
c0002958:	e6 a0                	out    %al,$0xa0
c000295a:	6a 5f                	push   $0x5f
c000295c:	fb                   	sti    
c000295d:	ff 15 9c af 00 c0    	call   *0xc000af9c
c0002963:	e9 f9 f0 ff ff       	jmp    c0001a61 <exit_int>

c0002968 <int96_entry>:
c0002968:	fa                   	cli    
c0002969:	6a 00                	push   $0x0
c000296b:	60                   	pusha  
c000296c:	1e                   	push   %ds
c000296d:	06                   	push   %es
c000296e:	0f a0                	push   %fs
c0002970:	0f a8                	push   %gs
c0002972:	66 b8 10 00          	mov    $0x10,%ax
c0002976:	8e d8                	mov    %eax,%ds
c0002978:	8e c0                	mov    %eax,%es
c000297a:	8e e0                	mov    %eax,%fs
c000297c:	b0 20                	mov    $0x20,%al
c000297e:	e6 20                	out    %al,$0x20
c0002980:	e6 a0                	out    %al,$0xa0
c0002982:	6a 60                	push   $0x60
c0002984:	fb                   	sti    
c0002985:	ff 15 a0 af 00 c0    	call   *0xc000afa0
c000298b:	e9 d1 f0 ff ff       	jmp    c0001a61 <exit_int>

c0002990 <int97_entry>:
c0002990:	fa                   	cli    
c0002991:	6a 00                	push   $0x0
c0002993:	60                   	pusha  
c0002994:	1e                   	push   %ds
c0002995:	06                   	push   %es
c0002996:	0f a0                	push   %fs
c0002998:	0f a8                	push   %gs
c000299a:	66 b8 10 00          	mov    $0x10,%ax
c000299e:	8e d8                	mov    %eax,%ds
c00029a0:	8e c0                	mov    %eax,%es
c00029a2:	8e e0                	mov    %eax,%fs
c00029a4:	b0 20                	mov    $0x20,%al
c00029a6:	e6 20                	out    %al,$0x20
c00029a8:	e6 a0                	out    %al,$0xa0
c00029aa:	6a 61                	push   $0x61
c00029ac:	fb                   	sti    
c00029ad:	ff 15 a4 af 00 c0    	call   *0xc000afa4
c00029b3:	e9 a9 f0 ff ff       	jmp    c0001a61 <exit_int>

c00029b8 <int98_entry>:
c00029b8:	fa                   	cli    
c00029b9:	6a 00                	push   $0x0
c00029bb:	60                   	pusha  
c00029bc:	1e                   	push   %ds
c00029bd:	06                   	push   %es
c00029be:	0f a0                	push   %fs
c00029c0:	0f a8                	push   %gs
c00029c2:	66 b8 10 00          	mov    $0x10,%ax
c00029c6:	8e d8                	mov    %eax,%ds
c00029c8:	8e c0                	mov    %eax,%es
c00029ca:	8e e0                	mov    %eax,%fs
c00029cc:	b0 20                	mov    $0x20,%al
c00029ce:	e6 20                	out    %al,$0x20
c00029d0:	e6 a0                	out    %al,$0xa0
c00029d2:	6a 62                	push   $0x62
c00029d4:	fb                   	sti    
c00029d5:	ff 15 a8 af 00 c0    	call   *0xc000afa8
c00029db:	e9 81 f0 ff ff       	jmp    c0001a61 <exit_int>

c00029e0 <int99_entry>:
c00029e0:	fa                   	cli    
c00029e1:	6a 00                	push   $0x0
c00029e3:	60                   	pusha  
c00029e4:	1e                   	push   %ds
c00029e5:	06                   	push   %es
c00029e6:	0f a0                	push   %fs
c00029e8:	0f a8                	push   %gs
c00029ea:	66 b8 10 00          	mov    $0x10,%ax
c00029ee:	8e d8                	mov    %eax,%ds
c00029f0:	8e c0                	mov    %eax,%es
c00029f2:	8e e0                	mov    %eax,%fs
c00029f4:	b0 20                	mov    $0x20,%al
c00029f6:	e6 20                	out    %al,$0x20
c00029f8:	e6 a0                	out    %al,$0xa0
c00029fa:	6a 63                	push   $0x63
c00029fc:	fb                   	sti    
c00029fd:	ff 15 ac af 00 c0    	call   *0xc000afac
c0002a03:	e9 59 f0 ff ff       	jmp    c0001a61 <exit_int>

c0002a08 <int100_entry>:
c0002a08:	fa                   	cli    
c0002a09:	6a 00                	push   $0x0
c0002a0b:	60                   	pusha  
c0002a0c:	1e                   	push   %ds
c0002a0d:	06                   	push   %es
c0002a0e:	0f a0                	push   %fs
c0002a10:	0f a8                	push   %gs
c0002a12:	66 b8 10 00          	mov    $0x10,%ax
c0002a16:	8e d8                	mov    %eax,%ds
c0002a18:	8e c0                	mov    %eax,%es
c0002a1a:	8e e0                	mov    %eax,%fs
c0002a1c:	b0 20                	mov    $0x20,%al
c0002a1e:	e6 20                	out    %al,$0x20
c0002a20:	e6 a0                	out    %al,$0xa0
c0002a22:	6a 64                	push   $0x64
c0002a24:	fb                   	sti    
c0002a25:	ff 15 b0 af 00 c0    	call   *0xc000afb0
c0002a2b:	e9 31 f0 ff ff       	jmp    c0001a61 <exit_int>

c0002a30 <int101_entry>:
c0002a30:	fa                   	cli    
c0002a31:	6a 00                	push   $0x0
c0002a33:	60                   	pusha  
c0002a34:	1e                   	push   %ds
c0002a35:	06                   	push   %es
c0002a36:	0f a0                	push   %fs
c0002a38:	0f a8                	push   %gs
c0002a3a:	66 b8 10 00          	mov    $0x10,%ax
c0002a3e:	8e d8                	mov    %eax,%ds
c0002a40:	8e c0                	mov    %eax,%es
c0002a42:	8e e0                	mov    %eax,%fs
c0002a44:	b0 20                	mov    $0x20,%al
c0002a46:	e6 20                	out    %al,$0x20
c0002a48:	e6 a0                	out    %al,$0xa0
c0002a4a:	6a 65                	push   $0x65
c0002a4c:	fb                   	sti    
c0002a4d:	ff 15 b4 af 00 c0    	call   *0xc000afb4
c0002a53:	e9 09 f0 ff ff       	jmp    c0001a61 <exit_int>

c0002a58 <int102_entry>:
c0002a58:	fa                   	cli    
c0002a59:	6a 00                	push   $0x0
c0002a5b:	60                   	pusha  
c0002a5c:	1e                   	push   %ds
c0002a5d:	06                   	push   %es
c0002a5e:	0f a0                	push   %fs
c0002a60:	0f a8                	push   %gs
c0002a62:	66 b8 10 00          	mov    $0x10,%ax
c0002a66:	8e d8                	mov    %eax,%ds
c0002a68:	8e c0                	mov    %eax,%es
c0002a6a:	8e e0                	mov    %eax,%fs
c0002a6c:	b0 20                	mov    $0x20,%al
c0002a6e:	e6 20                	out    %al,$0x20
c0002a70:	e6 a0                	out    %al,$0xa0
c0002a72:	6a 66                	push   $0x66
c0002a74:	fb                   	sti    
c0002a75:	ff 15 b8 af 00 c0    	call   *0xc000afb8
c0002a7b:	e9 e1 ef ff ff       	jmp    c0001a61 <exit_int>

c0002a80 <int103_entry>:
c0002a80:	fa                   	cli    
c0002a81:	6a 00                	push   $0x0
c0002a83:	60                   	pusha  
c0002a84:	1e                   	push   %ds
c0002a85:	06                   	push   %es
c0002a86:	0f a0                	push   %fs
c0002a88:	0f a8                	push   %gs
c0002a8a:	66 b8 10 00          	mov    $0x10,%ax
c0002a8e:	8e d8                	mov    %eax,%ds
c0002a90:	8e c0                	mov    %eax,%es
c0002a92:	8e e0                	mov    %eax,%fs
c0002a94:	b0 20                	mov    $0x20,%al
c0002a96:	e6 20                	out    %al,$0x20
c0002a98:	e6 a0                	out    %al,$0xa0
c0002a9a:	6a 67                	push   $0x67
c0002a9c:	fb                   	sti    
c0002a9d:	ff 15 bc af 00 c0    	call   *0xc000afbc
c0002aa3:	e9 b9 ef ff ff       	jmp    c0001a61 <exit_int>

c0002aa8 <int104_entry>:
c0002aa8:	fa                   	cli    
c0002aa9:	6a 00                	push   $0x0
c0002aab:	60                   	pusha  
c0002aac:	1e                   	push   %ds
c0002aad:	06                   	push   %es
c0002aae:	0f a0                	push   %fs
c0002ab0:	0f a8                	push   %gs
c0002ab2:	66 b8 10 00          	mov    $0x10,%ax
c0002ab6:	8e d8                	mov    %eax,%ds
c0002ab8:	8e c0                	mov    %eax,%es
c0002aba:	8e e0                	mov    %eax,%fs
c0002abc:	b0 20                	mov    $0x20,%al
c0002abe:	e6 20                	out    %al,$0x20
c0002ac0:	e6 a0                	out    %al,$0xa0
c0002ac2:	6a 68                	push   $0x68
c0002ac4:	fb                   	sti    
c0002ac5:	ff 15 c0 af 00 c0    	call   *0xc000afc0
c0002acb:	e9 91 ef ff ff       	jmp    c0001a61 <exit_int>

c0002ad0 <int105_entry>:
c0002ad0:	fa                   	cli    
c0002ad1:	6a 00                	push   $0x0
c0002ad3:	60                   	pusha  
c0002ad4:	1e                   	push   %ds
c0002ad5:	06                   	push   %es
c0002ad6:	0f a0                	push   %fs
c0002ad8:	0f a8                	push   %gs
c0002ada:	66 b8 10 00          	mov    $0x10,%ax
c0002ade:	8e d8                	mov    %eax,%ds
c0002ae0:	8e c0                	mov    %eax,%es
c0002ae2:	8e e0                	mov    %eax,%fs
c0002ae4:	b0 20                	mov    $0x20,%al
c0002ae6:	e6 20                	out    %al,$0x20
c0002ae8:	e6 a0                	out    %al,$0xa0
c0002aea:	6a 69                	push   $0x69
c0002aec:	fb                   	sti    
c0002aed:	ff 15 c4 af 00 c0    	call   *0xc000afc4
c0002af3:	e9 69 ef ff ff       	jmp    c0001a61 <exit_int>

c0002af8 <int106_entry>:
c0002af8:	fa                   	cli    
c0002af9:	6a 00                	push   $0x0
c0002afb:	60                   	pusha  
c0002afc:	1e                   	push   %ds
c0002afd:	06                   	push   %es
c0002afe:	0f a0                	push   %fs
c0002b00:	0f a8                	push   %gs
c0002b02:	66 b8 10 00          	mov    $0x10,%ax
c0002b06:	8e d8                	mov    %eax,%ds
c0002b08:	8e c0                	mov    %eax,%es
c0002b0a:	8e e0                	mov    %eax,%fs
c0002b0c:	b0 20                	mov    $0x20,%al
c0002b0e:	e6 20                	out    %al,$0x20
c0002b10:	e6 a0                	out    %al,$0xa0
c0002b12:	6a 6a                	push   $0x6a
c0002b14:	fb                   	sti    
c0002b15:	ff 15 c8 af 00 c0    	call   *0xc000afc8
c0002b1b:	e9 41 ef ff ff       	jmp    c0001a61 <exit_int>

c0002b20 <int107_entry>:
c0002b20:	fa                   	cli    
c0002b21:	6a 00                	push   $0x0
c0002b23:	60                   	pusha  
c0002b24:	1e                   	push   %ds
c0002b25:	06                   	push   %es
c0002b26:	0f a0                	push   %fs
c0002b28:	0f a8                	push   %gs
c0002b2a:	66 b8 10 00          	mov    $0x10,%ax
c0002b2e:	8e d8                	mov    %eax,%ds
c0002b30:	8e c0                	mov    %eax,%es
c0002b32:	8e e0                	mov    %eax,%fs
c0002b34:	b0 20                	mov    $0x20,%al
c0002b36:	e6 20                	out    %al,$0x20
c0002b38:	e6 a0                	out    %al,$0xa0
c0002b3a:	6a 6b                	push   $0x6b
c0002b3c:	fb                   	sti    
c0002b3d:	ff 15 cc af 00 c0    	call   *0xc000afcc
c0002b43:	e9 19 ef ff ff       	jmp    c0001a61 <exit_int>

c0002b48 <int108_entry>:
c0002b48:	fa                   	cli    
c0002b49:	6a 00                	push   $0x0
c0002b4b:	60                   	pusha  
c0002b4c:	1e                   	push   %ds
c0002b4d:	06                   	push   %es
c0002b4e:	0f a0                	push   %fs
c0002b50:	0f a8                	push   %gs
c0002b52:	66 b8 10 00          	mov    $0x10,%ax
c0002b56:	8e d8                	mov    %eax,%ds
c0002b58:	8e c0                	mov    %eax,%es
c0002b5a:	8e e0                	mov    %eax,%fs
c0002b5c:	b0 20                	mov    $0x20,%al
c0002b5e:	e6 20                	out    %al,$0x20
c0002b60:	e6 a0                	out    %al,$0xa0
c0002b62:	6a 6c                	push   $0x6c
c0002b64:	fb                   	sti    
c0002b65:	ff 15 d0 af 00 c0    	call   *0xc000afd0
c0002b6b:	e9 f1 ee ff ff       	jmp    c0001a61 <exit_int>

c0002b70 <int109_entry>:
c0002b70:	fa                   	cli    
c0002b71:	6a 00                	push   $0x0
c0002b73:	60                   	pusha  
c0002b74:	1e                   	push   %ds
c0002b75:	06                   	push   %es
c0002b76:	0f a0                	push   %fs
c0002b78:	0f a8                	push   %gs
c0002b7a:	66 b8 10 00          	mov    $0x10,%ax
c0002b7e:	8e d8                	mov    %eax,%ds
c0002b80:	8e c0                	mov    %eax,%es
c0002b82:	8e e0                	mov    %eax,%fs
c0002b84:	b0 20                	mov    $0x20,%al
c0002b86:	e6 20                	out    %al,$0x20
c0002b88:	e6 a0                	out    %al,$0xa0
c0002b8a:	6a 6d                	push   $0x6d
c0002b8c:	fb                   	sti    
c0002b8d:	ff 15 d4 af 00 c0    	call   *0xc000afd4
c0002b93:	e9 c9 ee ff ff       	jmp    c0001a61 <exit_int>

c0002b98 <int110_entry>:
c0002b98:	fa                   	cli    
c0002b99:	6a 00                	push   $0x0
c0002b9b:	60                   	pusha  
c0002b9c:	1e                   	push   %ds
c0002b9d:	06                   	push   %es
c0002b9e:	0f a0                	push   %fs
c0002ba0:	0f a8                	push   %gs
c0002ba2:	66 b8 10 00          	mov    $0x10,%ax
c0002ba6:	8e d8                	mov    %eax,%ds
c0002ba8:	8e c0                	mov    %eax,%es
c0002baa:	8e e0                	mov    %eax,%fs
c0002bac:	b0 20                	mov    $0x20,%al
c0002bae:	e6 20                	out    %al,$0x20
c0002bb0:	e6 a0                	out    %al,$0xa0
c0002bb2:	6a 6e                	push   $0x6e
c0002bb4:	fb                   	sti    
c0002bb5:	ff 15 d8 af 00 c0    	call   *0xc000afd8
c0002bbb:	e9 a1 ee ff ff       	jmp    c0001a61 <exit_int>

c0002bc0 <int111_entry>:
c0002bc0:	fa                   	cli    
c0002bc1:	6a 00                	push   $0x0
c0002bc3:	60                   	pusha  
c0002bc4:	1e                   	push   %ds
c0002bc5:	06                   	push   %es
c0002bc6:	0f a0                	push   %fs
c0002bc8:	0f a8                	push   %gs
c0002bca:	66 b8 10 00          	mov    $0x10,%ax
c0002bce:	8e d8                	mov    %eax,%ds
c0002bd0:	8e c0                	mov    %eax,%es
c0002bd2:	8e e0                	mov    %eax,%fs
c0002bd4:	b0 20                	mov    $0x20,%al
c0002bd6:	e6 20                	out    %al,$0x20
c0002bd8:	e6 a0                	out    %al,$0xa0
c0002bda:	6a 6f                	push   $0x6f
c0002bdc:	fb                   	sti    
c0002bdd:	ff 15 dc af 00 c0    	call   *0xc000afdc
c0002be3:	e9 79 ee ff ff       	jmp    c0001a61 <exit_int>

c0002be8 <int112_entry>:
c0002be8:	fa                   	cli    
c0002be9:	6a 00                	push   $0x0
c0002beb:	60                   	pusha  
c0002bec:	1e                   	push   %ds
c0002bed:	06                   	push   %es
c0002bee:	0f a0                	push   %fs
c0002bf0:	0f a8                	push   %gs
c0002bf2:	66 b8 10 00          	mov    $0x10,%ax
c0002bf6:	8e d8                	mov    %eax,%ds
c0002bf8:	8e c0                	mov    %eax,%es
c0002bfa:	8e e0                	mov    %eax,%fs
c0002bfc:	b0 20                	mov    $0x20,%al
c0002bfe:	e6 20                	out    %al,$0x20
c0002c00:	e6 a0                	out    %al,$0xa0
c0002c02:	6a 70                	push   $0x70
c0002c04:	fb                   	sti    
c0002c05:	ff 15 e0 af 00 c0    	call   *0xc000afe0
c0002c0b:	e9 51 ee ff ff       	jmp    c0001a61 <exit_int>

c0002c10 <int113_entry>:
c0002c10:	fa                   	cli    
c0002c11:	6a 00                	push   $0x0
c0002c13:	60                   	pusha  
c0002c14:	1e                   	push   %ds
c0002c15:	06                   	push   %es
c0002c16:	0f a0                	push   %fs
c0002c18:	0f a8                	push   %gs
c0002c1a:	66 b8 10 00          	mov    $0x10,%ax
c0002c1e:	8e d8                	mov    %eax,%ds
c0002c20:	8e c0                	mov    %eax,%es
c0002c22:	8e e0                	mov    %eax,%fs
c0002c24:	b0 20                	mov    $0x20,%al
c0002c26:	e6 20                	out    %al,$0x20
c0002c28:	e6 a0                	out    %al,$0xa0
c0002c2a:	6a 71                	push   $0x71
c0002c2c:	fb                   	sti    
c0002c2d:	ff 15 e4 af 00 c0    	call   *0xc000afe4
c0002c33:	e9 29 ee ff ff       	jmp    c0001a61 <exit_int>

c0002c38 <int114_entry>:
c0002c38:	fa                   	cli    
c0002c39:	6a 00                	push   $0x0
c0002c3b:	60                   	pusha  
c0002c3c:	1e                   	push   %ds
c0002c3d:	06                   	push   %es
c0002c3e:	0f a0                	push   %fs
c0002c40:	0f a8                	push   %gs
c0002c42:	66 b8 10 00          	mov    $0x10,%ax
c0002c46:	8e d8                	mov    %eax,%ds
c0002c48:	8e c0                	mov    %eax,%es
c0002c4a:	8e e0                	mov    %eax,%fs
c0002c4c:	b0 20                	mov    $0x20,%al
c0002c4e:	e6 20                	out    %al,$0x20
c0002c50:	e6 a0                	out    %al,$0xa0
c0002c52:	6a 72                	push   $0x72
c0002c54:	fb                   	sti    
c0002c55:	ff 15 e8 af 00 c0    	call   *0xc000afe8
c0002c5b:	e9 01 ee ff ff       	jmp    c0001a61 <exit_int>

c0002c60 <int115_entry>:
c0002c60:	fa                   	cli    
c0002c61:	6a 00                	push   $0x0
c0002c63:	60                   	pusha  
c0002c64:	1e                   	push   %ds
c0002c65:	06                   	push   %es
c0002c66:	0f a0                	push   %fs
c0002c68:	0f a8                	push   %gs
c0002c6a:	66 b8 10 00          	mov    $0x10,%ax
c0002c6e:	8e d8                	mov    %eax,%ds
c0002c70:	8e c0                	mov    %eax,%es
c0002c72:	8e e0                	mov    %eax,%fs
c0002c74:	b0 20                	mov    $0x20,%al
c0002c76:	e6 20                	out    %al,$0x20
c0002c78:	e6 a0                	out    %al,$0xa0
c0002c7a:	6a 73                	push   $0x73
c0002c7c:	fb                   	sti    
c0002c7d:	ff 15 ec af 00 c0    	call   *0xc000afec
c0002c83:	e9 d9 ed ff ff       	jmp    c0001a61 <exit_int>

c0002c88 <int116_entry>:
c0002c88:	fa                   	cli    
c0002c89:	6a 00                	push   $0x0
c0002c8b:	60                   	pusha  
c0002c8c:	1e                   	push   %ds
c0002c8d:	06                   	push   %es
c0002c8e:	0f a0                	push   %fs
c0002c90:	0f a8                	push   %gs
c0002c92:	66 b8 10 00          	mov    $0x10,%ax
c0002c96:	8e d8                	mov    %eax,%ds
c0002c98:	8e c0                	mov    %eax,%es
c0002c9a:	8e e0                	mov    %eax,%fs
c0002c9c:	b0 20                	mov    $0x20,%al
c0002c9e:	e6 20                	out    %al,$0x20
c0002ca0:	e6 a0                	out    %al,$0xa0
c0002ca2:	6a 74                	push   $0x74
c0002ca4:	fb                   	sti    
c0002ca5:	ff 15 f0 af 00 c0    	call   *0xc000aff0
c0002cab:	e9 b1 ed ff ff       	jmp    c0001a61 <exit_int>

c0002cb0 <int117_entry>:
c0002cb0:	fa                   	cli    
c0002cb1:	6a 00                	push   $0x0
c0002cb3:	60                   	pusha  
c0002cb4:	1e                   	push   %ds
c0002cb5:	06                   	push   %es
c0002cb6:	0f a0                	push   %fs
c0002cb8:	0f a8                	push   %gs
c0002cba:	66 b8 10 00          	mov    $0x10,%ax
c0002cbe:	8e d8                	mov    %eax,%ds
c0002cc0:	8e c0                	mov    %eax,%es
c0002cc2:	8e e0                	mov    %eax,%fs
c0002cc4:	b0 20                	mov    $0x20,%al
c0002cc6:	e6 20                	out    %al,$0x20
c0002cc8:	e6 a0                	out    %al,$0xa0
c0002cca:	6a 75                	push   $0x75
c0002ccc:	fb                   	sti    
c0002ccd:	ff 15 f4 af 00 c0    	call   *0xc000aff4
c0002cd3:	e9 89 ed ff ff       	jmp    c0001a61 <exit_int>

c0002cd8 <int118_entry>:
c0002cd8:	fa                   	cli    
c0002cd9:	6a 00                	push   $0x0
c0002cdb:	60                   	pusha  
c0002cdc:	1e                   	push   %ds
c0002cdd:	06                   	push   %es
c0002cde:	0f a0                	push   %fs
c0002ce0:	0f a8                	push   %gs
c0002ce2:	66 b8 10 00          	mov    $0x10,%ax
c0002ce6:	8e d8                	mov    %eax,%ds
c0002ce8:	8e c0                	mov    %eax,%es
c0002cea:	8e e0                	mov    %eax,%fs
c0002cec:	b0 20                	mov    $0x20,%al
c0002cee:	e6 20                	out    %al,$0x20
c0002cf0:	e6 a0                	out    %al,$0xa0
c0002cf2:	6a 76                	push   $0x76
c0002cf4:	fb                   	sti    
c0002cf5:	ff 15 f8 af 00 c0    	call   *0xc000aff8
c0002cfb:	e9 61 ed ff ff       	jmp    c0001a61 <exit_int>

c0002d00 <int119_entry>:
c0002d00:	fa                   	cli    
c0002d01:	6a 00                	push   $0x0
c0002d03:	60                   	pusha  
c0002d04:	1e                   	push   %ds
c0002d05:	06                   	push   %es
c0002d06:	0f a0                	push   %fs
c0002d08:	0f a8                	push   %gs
c0002d0a:	66 b8 10 00          	mov    $0x10,%ax
c0002d0e:	8e d8                	mov    %eax,%ds
c0002d10:	8e c0                	mov    %eax,%es
c0002d12:	8e e0                	mov    %eax,%fs
c0002d14:	b0 20                	mov    $0x20,%al
c0002d16:	e6 20                	out    %al,$0x20
c0002d18:	e6 a0                	out    %al,$0xa0
c0002d1a:	6a 77                	push   $0x77
c0002d1c:	fb                   	sti    
c0002d1d:	ff 15 fc af 00 c0    	call   *0xc000affc
c0002d23:	e9 39 ed ff ff       	jmp    c0001a61 <exit_int>

c0002d28 <int120_entry>:
c0002d28:	fa                   	cli    
c0002d29:	6a 00                	push   $0x0
c0002d2b:	60                   	pusha  
c0002d2c:	1e                   	push   %ds
c0002d2d:	06                   	push   %es
c0002d2e:	0f a0                	push   %fs
c0002d30:	0f a8                	push   %gs
c0002d32:	66 b8 10 00          	mov    $0x10,%ax
c0002d36:	8e d8                	mov    %eax,%ds
c0002d38:	8e c0                	mov    %eax,%es
c0002d3a:	8e e0                	mov    %eax,%fs
c0002d3c:	b0 20                	mov    $0x20,%al
c0002d3e:	e6 20                	out    %al,$0x20
c0002d40:	e6 a0                	out    %al,$0xa0
c0002d42:	6a 78                	push   $0x78
c0002d44:	fb                   	sti    
c0002d45:	ff 15 00 b0 00 c0    	call   *0xc000b000
c0002d4b:	e9 11 ed ff ff       	jmp    c0001a61 <exit_int>

c0002d50 <int121_entry>:
c0002d50:	fa                   	cli    
c0002d51:	6a 00                	push   $0x0
c0002d53:	60                   	pusha  
c0002d54:	1e                   	push   %ds
c0002d55:	06                   	push   %es
c0002d56:	0f a0                	push   %fs
c0002d58:	0f a8                	push   %gs
c0002d5a:	66 b8 10 00          	mov    $0x10,%ax
c0002d5e:	8e d8                	mov    %eax,%ds
c0002d60:	8e c0                	mov    %eax,%es
c0002d62:	8e e0                	mov    %eax,%fs
c0002d64:	b0 20                	mov    $0x20,%al
c0002d66:	e6 20                	out    %al,$0x20
c0002d68:	e6 a0                	out    %al,$0xa0
c0002d6a:	6a 79                	push   $0x79
c0002d6c:	fb                   	sti    
c0002d6d:	ff 15 04 b0 00 c0    	call   *0xc000b004
c0002d73:	e9 e9 ec ff ff       	jmp    c0001a61 <exit_int>

c0002d78 <int122_entry>:
c0002d78:	fa                   	cli    
c0002d79:	6a 00                	push   $0x0
c0002d7b:	60                   	pusha  
c0002d7c:	1e                   	push   %ds
c0002d7d:	06                   	push   %es
c0002d7e:	0f a0                	push   %fs
c0002d80:	0f a8                	push   %gs
c0002d82:	66 b8 10 00          	mov    $0x10,%ax
c0002d86:	8e d8                	mov    %eax,%ds
c0002d88:	8e c0                	mov    %eax,%es
c0002d8a:	8e e0                	mov    %eax,%fs
c0002d8c:	b0 20                	mov    $0x20,%al
c0002d8e:	e6 20                	out    %al,$0x20
c0002d90:	e6 a0                	out    %al,$0xa0
c0002d92:	6a 7a                	push   $0x7a
c0002d94:	fb                   	sti    
c0002d95:	ff 15 08 b0 00 c0    	call   *0xc000b008
c0002d9b:	e9 c1 ec ff ff       	jmp    c0001a61 <exit_int>

c0002da0 <int123_entry>:
c0002da0:	fa                   	cli    
c0002da1:	6a 00                	push   $0x0
c0002da3:	60                   	pusha  
c0002da4:	1e                   	push   %ds
c0002da5:	06                   	push   %es
c0002da6:	0f a0                	push   %fs
c0002da8:	0f a8                	push   %gs
c0002daa:	66 b8 10 00          	mov    $0x10,%ax
c0002dae:	8e d8                	mov    %eax,%ds
c0002db0:	8e c0                	mov    %eax,%es
c0002db2:	8e e0                	mov    %eax,%fs
c0002db4:	b0 20                	mov    $0x20,%al
c0002db6:	e6 20                	out    %al,$0x20
c0002db8:	e6 a0                	out    %al,$0xa0
c0002dba:	6a 7b                	push   $0x7b
c0002dbc:	fb                   	sti    
c0002dbd:	ff 15 0c b0 00 c0    	call   *0xc000b00c
c0002dc3:	e9 99 ec ff ff       	jmp    c0001a61 <exit_int>

c0002dc8 <int124_entry>:
c0002dc8:	fa                   	cli    
c0002dc9:	6a 00                	push   $0x0
c0002dcb:	60                   	pusha  
c0002dcc:	1e                   	push   %ds
c0002dcd:	06                   	push   %es
c0002dce:	0f a0                	push   %fs
c0002dd0:	0f a8                	push   %gs
c0002dd2:	66 b8 10 00          	mov    $0x10,%ax
c0002dd6:	8e d8                	mov    %eax,%ds
c0002dd8:	8e c0                	mov    %eax,%es
c0002dda:	8e e0                	mov    %eax,%fs
c0002ddc:	b0 20                	mov    $0x20,%al
c0002dde:	e6 20                	out    %al,$0x20
c0002de0:	e6 a0                	out    %al,$0xa0
c0002de2:	6a 7c                	push   $0x7c
c0002de4:	fb                   	sti    
c0002de5:	ff 15 10 b0 00 c0    	call   *0xc000b010
c0002deb:	e9 71 ec ff ff       	jmp    c0001a61 <exit_int>

c0002df0 <int125_entry>:
c0002df0:	fa                   	cli    
c0002df1:	6a 00                	push   $0x0
c0002df3:	60                   	pusha  
c0002df4:	1e                   	push   %ds
c0002df5:	06                   	push   %es
c0002df6:	0f a0                	push   %fs
c0002df8:	0f a8                	push   %gs
c0002dfa:	66 b8 10 00          	mov    $0x10,%ax
c0002dfe:	8e d8                	mov    %eax,%ds
c0002e00:	8e c0                	mov    %eax,%es
c0002e02:	8e e0                	mov    %eax,%fs
c0002e04:	b0 20                	mov    $0x20,%al
c0002e06:	e6 20                	out    %al,$0x20
c0002e08:	e6 a0                	out    %al,$0xa0
c0002e0a:	6a 7d                	push   $0x7d
c0002e0c:	fb                   	sti    
c0002e0d:	ff 15 14 b0 00 c0    	call   *0xc000b014
c0002e13:	e9 49 ec ff ff       	jmp    c0001a61 <exit_int>

c0002e18 <int126_entry>:
c0002e18:	fa                   	cli    
c0002e19:	6a 00                	push   $0x0
c0002e1b:	60                   	pusha  
c0002e1c:	1e                   	push   %ds
c0002e1d:	06                   	push   %es
c0002e1e:	0f a0                	push   %fs
c0002e20:	0f a8                	push   %gs
c0002e22:	66 b8 10 00          	mov    $0x10,%ax
c0002e26:	8e d8                	mov    %eax,%ds
c0002e28:	8e c0                	mov    %eax,%es
c0002e2a:	8e e0                	mov    %eax,%fs
c0002e2c:	b0 20                	mov    $0x20,%al
c0002e2e:	e6 20                	out    %al,$0x20
c0002e30:	e6 a0                	out    %al,$0xa0
c0002e32:	6a 7e                	push   $0x7e
c0002e34:	fb                   	sti    
c0002e35:	ff 15 18 b0 00 c0    	call   *0xc000b018
c0002e3b:	e9 21 ec ff ff       	jmp    c0001a61 <exit_int>

c0002e40 <int127_entry>:
c0002e40:	fa                   	cli    
c0002e41:	6a 00                	push   $0x0
c0002e43:	60                   	pusha  
c0002e44:	1e                   	push   %ds
c0002e45:	06                   	push   %es
c0002e46:	0f a0                	push   %fs
c0002e48:	0f a8                	push   %gs
c0002e4a:	66 b8 10 00          	mov    $0x10,%ax
c0002e4e:	8e d8                	mov    %eax,%ds
c0002e50:	8e c0                	mov    %eax,%es
c0002e52:	8e e0                	mov    %eax,%fs
c0002e54:	b0 20                	mov    $0x20,%al
c0002e56:	e6 20                	out    %al,$0x20
c0002e58:	e6 a0                	out    %al,$0xa0
c0002e5a:	6a 7f                	push   $0x7f
c0002e5c:	fb                   	sti    
c0002e5d:	ff 15 1c b0 00 c0    	call   *0xc000b01c
c0002e63:	e9 f9 eb ff ff       	jmp    c0001a61 <exit_int>

c0002e68 <int_entry_fill>:
c0002e68:	c7 05 00 a0 00 c0 75 	movl   $0xc0001a75,0xc000a000
c0002e6f:	1a 00 c0 
c0002e72:	c7 05 04 a0 00 c0 9a 	movl   $0xc0001a9a,0xc000a004
c0002e79:	1a 00 c0 
c0002e7c:	c7 05 08 a0 00 c0 bf 	movl   $0xc0001abf,0xc000a008
c0002e83:	1a 00 c0 
c0002e86:	c7 05 0c a0 00 c0 e7 	movl   $0xc0001ae7,0xc000a00c
c0002e8d:	1a 00 c0 
c0002e90:	c7 05 10 a0 00 c0 0f 	movl   $0xc0001b0f,0xc000a010
c0002e97:	1b 00 c0 
c0002e9a:	c7 05 14 a0 00 c0 37 	movl   $0xc0001b37,0xc000a014
c0002ea1:	1b 00 c0 
c0002ea4:	c7 05 18 a0 00 c0 5f 	movl   $0xc0001b5f,0xc000a018
c0002eab:	1b 00 c0 
c0002eae:	c7 05 1c a0 00 c0 87 	movl   $0xc0001b87,0xc000a01c
c0002eb5:	1b 00 c0 
c0002eb8:	c7 05 20 a0 00 c0 af 	movl   $0xc0001baf,0xc000a020
c0002ebf:	1b 00 c0 
c0002ec2:	c7 05 24 a0 00 c0 d6 	movl   $0xc0001bd6,0xc000a024
c0002ec9:	1b 00 c0 
c0002ecc:	c7 05 28 a0 00 c0 fe 	movl   $0xc0001bfe,0xc000a028
c0002ed3:	1b 00 c0 
c0002ed6:	c7 05 2c a0 00 c0 25 	movl   $0xc0001c25,0xc000a02c
c0002edd:	1c 00 c0 
c0002ee0:	c7 05 30 a0 00 c0 4c 	movl   $0xc0001c4c,0xc000a030
c0002ee7:	1c 00 c0 
c0002eea:	c7 05 34 a0 00 c0 73 	movl   $0xc0001c73,0xc000a034
c0002ef1:	1c 00 c0 
c0002ef4:	c7 05 38 a0 00 c0 9a 	movl   $0xc0001c9a,0xc000a038
c0002efb:	1c 00 c0 
c0002efe:	c7 05 3c a0 00 c0 c1 	movl   $0xc0001cc1,0xc000a03c
c0002f05:	1c 00 c0 
c0002f08:	c7 05 40 a0 00 c0 e9 	movl   $0xc0001ce9,0xc000a040
c0002f0f:	1c 00 c0 
c0002f12:	c7 05 44 a0 00 c0 11 	movl   $0xc0001d11,0xc000a044
c0002f19:	1d 00 c0 
c0002f1c:	c7 05 48 a0 00 c0 38 	movl   $0xc0001d38,0xc000a048
c0002f23:	1d 00 c0 
c0002f26:	c7 05 4c a0 00 c0 60 	movl   $0xc0001d60,0xc000a04c
c0002f2d:	1d 00 c0 
c0002f30:	c7 05 50 a0 00 c0 88 	movl   $0xc0001d88,0xc000a050
c0002f37:	1d 00 c0 
c0002f3a:	c7 05 54 a0 00 c0 b0 	movl   $0xc0001db0,0xc000a054
c0002f41:	1d 00 c0 
c0002f44:	c7 05 58 a0 00 c0 d8 	movl   $0xc0001dd8,0xc000a058
c0002f4b:	1d 00 c0 
c0002f4e:	c7 05 5c a0 00 c0 00 	movl   $0xc0001e00,0xc000a05c
c0002f55:	1e 00 c0 
c0002f58:	c7 05 60 a0 00 c0 28 	movl   $0xc0001e28,0xc000a060
c0002f5f:	1e 00 c0 
c0002f62:	c7 05 64 a0 00 c0 50 	movl   $0xc0001e50,0xc000a064
c0002f69:	1e 00 c0 
c0002f6c:	c7 05 68 a0 00 c0 78 	movl   $0xc0001e78,0xc000a068
c0002f73:	1e 00 c0 
c0002f76:	c7 05 6c a0 00 c0 a0 	movl   $0xc0001ea0,0xc000a06c
c0002f7d:	1e 00 c0 
c0002f80:	c7 05 70 a0 00 c0 c8 	movl   $0xc0001ec8,0xc000a070
c0002f87:	1e 00 c0 
c0002f8a:	c7 05 74 a0 00 c0 f0 	movl   $0xc0001ef0,0xc000a074
c0002f91:	1e 00 c0 
c0002f94:	c7 05 78 a0 00 c0 18 	movl   $0xc0001f18,0xc000a078
c0002f9b:	1f 00 c0 
c0002f9e:	c7 05 7c a0 00 c0 40 	movl   $0xc0001f40,0xc000a07c
c0002fa5:	1f 00 c0 
c0002fa8:	c7 05 80 a0 00 c0 68 	movl   $0xc0001f68,0xc000a080
c0002faf:	1f 00 c0 
c0002fb2:	c7 05 84 a0 00 c0 90 	movl   $0xc0001f90,0xc000a084
c0002fb9:	1f 00 c0 
c0002fbc:	c7 05 88 a0 00 c0 b8 	movl   $0xc0001fb8,0xc000a088
c0002fc3:	1f 00 c0 
c0002fc6:	c7 05 8c a0 00 c0 e0 	movl   $0xc0001fe0,0xc000a08c
c0002fcd:	1f 00 c0 
c0002fd0:	c7 05 90 a0 00 c0 08 	movl   $0xc0002008,0xc000a090
c0002fd7:	20 00 c0 
c0002fda:	c7 05 94 a0 00 c0 30 	movl   $0xc0002030,0xc000a094
c0002fe1:	20 00 c0 
c0002fe4:	c7 05 98 a0 00 c0 58 	movl   $0xc0002058,0xc000a098
c0002feb:	20 00 c0 
c0002fee:	c7 05 9c a0 00 c0 80 	movl   $0xc0002080,0xc000a09c
c0002ff5:	20 00 c0 
c0002ff8:	c7 05 a0 a0 00 c0 a8 	movl   $0xc00020a8,0xc000a0a0
c0002fff:	20 00 c0 
c0003002:	c7 05 a4 a0 00 c0 d0 	movl   $0xc00020d0,0xc000a0a4
c0003009:	20 00 c0 
c000300c:	c7 05 a8 a0 00 c0 f8 	movl   $0xc00020f8,0xc000a0a8
c0003013:	20 00 c0 
c0003016:	c7 05 ac a0 00 c0 20 	movl   $0xc0002120,0xc000a0ac
c000301d:	21 00 c0 
c0003020:	c7 05 b0 a0 00 c0 48 	movl   $0xc0002148,0xc000a0b0
c0003027:	21 00 c0 
c000302a:	c7 05 b4 a0 00 c0 70 	movl   $0xc0002170,0xc000a0b4
c0003031:	21 00 c0 
c0003034:	c7 05 b8 a0 00 c0 98 	movl   $0xc0002198,0xc000a0b8
c000303b:	21 00 c0 
c000303e:	c7 05 bc a0 00 c0 c0 	movl   $0xc00021c0,0xc000a0bc
c0003045:	21 00 c0 
c0003048:	c7 05 c0 a0 00 c0 e8 	movl   $0xc00021e8,0xc000a0c0
c000304f:	21 00 c0 
c0003052:	c7 05 c4 a0 00 c0 10 	movl   $0xc0002210,0xc000a0c4
c0003059:	22 00 c0 
c000305c:	c7 05 c8 a0 00 c0 38 	movl   $0xc0002238,0xc000a0c8
c0003063:	22 00 c0 
c0003066:	c7 05 cc a0 00 c0 60 	movl   $0xc0002260,0xc000a0cc
c000306d:	22 00 c0 
c0003070:	c7 05 d0 a0 00 c0 88 	movl   $0xc0002288,0xc000a0d0
c0003077:	22 00 c0 
c000307a:	c7 05 d4 a0 00 c0 b0 	movl   $0xc00022b0,0xc000a0d4
c0003081:	22 00 c0 
c0003084:	c7 05 d8 a0 00 c0 d8 	movl   $0xc00022d8,0xc000a0d8
c000308b:	22 00 c0 
c000308e:	c7 05 dc a0 00 c0 00 	movl   $0xc0002300,0xc000a0dc
c0003095:	23 00 c0 
c0003098:	c7 05 e0 a0 00 c0 28 	movl   $0xc0002328,0xc000a0e0
c000309f:	23 00 c0 
c00030a2:	c7 05 e4 a0 00 c0 50 	movl   $0xc0002350,0xc000a0e4
c00030a9:	23 00 c0 
c00030ac:	c7 05 e8 a0 00 c0 78 	movl   $0xc0002378,0xc000a0e8
c00030b3:	23 00 c0 
c00030b6:	c7 05 ec a0 00 c0 a0 	movl   $0xc00023a0,0xc000a0ec
c00030bd:	23 00 c0 
c00030c0:	c7 05 f0 a0 00 c0 c8 	movl   $0xc00023c8,0xc000a0f0
c00030c7:	23 00 c0 
c00030ca:	c7 05 f4 a0 00 c0 f0 	movl   $0xc00023f0,0xc000a0f4
c00030d1:	23 00 c0 
c00030d4:	c7 05 f8 a0 00 c0 18 	movl   $0xc0002418,0xc000a0f8
c00030db:	24 00 c0 
c00030de:	c7 05 fc a0 00 c0 40 	movl   $0xc0002440,0xc000a0fc
c00030e5:	24 00 c0 
c00030e8:	c7 05 00 a1 00 c0 68 	movl   $0xc0002468,0xc000a100
c00030ef:	24 00 c0 
c00030f2:	c7 05 04 a1 00 c0 90 	movl   $0xc0002490,0xc000a104
c00030f9:	24 00 c0 
c00030fc:	c7 05 08 a1 00 c0 b8 	movl   $0xc00024b8,0xc000a108
c0003103:	24 00 c0 
c0003106:	c7 05 0c a1 00 c0 e0 	movl   $0xc00024e0,0xc000a10c
c000310d:	24 00 c0 
c0003110:	c7 05 10 a1 00 c0 08 	movl   $0xc0002508,0xc000a110
c0003117:	25 00 c0 
c000311a:	c7 05 14 a1 00 c0 30 	movl   $0xc0002530,0xc000a114
c0003121:	25 00 c0 
c0003124:	c7 05 18 a1 00 c0 58 	movl   $0xc0002558,0xc000a118
c000312b:	25 00 c0 
c000312e:	c7 05 1c a1 00 c0 80 	movl   $0xc0002580,0xc000a11c
c0003135:	25 00 c0 
c0003138:	c7 05 20 a1 00 c0 a8 	movl   $0xc00025a8,0xc000a120
c000313f:	25 00 c0 
c0003142:	c7 05 24 a1 00 c0 d0 	movl   $0xc00025d0,0xc000a124
c0003149:	25 00 c0 
c000314c:	c7 05 28 a1 00 c0 f8 	movl   $0xc00025f8,0xc000a128
c0003153:	25 00 c0 
c0003156:	c7 05 2c a1 00 c0 20 	movl   $0xc0002620,0xc000a12c
c000315d:	26 00 c0 
c0003160:	c7 05 30 a1 00 c0 48 	movl   $0xc0002648,0xc000a130
c0003167:	26 00 c0 
c000316a:	c7 05 34 a1 00 c0 70 	movl   $0xc0002670,0xc000a134
c0003171:	26 00 c0 
c0003174:	c7 05 38 a1 00 c0 98 	movl   $0xc0002698,0xc000a138
c000317b:	26 00 c0 
c000317e:	c7 05 3c a1 00 c0 c0 	movl   $0xc00026c0,0xc000a13c
c0003185:	26 00 c0 
c0003188:	c7 05 40 a1 00 c0 e8 	movl   $0xc00026e8,0xc000a140
c000318f:	26 00 c0 
c0003192:	c7 05 44 a1 00 c0 10 	movl   $0xc0002710,0xc000a144
c0003199:	27 00 c0 
c000319c:	c7 05 48 a1 00 c0 38 	movl   $0xc0002738,0xc000a148
c00031a3:	27 00 c0 
c00031a6:	c7 05 4c a1 00 c0 60 	movl   $0xc0002760,0xc000a14c
c00031ad:	27 00 c0 
c00031b0:	c7 05 50 a1 00 c0 88 	movl   $0xc0002788,0xc000a150
c00031b7:	27 00 c0 
c00031ba:	c7 05 54 a1 00 c0 b0 	movl   $0xc00027b0,0xc000a154
c00031c1:	27 00 c0 
c00031c4:	c7 05 58 a1 00 c0 d8 	movl   $0xc00027d8,0xc000a158
c00031cb:	27 00 c0 
c00031ce:	c7 05 5c a1 00 c0 00 	movl   $0xc0002800,0xc000a15c
c00031d5:	28 00 c0 
c00031d8:	c7 05 60 a1 00 c0 28 	movl   $0xc0002828,0xc000a160
c00031df:	28 00 c0 
c00031e2:	c7 05 64 a1 00 c0 50 	movl   $0xc0002850,0xc000a164
c00031e9:	28 00 c0 
c00031ec:	c7 05 68 a1 00 c0 78 	movl   $0xc0002878,0xc000a168
c00031f3:	28 00 c0 
c00031f6:	c7 05 6c a1 00 c0 a0 	movl   $0xc00028a0,0xc000a16c
c00031fd:	28 00 c0 
c0003200:	c7 05 70 a1 00 c0 c8 	movl   $0xc00028c8,0xc000a170
c0003207:	28 00 c0 
c000320a:	c7 05 74 a1 00 c0 f0 	movl   $0xc00028f0,0xc000a174
c0003211:	28 00 c0 
c0003214:	c7 05 78 a1 00 c0 18 	movl   $0xc0002918,0xc000a178
c000321b:	29 00 c0 
c000321e:	c7 05 7c a1 00 c0 40 	movl   $0xc0002940,0xc000a17c
c0003225:	29 00 c0 
c0003228:	c7 05 80 a1 00 c0 68 	movl   $0xc0002968,0xc000a180
c000322f:	29 00 c0 
c0003232:	c7 05 84 a1 00 c0 90 	movl   $0xc0002990,0xc000a184
c0003239:	29 00 c0 
c000323c:	c7 05 88 a1 00 c0 b8 	movl   $0xc00029b8,0xc000a188
c0003243:	29 00 c0 
c0003246:	c7 05 8c a1 00 c0 e0 	movl   $0xc00029e0,0xc000a18c
c000324d:	29 00 c0 
c0003250:	c7 05 90 a1 00 c0 08 	movl   $0xc0002a08,0xc000a190
c0003257:	2a 00 c0 
c000325a:	c7 05 94 a1 00 c0 30 	movl   $0xc0002a30,0xc000a194
c0003261:	2a 00 c0 
c0003264:	c7 05 98 a1 00 c0 58 	movl   $0xc0002a58,0xc000a198
c000326b:	2a 00 c0 
c000326e:	c7 05 9c a1 00 c0 80 	movl   $0xc0002a80,0xc000a19c
c0003275:	2a 00 c0 
c0003278:	c7 05 a0 a1 00 c0 a8 	movl   $0xc0002aa8,0xc000a1a0
c000327f:	2a 00 c0 
c0003282:	c7 05 a4 a1 00 c0 d0 	movl   $0xc0002ad0,0xc000a1a4
c0003289:	2a 00 c0 
c000328c:	c7 05 a8 a1 00 c0 f8 	movl   $0xc0002af8,0xc000a1a8
c0003293:	2a 00 c0 
c0003296:	c7 05 ac a1 00 c0 20 	movl   $0xc0002b20,0xc000a1ac
c000329d:	2b 00 c0 
c00032a0:	c7 05 b0 a1 00 c0 48 	movl   $0xc0002b48,0xc000a1b0
c00032a7:	2b 00 c0 
c00032aa:	c7 05 b4 a1 00 c0 70 	movl   $0xc0002b70,0xc000a1b4
c00032b1:	2b 00 c0 
c00032b4:	c7 05 b8 a1 00 c0 98 	movl   $0xc0002b98,0xc000a1b8
c00032bb:	2b 00 c0 
c00032be:	c7 05 bc a1 00 c0 c0 	movl   $0xc0002bc0,0xc000a1bc
c00032c5:	2b 00 c0 
c00032c8:	c7 05 c0 a1 00 c0 e8 	movl   $0xc0002be8,0xc000a1c0
c00032cf:	2b 00 c0 
c00032d2:	c7 05 c4 a1 00 c0 10 	movl   $0xc0002c10,0xc000a1c4
c00032d9:	2c 00 c0 
c00032dc:	c7 05 c8 a1 00 c0 38 	movl   $0xc0002c38,0xc000a1c8
c00032e3:	2c 00 c0 
c00032e6:	c7 05 cc a1 00 c0 60 	movl   $0xc0002c60,0xc000a1cc
c00032ed:	2c 00 c0 
c00032f0:	c7 05 d0 a1 00 c0 88 	movl   $0xc0002c88,0xc000a1d0
c00032f7:	2c 00 c0 
c00032fa:	c7 05 d4 a1 00 c0 b0 	movl   $0xc0002cb0,0xc000a1d4
c0003301:	2c 00 c0 
c0003304:	c7 05 d8 a1 00 c0 d8 	movl   $0xc0002cd8,0xc000a1d8
c000330b:	2c 00 c0 
c000330e:	c7 05 dc a1 00 c0 00 	movl   $0xc0002d00,0xc000a1dc
c0003315:	2d 00 c0 
c0003318:	c7 05 e0 a1 00 c0 28 	movl   $0xc0002d28,0xc000a1e0
c000331f:	2d 00 c0 
c0003322:	c7 05 e4 a1 00 c0 50 	movl   $0xc0002d50,0xc000a1e4
c0003329:	2d 00 c0 
c000332c:	c7 05 e8 a1 00 c0 78 	movl   $0xc0002d78,0xc000a1e8
c0003333:	2d 00 c0 
c0003336:	c7 05 ec a1 00 c0 a0 	movl   $0xc0002da0,0xc000a1ec
c000333d:	2d 00 c0 
c0003340:	c7 05 f0 a1 00 c0 c8 	movl   $0xc0002dc8,0xc000a1f0
c0003347:	2d 00 c0 
c000334a:	c7 05 f4 a1 00 c0 f0 	movl   $0xc0002df0,0xc000a1f4
c0003351:	2d 00 c0 
c0003354:	c7 05 f8 a1 00 c0 18 	movl   $0xc0002e18,0xc000a1f8
c000335b:	2e 00 c0 
c000335e:	c7 05 fc a1 00 c0 40 	movl   $0xc0002e40,0xc000a1fc
c0003365:	2e 00 c0 
c0003368:	c7 05 00 a2 00 c0 20 	movl   $0xc0001a20,0xc000a200
c000336f:	1a 00 c0 
c0003372:	c3                   	ret    
c0003373:	66 90                	xchg   %ax,%ax
c0003375:	66 90                	xchg   %ax,%ax
c0003377:	66 90                	xchg   %ax,%ax
c0003379:	66 90                	xchg   %ax,%ax
c000337b:	66 90                	xchg   %ax,%ax
c000337d:	66 90                	xchg   %ax,%ax
c000337f:	90                   	nop

c0003380 <put_char>:
c0003380:	60                   	pusha  
c0003381:	66 ba d4 03          	mov    $0x3d4,%dx
c0003385:	b0 0e                	mov    $0xe,%al
c0003387:	ee                   	out    %al,(%dx)
c0003388:	66 ba d5 03          	mov    $0x3d5,%dx
c000338c:	ec                   	in     (%dx),%al
c000338d:	88 c7                	mov    %al,%bh
c000338f:	66 ba d4 03          	mov    $0x3d4,%dx
c0003393:	b0 0f                	mov    $0xf,%al
c0003395:	ee                   	out    %al,(%dx)
c0003396:	66 ba d5 03          	mov    $0x3d5,%dx
c000339a:	ec                   	in     (%dx),%al
c000339b:	88 c3                	mov    %al,%bl
c000339d:	89 e5                	mov    %esp,%ebp
c000339f:	b5 07                	mov    $0x7,%ch
c00033a1:	8a 4d 24             	mov    0x24(%ebp),%cl
c00033a4:	66 b8 18 00          	mov    $0x18,%ax
c00033a8:	8e e8                	mov    %eax,%gs
c00033aa:	66 81 fb d0 07       	cmp    $0x7d0,%bx
c00033af:	7d 73                	jge    c0003424 <put_char.roll_screen>

c00033b1 <put_char.current>:
c00033b1:	80 f9 08             	cmp    $0x8,%cl
c00033b4:	74 39                	je     c00033ef <put_char.bs_p>
c00033b6:	80 f9 0d             	cmp    $0xd,%cl
c00033b9:	74 45                	je     c0003400 <put_char.lf_p>
c00033bb:	80 f9 0a             	cmp    $0xa,%cl
c00033be:	74 50                	je     c0003410 <put_char.cr_p>
c00033c0:	eb 00                	jmp    c00033c2 <put_char.put_other>

c00033c2 <put_char.put_other>:
c00033c2:	66 d1 e3             	shl    %bx
c00033c5:	65 66 67 89 0f       	mov    %cx,%gs:(%bx)
c00033ca:	66 d1 eb             	shr    %bx
c00033cd:	66 43                	inc    %bx
c00033cf:	eb 00                	jmp    c00033d1 <put_char.set_cursor>

c00033d1 <put_char.set_cursor>:
c00033d1:	66 ba d4 03          	mov    $0x3d4,%dx
c00033d5:	b0 0e                	mov    $0xe,%al
c00033d7:	ee                   	out    %al,(%dx)
c00033d8:	66 ba d5 03          	mov    $0x3d5,%dx
c00033dc:	88 f8                	mov    %bh,%al
c00033de:	ee                   	out    %al,(%dx)
c00033df:	66 ba d4 03          	mov    $0x3d4,%dx
c00033e3:	b0 0f                	mov    $0xf,%al
c00033e5:	ee                   	out    %al,(%dx)
c00033e6:	66 ba d5 03          	mov    $0x3d5,%dx
c00033ea:	88 d8                	mov    %bl,%al
c00033ec:	ee                   	out    %al,(%dx)
c00033ed:	61                   	popa   
c00033ee:	c3                   	ret    

c00033ef <put_char.bs_p>:
c00033ef:	66 4b                	dec    %bx
c00033f1:	66 d1 e3             	shl    %bx
c00033f4:	65 66 67 c7 07 00 07 	movw   $0x700,%gs:(%bx)
c00033fb:	66 d1 eb             	shr    %bx
c00033fe:	eb d1                	jmp    c00033d1 <put_char.set_cursor>

c0003400 <put_char.lf_p>:
c0003400:	66 89 d8             	mov    %bx,%ax
c0003403:	b2 50                	mov    $0x50,%dl
c0003405:	f6 f2                	div    %dl
c0003407:	66 c1 e8 08          	shr    $0x8,%ax
c000340b:	66 29 c3             	sub    %ax,%bx
c000340e:	eb c1                	jmp    c00033d1 <put_char.set_cursor>

c0003410 <put_char.cr_p>:
c0003410:	66 89 d8             	mov    %bx,%ax
c0003413:	b2 50                	mov    $0x50,%dl
c0003415:	f6 f2                	div    %dl
c0003417:	66 c1 e8 08          	shr    $0x8,%ax
c000341b:	66 29 c3             	sub    %ax,%bx
c000341e:	66 83 c3 50          	add    $0x50,%bx
c0003422:	eb ad                	jmp    c00033d1 <put_char.set_cursor>

c0003424 <put_char.roll_screen>:
c0003424:	60                   	pusha  
c0003425:	06                   	push   %es
c0003426:	1e                   	push   %ds
c0003427:	66 b8 18 00          	mov    $0x18,%ax
c000342b:	8e d8                	mov    %eax,%ds
c000342d:	8e c0                	mov    %eax,%es
c000342f:	fc                   	cld    
c0003430:	be a0 00 00 00       	mov    $0xa0,%esi
c0003435:	bf 00 00 00 00       	mov    $0x0,%edi
c000343a:	b9 00 0f 00 00       	mov    $0xf00,%ecx
c000343f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0003441:	b9 50 00 00 00       	mov    $0x50,%ecx
c0003446:	b8 00 0f 00 00       	mov    $0xf00,%eax

c000344b <put_char.clear_last_row>:
c000344b:	65 66 c7 00 00 07    	movw   $0x700,%gs:(%eax)
c0003451:	66 83 c0 02          	add    $0x2,%ax
c0003455:	e2 f4                	loop   c000344b <put_char.clear_last_row>
c0003457:	1f                   	pop    %ds
c0003458:	07                   	pop    %es
c0003459:	61                   	popa   
c000345a:	66 bb 80 07          	mov    $0x780,%bx
c000345e:	e9 4e ff ff ff       	jmp    c00033b1 <put_char.current>

c0003463 <put_int>:
c0003463:	60                   	pusha  
c0003464:	b0 30                	mov    $0x30,%al
c0003466:	66 50                	push   %ax
c0003468:	e8 13 ff ff ff       	call   c0003380 <put_char>
c000346d:	83 c4 02             	add    $0x2,%esp
c0003470:	b0 78                	mov    $0x78,%al
c0003472:	66 50                	push   %ax
c0003474:	e8 07 ff ff ff       	call   c0003380 <put_char>
c0003479:	83 c4 02             	add    $0x2,%esp
c000347c:	89 e5                	mov    %esp,%ebp
c000347e:	8b 45 24             	mov    0x24(%ebp),%eax
c0003481:	b9 08 00 00 00       	mov    $0x8,%ecx
c0003486:	89 c3                	mov    %eax,%ebx
c0003488:	66 ba 00 00          	mov    $0x0,%dx

c000348c <put_int.print_int>:
c000348c:	81 e3 00 00 00 f0    	and    $0xf0000000,%ebx
c0003492:	66 83 fa 00          	cmp    $0x0,%dx
c0003496:	75 05                	jne    c000349d <put_int.not_0>
c0003498:	83 fb 00             	cmp    $0x0,%ebx
c000349b:	74 2b                	je     c00034c8 <put_int.is_first_0>

c000349d <put_int.not_0>:
c000349d:	66 83 c2 01          	add    $0x1,%dx
c00034a1:	c1 eb 04             	shr    $0x4,%ebx
c00034a4:	81 fb 00 00 00 0a    	cmp    $0xa000000,%ebx
c00034aa:	7d 08                	jge    c00034b4 <put_int.handle_letter>
c00034ac:	81 c3 00 00 00 30    	add    $0x30000000,%ebx
c00034b2:	eb 08                	jmp    c00034bc <put_int.call_print>

c00034b4 <put_int.handle_letter>:
c00034b4:	81 c3 00 00 00 57    	add    $0x57000000,%ebx
c00034ba:	eb 00                	jmp    c00034bc <put_int.call_print>

c00034bc <put_int.call_print>:
c00034bc:	c1 eb 18             	shr    $0x18,%ebx
c00034bf:	53                   	push   %ebx
c00034c0:	e8 bb fe ff ff       	call   c0003380 <put_char>
c00034c5:	83 c4 04             	add    $0x4,%esp

c00034c8 <put_int.is_first_0>:
c00034c8:	c1 e0 04             	shl    $0x4,%eax
c00034cb:	89 c3                	mov    %eax,%ebx
c00034cd:	e2 bd                	loop   c000348c <put_int.print_int>
c00034cf:	66 83 fa 00          	cmp    $0x0,%dx
c00034d3:	75 0a                	jne    c00034df <put_int.end_print_int>
c00034d5:	6a 30                	push   $0x30
c00034d7:	e8 a4 fe ff ff       	call   c0003380 <put_char>
c00034dc:	83 c4 04             	add    $0x4,%esp

c00034df <put_int.end_print_int>:
c00034df:	61                   	popa   
c00034e0:	c3                   	ret    

c00034e1 <set_cursor>:
c00034e1:	60                   	pusha  
c00034e2:	89 e5                	mov    %esp,%ebp
c00034e4:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00034e7:	66 ba d4 03          	mov    $0x3d4,%dx
c00034eb:	b0 0e                	mov    $0xe,%al
c00034ed:	ee                   	out    %al,(%dx)
c00034ee:	66 ba d5 03          	mov    $0x3d5,%dx
c00034f2:	88 f8                	mov    %bh,%al
c00034f4:	ee                   	out    %al,(%dx)
c00034f5:	66 ba d4 03          	mov    $0x3d4,%dx
c00034f9:	b0 0f                	mov    $0xf,%al
c00034fb:	ee                   	out    %al,(%dx)
c00034fc:	66 ba d5 03          	mov    $0x3d5,%dx
c0003500:	88 d8                	mov    %bl,%al
c0003502:	ee                   	out    %al,(%dx)
c0003503:	61                   	popa   
c0003504:	c3                   	ret    

c0003505 <put_str>:
c0003505:	55                   	push   %ebp
c0003506:	89 e5                	mov    %esp,%ebp
c0003508:	83 ec 18             	sub    $0x18,%esp
c000350b:	eb 15                	jmp    c0003522 <put_str+0x1d>
c000350d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003510:	0f b6 00             	movzbl (%eax),%eax
c0003513:	0f be c0             	movsbl %al,%eax
c0003516:	89 04 24             	mov    %eax,(%esp)
c0003519:	e8 62 fe ff ff       	call   c0003380 <put_char>
c000351e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0003522:	8b 45 08             	mov    0x8(%ebp),%eax
c0003525:	0f b6 00             	movzbl (%eax),%eax
c0003528:	84 c0                	test   %al,%al
c000352a:	75 e1                	jne    c000350d <put_str+0x8>
c000352c:	c9                   	leave  
c000352d:	c3                   	ret    

c000352e <get_int_status>:
c000352e:	55                   	push   %ebp
c000352f:	89 e5                	mov    %esp,%ebp
c0003531:	83 ec 10             	sub    $0x10,%esp
c0003534:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c000353b:	9c                   	pushf  
c000353c:	58                   	pop    %eax
c000353d:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003540:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003543:	25 00 02 00 00       	and    $0x200,%eax
c0003548:	85 c0                	test   %eax,%eax
c000354a:	0f 9f c0             	setg   %al
c000354d:	0f b6 c0             	movzbl %al,%eax
c0003550:	c9                   	leave  
c0003551:	c3                   	ret    

c0003552 <int_enable>:
c0003552:	55                   	push   %ebp
c0003553:	89 e5                	mov    %esp,%ebp
c0003555:	83 ec 10             	sub    $0x10,%esp
c0003558:	e8 d1 ff ff ff       	call   c000352e <get_int_status>
c000355d:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003560:	fb                   	sti    
c0003561:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003564:	c9                   	leave  
c0003565:	c3                   	ret    

c0003566 <int_disable>:
c0003566:	55                   	push   %ebp
c0003567:	89 e5                	mov    %esp,%ebp
c0003569:	83 ec 10             	sub    $0x10,%esp
c000356c:	e8 bd ff ff ff       	call   c000352e <get_int_status>
c0003571:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0003574:	fa                   	cli    
c0003575:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003578:	c9                   	leave  
c0003579:	c3                   	ret    

c000357a <set_int_status>:
c000357a:	55                   	push   %ebp
c000357b:	89 e5                	mov    %esp,%ebp
c000357d:	83 ec 10             	sub    $0x10,%esp
c0003580:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0003587:	9c                   	pushf  
c0003588:	58                   	pop    %eax
c0003589:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000358c:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003590:	75 07                	jne    c0003599 <set_int_status+0x1f>
c0003592:	e8 bb ff ff ff       	call   c0003552 <int_enable>
c0003597:	eb 05                	jmp    c000359e <set_int_status+0x24>
c0003599:	e8 c8 ff ff ff       	call   c0003566 <int_disable>
c000359e:	c9                   	leave  
c000359f:	c3                   	ret    

c00035a0 <panic_spin>:
c00035a0:	55                   	push   %ebp
c00035a1:	89 e5                	mov    %esp,%ebp
c00035a3:	83 ec 28             	sub    $0x28,%esp
c00035a6:	e8 bb ff ff ff       	call   c0003566 <int_disable>
c00035ab:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00035ae:	c7 04 24 c0 71 00 c0 	movl   $0xc00071c0,(%esp)
c00035b5:	e8 4b ff ff ff       	call   c0003505 <put_str>
c00035ba:	c7 04 24 cc 71 00 c0 	movl   $0xc00071cc,(%esp)
c00035c1:	e8 3f ff ff ff       	call   c0003505 <put_str>
c00035c6:	c7 04 24 ce 71 00 c0 	movl   $0xc00071ce,(%esp)
c00035cd:	e8 33 ff ff ff       	call   c0003505 <put_str>
c00035d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00035d5:	89 04 24             	mov    %eax,(%esp)
c00035d8:	e8 28 ff ff ff       	call   c0003505 <put_str>
c00035dd:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00035e4:	e8 97 fd ff ff       	call   c0003380 <put_char>
c00035e9:	c7 04 24 d8 71 00 c0 	movl   $0xc00071d8,(%esp)
c00035f0:	e8 10 ff ff ff       	call   c0003505 <put_str>
c00035f5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00035f8:	89 04 24             	mov    %eax,(%esp)
c00035fb:	e8 63 fe ff ff       	call   c0003463 <put_int>
c0003600:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0003607:	e8 74 fd ff ff       	call   c0003380 <put_char>
c000360c:	c7 04 24 de 71 00 c0 	movl   $0xc00071de,(%esp)
c0003613:	e8 ed fe ff ff       	call   c0003505 <put_str>
c0003618:	8b 45 10             	mov    0x10(%ebp),%eax
c000361b:	89 04 24             	mov    %eax,(%esp)
c000361e:	e8 e2 fe ff ff       	call   c0003505 <put_str>
c0003623:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c000362a:	e8 51 fd ff ff       	call   c0003380 <put_char>
c000362f:	c7 04 24 e8 71 00 c0 	movl   $0xc00071e8,(%esp)
c0003636:	e8 ca fe ff ff       	call   c0003505 <put_str>
c000363b:	8b 45 14             	mov    0x14(%ebp),%eax
c000363e:	89 04 24             	mov    %eax,(%esp)
c0003641:	e8 bf fe ff ff       	call   c0003505 <put_str>
c0003646:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c000364d:	e8 2e fd ff ff       	call   c0003380 <put_char>
c0003652:	f4                   	hlt    
c0003653:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003656:	89 04 24             	mov    %eax,(%esp)
c0003659:	e8 1c ff ff ff       	call   c000357a <set_int_status>
c000365e:	c9                   	leave  
c000365f:	c3                   	ret    

c0003660 <debug_msg>:
c0003660:	55                   	push   %ebp
c0003661:	89 e5                	mov    %esp,%ebp
c0003663:	83 ec 18             	sub    $0x18,%esp
c0003666:	c7 04 24 de 71 00 c0 	movl   $0xc00071de,(%esp)
c000366d:	e8 93 fe ff ff       	call   c0003505 <put_str>
c0003672:	8b 45 08             	mov    0x8(%ebp),%eax
c0003675:	89 04 24             	mov    %eax,(%esp)
c0003678:	e8 88 fe ff ff       	call   c0003505 <put_str>
c000367d:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0003684:	e8 f7 fc ff ff       	call   c0003380 <put_char>
c0003689:	8b 45 0c             	mov    0xc(%ebp),%eax
c000368c:	89 04 24             	mov    %eax,(%esp)
c000368f:	e8 71 fe ff ff       	call   c0003505 <put_str>
c0003694:	8b 45 10             	mov    0x10(%ebp),%eax
c0003697:	89 04 24             	mov    %eax,(%esp)
c000369a:	e8 c4 fd ff ff       	call   c0003463 <put_int>
c000369f:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00036a6:	e8 d5 fc ff ff       	call   c0003380 <put_char>
c00036ab:	c9                   	leave  
c00036ac:	c3                   	ret    

c00036ad <memset_8>:
c00036ad:	55                   	push   %ebp
c00036ae:	89 e5                	mov    %esp,%ebp
c00036b0:	83 ec 38             	sub    $0x38,%esp
c00036b3:	8b 45 10             	mov    0x10(%ebp),%eax
c00036b6:	88 45 e4             	mov    %al,-0x1c(%ebp)
c00036b9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c00036bd:	75 24                	jne    c00036e3 <memset_8+0x36>
c00036bf:	c7 44 24 0c f4 71 00 	movl   $0xc00071f4,0xc(%esp)
c00036c6:	c0 
c00036c7:	c7 44 24 08 45 72 00 	movl   $0xc0007245,0x8(%esp)
c00036ce:	c0 
c00036cf:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c00036d6:	00 
c00036d7:	c7 04 24 07 72 00 c0 	movl   $0xc0007207,(%esp)
c00036de:	e8 bd fe ff ff       	call   c00035a0 <panic_spin>
c00036e3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00036ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00036ed:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00036f0:	eb 13                	jmp    c0003705 <memset_8+0x58>
c00036f2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00036f5:	8d 50 01             	lea    0x1(%eax),%edx
c00036f8:	89 55 f0             	mov    %edx,-0x10(%ebp)
c00036fb:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
c00036ff:	88 10                	mov    %dl,(%eax)
c0003701:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003705:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003708:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000370b:	72 e5                	jb     c00036f2 <memset_8+0x45>
c000370d:	c9                   	leave  
c000370e:	c3                   	ret    

c000370f <memset_32>:
c000370f:	55                   	push   %ebp
c0003710:	89 e5                	mov    %esp,%ebp
c0003712:	83 ec 28             	sub    $0x28,%esp
c0003715:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0003719:	75 24                	jne    c000373f <memset_32+0x30>
c000371b:	c7 44 24 0c f4 71 00 	movl   $0xc00071f4,0xc(%esp)
c0003722:	c0 
c0003723:	c7 44 24 08 4e 72 00 	movl   $0xc000724e,0x8(%esp)
c000372a:	c0 
c000372b:	c7 44 24 04 12 00 00 	movl   $0x12,0x4(%esp)
c0003732:	00 
c0003733:	c7 04 24 07 72 00 c0 	movl   $0xc0007207,(%esp)
c000373a:	e8 61 fe ff ff       	call   c00035a0 <panic_spin>
c000373f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003746:	8b 45 08             	mov    0x8(%ebp),%eax
c0003749:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000374c:	eb 12                	jmp    c0003760 <memset_32+0x51>
c000374e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003751:	8d 50 04             	lea    0x4(%eax),%edx
c0003754:	89 55 f0             	mov    %edx,-0x10(%ebp)
c0003757:	8b 55 10             	mov    0x10(%ebp),%edx
c000375a:	89 10                	mov    %edx,(%eax)
c000375c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003760:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003763:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003766:	72 e6                	jb     c000374e <memset_32+0x3f>
c0003768:	c9                   	leave  
c0003769:	c3                   	ret    

c000376a <memcopy>:
c000376a:	55                   	push   %ebp
c000376b:	89 e5                	mov    %esp,%ebp
c000376d:	83 ec 28             	sub    $0x28,%esp
c0003770:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0003774:	74 2a                	je     c00037a0 <memcopy+0x36>
c0003776:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c000377a:	75 24                	jne    c00037a0 <memcopy+0x36>
c000377c:	c7 44 24 0c 24 72 00 	movl   $0xc0007224,0xc(%esp)
c0003783:	c0 
c0003784:	c7 44 24 08 58 72 00 	movl   $0xc0007258,0x8(%esp)
c000378b:	c0 
c000378c:	c7 44 24 04 1c 00 00 	movl   $0x1c,0x4(%esp)
c0003793:	00 
c0003794:	c7 04 24 07 72 00 c0 	movl   $0xc0007207,(%esp)
c000379b:	e8 00 fe ff ff       	call   c00035a0 <panic_spin>
c00037a0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00037a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00037aa:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00037ad:	8b 45 0c             	mov    0xc(%ebp),%eax
c00037b0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00037b3:	eb 1b                	jmp    c00037d0 <memcopy+0x66>
c00037b5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00037b8:	8d 50 01             	lea    0x1(%eax),%edx
c00037bb:	89 55 f0             	mov    %edx,-0x10(%ebp)
c00037be:	8b 55 ec             	mov    -0x14(%ebp),%edx
c00037c1:	8d 4a 01             	lea    0x1(%edx),%ecx
c00037c4:	89 4d ec             	mov    %ecx,-0x14(%ebp)
c00037c7:	0f b6 12             	movzbl (%edx),%edx
c00037ca:	88 10                	mov    %dl,(%eax)
c00037cc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c00037d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00037d3:	3b 45 10             	cmp    0x10(%ebp),%eax
c00037d6:	72 dd                	jb     c00037b5 <memcopy+0x4b>
c00037d8:	c9                   	leave  
c00037d9:	c3                   	ret    

c00037da <memcmp>:
c00037da:	55                   	push   %ebp
c00037db:	89 e5                	mov    %esp,%ebp
c00037dd:	83 ec 10             	sub    $0x10,%esp
c00037e0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00037e7:	eb 32                	jmp    c000381b <memcmp+0x41>
c00037e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00037ec:	0f b6 10             	movzbl (%eax),%edx
c00037ef:	8b 45 0c             	mov    0xc(%ebp),%eax
c00037f2:	0f b6 00             	movzbl (%eax),%eax
c00037f5:	38 c2                	cmp    %al,%dl
c00037f7:	73 07                	jae    c0003800 <memcmp+0x26>
c00037f9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00037fe:	eb 28                	jmp    c0003828 <memcmp+0x4e>
c0003800:	8b 45 08             	mov    0x8(%ebp),%eax
c0003803:	0f b6 10             	movzbl (%eax),%edx
c0003806:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003809:	0f b6 00             	movzbl (%eax),%eax
c000380c:	38 c2                	cmp    %al,%dl
c000380e:	76 07                	jbe    c0003817 <memcmp+0x3d>
c0003810:	b8 01 00 00 00       	mov    $0x1,%eax
c0003815:	eb 11                	jmp    c0003828 <memcmp+0x4e>
c0003817:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c000381b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000381e:	3b 45 10             	cmp    0x10(%ebp),%eax
c0003821:	72 c6                	jb     c00037e9 <memcmp+0xf>
c0003823:	b8 00 00 00 00       	mov    $0x0,%eax
c0003828:	c9                   	leave  
c0003829:	c3                   	ret    

c000382a <strlen>:
c000382a:	55                   	push   %ebp
c000382b:	89 e5                	mov    %esp,%ebp
c000382d:	83 ec 10             	sub    $0x10,%esp
c0003830:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0003837:	eb 04                	jmp    c000383d <strlen+0x13>
c0003839:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c000383d:	8b 45 08             	mov    0x8(%ebp),%eax
c0003840:	8d 50 01             	lea    0x1(%eax),%edx
c0003843:	89 55 08             	mov    %edx,0x8(%ebp)
c0003846:	0f b6 00             	movzbl (%eax),%eax
c0003849:	84 c0                	test   %al,%al
c000384b:	75 ec                	jne    c0003839 <strlen+0xf>
c000384d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0003850:	c9                   	leave  
c0003851:	c3                   	ret    

c0003852 <strcat>:
c0003852:	55                   	push   %ebp
c0003853:	89 e5                	mov    %esp,%ebp
c0003855:	83 ec 28             	sub    $0x28,%esp
c0003858:	8b 45 0c             	mov    0xc(%ebp),%eax
c000385b:	89 04 24             	mov    %eax,(%esp)
c000385e:	e8 c7 ff ff ff       	call   c000382a <strlen>
c0003863:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003866:	8b 45 10             	mov    0x10(%ebp),%eax
c0003869:	89 04 24             	mov    %eax,(%esp)
c000386c:	e8 b9 ff ff ff       	call   c000382a <strlen>
c0003871:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003874:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003877:	83 e8 01             	sub    $0x1,%eax
c000387a:	89 44 24 08          	mov    %eax,0x8(%esp)
c000387e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003881:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003885:	8b 45 08             	mov    0x8(%ebp),%eax
c0003888:	89 04 24             	mov    %eax,(%esp)
c000388b:	e8 da fe ff ff       	call   c000376a <memcopy>
c0003890:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003893:	8d 50 ff             	lea    -0x1(%eax),%edx
c0003896:	8b 45 08             	mov    0x8(%ebp),%eax
c0003899:	01 c2                	add    %eax,%edx
c000389b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000389e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00038a2:	8b 45 10             	mov    0x10(%ebp),%eax
c00038a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00038a9:	89 14 24             	mov    %edx,(%esp)
c00038ac:	e8 b9 fe ff ff       	call   c000376a <memcopy>
c00038b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00038b4:	c9                   	leave  
c00038b5:	c3                   	ret    

c00038b6 <formative_str>:
c00038b6:	55                   	push   %ebp
c00038b7:	89 e5                	mov    %esp,%ebp
c00038b9:	83 ec 28             	sub    $0x28,%esp
c00038bc:	8d 45 08             	lea    0x8(%ebp),%eax
c00038bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00038c2:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00038c6:	8b 45 08             	mov    0x8(%ebp),%eax
c00038c9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00038cc:	89 54 24 08          	mov    %edx,0x8(%esp)
c00038d0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00038d4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00038d7:	89 04 24             	mov    %eax,(%esp)
c00038da:	e8 65 26 00 00       	call   c0005f44 <vsprintf>
c00038df:	8b 45 0c             	mov    0xc(%ebp),%eax
c00038e2:	c9                   	leave  
c00038e3:	c3                   	ret    

c00038e4 <init_bit_map>:
c00038e4:	55                   	push   %ebp
c00038e5:	89 e5                	mov    %esp,%ebp
c00038e7:	5d                   	pop    %ebp
c00038e8:	c3                   	ret    

c00038e9 <bit_test>:
c00038e9:	55                   	push   %ebp
c00038ea:	89 e5                	mov    %esp,%ebp
c00038ec:	53                   	push   %ebx
c00038ed:	83 ec 24             	sub    $0x24,%esp
c00038f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00038f3:	8b 00                	mov    (%eax),%eax
c00038f5:	3b 45 0c             	cmp    0xc(%ebp),%eax
c00038f8:	73 24                	jae    c000391e <bit_test+0x35>
c00038fa:	c7 44 24 0c 60 72 00 	movl   $0xc0007260,0xc(%esp)
c0003901:	c0 
c0003902:	c7 44 24 08 ad 72 00 	movl   $0xc00072ad,0x8(%esp)
c0003909:	c0 
c000390a:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c0003911:	00 
c0003912:	c7 04 24 78 72 00 c0 	movl   $0xc0007278,(%esp)
c0003919:	e8 82 fc ff ff       	call   c00035a0 <panic_spin>
c000391e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003921:	c1 e8 03             	shr    $0x3,%eax
c0003924:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003927:	8b 45 08             	mov    0x8(%ebp),%eax
c000392a:	8b 50 04             	mov    0x4(%eax),%edx
c000392d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003930:	01 d0                	add    %edx,%eax
c0003932:	0f b6 00             	movzbl (%eax),%eax
c0003935:	88 45 f3             	mov    %al,-0xd(%ebp)
c0003938:	8b 45 0c             	mov    0xc(%ebp),%eax
c000393b:	83 e0 07             	and    $0x7,%eax
c000393e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003941:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
c0003945:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003948:	bb 80 00 00 00       	mov    $0x80,%ebx
c000394d:	89 c1                	mov    %eax,%ecx
c000394f:	d3 fb                	sar    %cl,%ebx
c0003951:	89 d8                	mov    %ebx,%eax
c0003953:	21 d0                	and    %edx,%eax
c0003955:	85 c0                	test   %eax,%eax
c0003957:	0f 95 c0             	setne  %al
c000395a:	0f b6 c0             	movzbl %al,%eax
c000395d:	83 c4 24             	add    $0x24,%esp
c0003960:	5b                   	pop    %ebx
c0003961:	5d                   	pop    %ebp
c0003962:	c3                   	ret    

c0003963 <bit_set>:
c0003963:	55                   	push   %ebp
c0003964:	89 e5                	mov    %esp,%ebp
c0003966:	56                   	push   %esi
c0003967:	53                   	push   %ebx
c0003968:	83 ec 20             	sub    $0x20,%esp
c000396b:	8b 45 08             	mov    0x8(%ebp),%eax
c000396e:	8b 00                	mov    (%eax),%eax
c0003970:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003973:	73 24                	jae    c0003999 <bit_set+0x36>
c0003975:	c7 44 24 0c 9b 72 00 	movl   $0xc000729b,0xc(%esp)
c000397c:	c0 
c000397d:	c7 44 24 08 b6 72 00 	movl   $0xc00072b6,0x8(%esp)
c0003984:	c0 
c0003985:	c7 44 24 04 19 00 00 	movl   $0x19,0x4(%esp)
c000398c:	00 
c000398d:	c7 04 24 78 72 00 c0 	movl   $0xc0007278,(%esp)
c0003994:	e8 07 fc ff ff       	call   c00035a0 <panic_spin>
c0003999:	8b 45 0c             	mov    0xc(%ebp),%eax
c000399c:	89 44 24 04          	mov    %eax,0x4(%esp)
c00039a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00039a3:	89 04 24             	mov    %eax,(%esp)
c00039a6:	e8 3e ff ff ff       	call   c00038e9 <bit_test>
c00039ab:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00039ae:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
c00039b2:	75 07                	jne    c00039bb <bit_set+0x58>
c00039b4:	b8 01 00 00 00       	mov    $0x1,%eax
c00039b9:	eb 44                	jmp    c00039ff <bit_set+0x9c>
c00039bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00039be:	83 e0 07             	and    $0x7,%eax
c00039c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00039c4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00039c7:	c1 e8 03             	shr    $0x3,%eax
c00039ca:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00039cd:	8b 45 08             	mov    0x8(%ebp),%eax
c00039d0:	8b 50 04             	mov    0x4(%eax),%edx
c00039d3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00039d6:	01 c2                	add    %eax,%edx
c00039d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00039db:	8b 48 04             	mov    0x4(%eax),%ecx
c00039de:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00039e1:	01 c8                	add    %ecx,%eax
c00039e3:	0f b6 00             	movzbl (%eax),%eax
c00039e6:	89 c3                	mov    %eax,%ebx
c00039e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00039eb:	be 80 00 00 00       	mov    $0x80,%esi
c00039f0:	89 c1                	mov    %eax,%ecx
c00039f2:	d3 fe                	sar    %cl,%esi
c00039f4:	89 f0                	mov    %esi,%eax
c00039f6:	31 d8                	xor    %ebx,%eax
c00039f8:	88 02                	mov    %al,(%edx)
c00039fa:	b8 00 00 00 00       	mov    $0x0,%eax
c00039ff:	83 c4 20             	add    $0x20,%esp
c0003a02:	5b                   	pop    %ebx
c0003a03:	5e                   	pop    %esi
c0003a04:	5d                   	pop    %ebp
c0003a05:	c3                   	ret    

c0003a06 <bit_reset>:
c0003a06:	55                   	push   %ebp
c0003a07:	89 e5                	mov    %esp,%ebp
c0003a09:	56                   	push   %esi
c0003a0a:	53                   	push   %ebx
c0003a0b:	83 ec 20             	sub    $0x20,%esp
c0003a0e:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a11:	8b 00                	mov    (%eax),%eax
c0003a13:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003a16:	73 24                	jae    c0003a3c <bit_reset+0x36>
c0003a18:	c7 44 24 0c 9b 72 00 	movl   $0xc000729b,0xc(%esp)
c0003a1f:	c0 
c0003a20:	c7 44 24 08 be 72 00 	movl   $0xc00072be,0x8(%esp)
c0003a27:	c0 
c0003a28:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c0003a2f:	00 
c0003a30:	c7 04 24 78 72 00 c0 	movl   $0xc0007278,(%esp)
c0003a37:	e8 64 fb ff ff       	call   c00035a0 <panic_spin>
c0003a3c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a3f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003a43:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a46:	89 04 24             	mov    %eax,(%esp)
c0003a49:	e8 9b fe ff ff       	call   c00038e9 <bit_test>
c0003a4e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003a51:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0003a55:	75 0a                	jne    c0003a61 <bit_reset+0x5b>
c0003a57:	b8 00 00 00 00       	mov    $0x0,%eax
c0003a5c:	e9 91 00 00 00       	jmp    c0003af2 <bit_reset+0xec>
c0003a61:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a64:	83 e0 07             	and    $0x7,%eax
c0003a67:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003a6a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a6d:	c1 e8 03             	shr    $0x3,%eax
c0003a70:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003a73:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003a77:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a7a:	8b 50 04             	mov    0x4(%eax),%edx
c0003a7d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003a80:	01 d0                	add    %edx,%eax
c0003a82:	0f b6 00             	movzbl (%eax),%eax
c0003a85:	0f b6 d0             	movzbl %al,%edx
c0003a88:	b8 09 00 00 00       	mov    $0x9,%eax
c0003a8d:	2b 45 f0             	sub    -0x10(%ebp),%eax
c0003a90:	bb ff 00 00 00       	mov    $0xff,%ebx
c0003a95:	89 c1                	mov    %eax,%ecx
c0003a97:	d3 e3                	shl    %cl,%ebx
c0003a99:	89 d8                	mov    %ebx,%eax
c0003a9b:	21 d0                	and    %edx,%eax
c0003a9d:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0003aa0:	8b 45 08             	mov    0x8(%ebp),%eax
c0003aa3:	8b 50 04             	mov    0x4(%eax),%edx
c0003aa6:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003aa9:	01 c2                	add    %eax,%edx
c0003aab:	8b 45 08             	mov    0x8(%ebp),%eax
c0003aae:	8b 48 04             	mov    0x4(%eax),%ecx
c0003ab1:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003ab4:	01 c8                	add    %ecx,%eax
c0003ab6:	0f b6 00             	movzbl (%eax),%eax
c0003ab9:	89 c3                	mov    %eax,%ebx
c0003abb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003abe:	be ff 00 00 00       	mov    $0xff,%esi
c0003ac3:	89 c1                	mov    %eax,%ecx
c0003ac5:	d3 fe                	sar    %cl,%esi
c0003ac7:	89 f0                	mov    %esi,%eax
c0003ac9:	21 d8                	and    %ebx,%eax
c0003acb:	88 02                	mov    %al,(%edx)
c0003acd:	8b 45 08             	mov    0x8(%ebp),%eax
c0003ad0:	8b 50 04             	mov    0x4(%eax),%edx
c0003ad3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003ad6:	01 c2                	add    %eax,%edx
c0003ad8:	8b 45 08             	mov    0x8(%ebp),%eax
c0003adb:	8b 48 04             	mov    0x4(%eax),%ecx
c0003ade:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003ae1:	01 c8                	add    %ecx,%eax
c0003ae3:	0f b6 08             	movzbl (%eax),%ecx
c0003ae6:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0003ae9:	31 c8                	xor    %ecx,%eax
c0003aeb:	88 02                	mov    %al,(%edx)
c0003aed:	b8 01 00 00 00       	mov    $0x1,%eax
c0003af2:	83 c4 20             	add    $0x20,%esp
c0003af5:	5b                   	pop    %ebx
c0003af6:	5e                   	pop    %esi
c0003af7:	5d                   	pop    %ebp
c0003af8:	c3                   	ret    

c0003af9 <bit_alloc>:
c0003af9:	55                   	push   %ebp
c0003afa:	89 e5                	mov    %esp,%ebp
c0003afc:	83 ec 28             	sub    $0x28,%esp
c0003aff:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003b06:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0003b0d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003b10:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003b14:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b17:	89 04 24             	mov    %eax,(%esp)
c0003b1a:	e8 ca fd ff ff       	call   c00038e9 <bit_test>
c0003b1f:	85 c0                	test   %eax,%eax
c0003b21:	75 0a                	jne    c0003b2d <bit_alloc+0x34>
c0003b23:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003b27:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003b2b:	eb 0b                	jmp    c0003b38 <bit_alloc+0x3f>
c0003b2d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003b34:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003b38:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b3b:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b3e:	73 0e                	jae    c0003b4e <bit_alloc+0x55>
c0003b40:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003b43:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b46:	8b 00                	mov    (%eax),%eax
c0003b48:	39 c2                	cmp    %eax,%edx
c0003b4a:	73 02                	jae    c0003b4e <bit_alloc+0x55>
c0003b4c:	eb bf                	jmp    c0003b0d <bit_alloc+0x14>
c0003b4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b51:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b54:	72 3b                	jb     c0003b91 <bit_alloc+0x98>
c0003b56:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0003b5d:	eb 1e                	jmp    c0003b7d <bit_alloc+0x84>
c0003b5f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003b62:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003b65:	01 d0                	add    %edx,%eax
c0003b67:	2b 45 f4             	sub    -0xc(%ebp),%eax
c0003b6a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003b6e:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b71:	89 04 24             	mov    %eax,(%esp)
c0003b74:	e8 ea fd ff ff       	call   c0003963 <bit_set>
c0003b79:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
c0003b7d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003b80:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b83:	72 da                	jb     c0003b5f <bit_alloc+0x66>
c0003b85:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b88:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003b8b:	29 c2                	sub    %eax,%edx
c0003b8d:	89 d0                	mov    %edx,%eax
c0003b8f:	eb 05                	jmp    c0003b96 <bit_alloc+0x9d>
c0003b91:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0003b96:	c9                   	leave  
c0003b97:	c3                   	ret    

c0003b98 <alloc_vaddr>:
c0003b98:	55                   	push   %ebp
c0003b99:	89 e5                	mov    %esp,%ebp
c0003b9b:	83 ec 28             	sub    $0x28,%esp
c0003b9e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003ba2:	75 09                	jne    c0003bad <alloc_vaddr+0x15>
c0003ba4:	c7 45 f4 a0 a7 00 c0 	movl   $0xc000a7a0,-0xc(%ebp)
c0003bab:	eb 11                	jmp    c0003bbe <alloc_vaddr+0x26>
c0003bad:	e8 56 0a 00 00       	call   c0004608 <get_running>
c0003bb2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003bb5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003bb8:	83 c0 04             	add    $0x4,%eax
c0003bbb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003bbe:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003bc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003bc4:	8b 00                	mov    (%eax),%eax
c0003bc6:	39 c2                	cmp    %eax,%edx
c0003bc8:	76 24                	jbe    c0003bee <alloc_vaddr+0x56>
c0003bca:	c7 44 24 0c c8 72 00 	movl   $0xc00072c8,0xc(%esp)
c0003bd1:	c0 
c0003bd2:	c7 44 24 08 51 73 00 	movl   $0xc0007351,0x8(%esp)
c0003bd9:	c0 
c0003bda:	c7 44 24 04 17 00 00 	movl   $0x17,0x4(%esp)
c0003be1:	00 
c0003be2:	c7 04 24 e7 72 00 c0 	movl   $0xc00072e7,(%esp)
c0003be9:	e8 b2 f9 ff ff       	call   c00035a0 <panic_spin>
c0003bee:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003bf1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003bf4:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003bf8:	89 04 24             	mov    %eax,(%esp)
c0003bfb:	e8 f9 fe ff ff       	call   c0003af9 <bit_alloc>
c0003c00:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003c03:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
c0003c07:	74 10                	je     c0003c19 <alloc_vaddr+0x81>
c0003c09:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c0c:	8b 50 08             	mov    0x8(%eax),%edx
c0003c0f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003c12:	c1 e0 0c             	shl    $0xc,%eax
c0003c15:	01 d0                	add    %edx,%eax
c0003c17:	eb 05                	jmp    c0003c1e <alloc_vaddr+0x86>
c0003c19:	b8 00 00 00 00       	mov    $0x0,%eax
c0003c1e:	c9                   	leave  
c0003c1f:	c3                   	ret    

c0003c20 <alloc_mem>:
c0003c20:	55                   	push   %ebp
c0003c21:	89 e5                	mov    %esp,%ebp
c0003c23:	83 ec 28             	sub    $0x28,%esp
c0003c26:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003c2a:	75 09                	jne    c0003c35 <alloc_mem+0x15>
c0003c2c:	c7 45 f4 b0 a7 00 c0 	movl   $0xc000a7b0,-0xc(%ebp)
c0003c33:	eb 07                	jmp    c0003c3c <alloc_mem+0x1c>
c0003c35:	c7 45 f4 90 a7 00 c0 	movl   $0xc000a790,-0xc(%ebp)
c0003c3c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c3f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0003c46:	00 
c0003c47:	89 04 24             	mov    %eax,(%esp)
c0003c4a:	e8 aa fe ff ff       	call   c0003af9 <bit_alloc>
c0003c4f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003c52:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
c0003c56:	74 10                	je     c0003c68 <alloc_mem+0x48>
c0003c58:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c5b:	8b 50 08             	mov    0x8(%eax),%edx
c0003c5e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003c61:	c1 e0 0c             	shl    $0xc,%eax
c0003c64:	01 d0                	add    %edx,%eax
c0003c66:	eb 05                	jmp    c0003c6d <alloc_mem+0x4d>
c0003c68:	b8 00 00 00 00       	mov    $0x0,%eax
c0003c6d:	c9                   	leave  
c0003c6e:	c3                   	ret    

c0003c6f <malloc_page>:
c0003c6f:	55                   	push   %ebp
c0003c70:	89 e5                	mov    %esp,%ebp
c0003c72:	83 ec 28             	sub    $0x28,%esp
c0003c75:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003c7c:	e8 82 15 00 00       	call   c0005203 <lock>
c0003c81:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003c84:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003c88:	8b 45 08             	mov    0x8(%ebp),%eax
c0003c8b:	89 04 24             	mov    %eax,(%esp)
c0003c8e:	e8 05 ff ff ff       	call   c0003b98 <alloc_vaddr>
c0003c93:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003c96:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0003c9a:	75 0a                	jne    c0003ca6 <malloc_page+0x37>
c0003c9c:	b8 00 00 00 00       	mov    $0x0,%eax
c0003ca1:	e9 c4 00 00 00       	jmp    c0003d6a <malloc_page+0xfb>
c0003ca6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003cad:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0003cb4:	e9 96 00 00 00       	jmp    c0003d4f <malloc_page+0xe0>
c0003cb9:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003cbd:	75 32                	jne    c0003cf1 <malloc_page+0x82>
c0003cbf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0003cc6:	e8 55 ff ff ff       	call   c0003c20 <alloc_mem>
c0003ccb:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003cce:	89 d1                	mov    %edx,%ecx
c0003cd0:	c1 e1 0c             	shl    $0xc,%ecx
c0003cd3:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003cd6:	01 ca                	add    %ecx,%edx
c0003cd8:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003cdf:	00 
c0003ce0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003ce4:	89 14 24             	mov    %edx,(%esp)
c0003ce7:	e8 b5 07 00 00       	call   c00044a1 <add_pte>
c0003cec:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003cef:	eb 30                	jmp    c0003d21 <malloc_page+0xb2>
c0003cf1:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0003cf8:	e8 23 ff ff ff       	call   c0003c20 <alloc_mem>
c0003cfd:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003d00:	89 d1                	mov    %edx,%ecx
c0003d02:	c1 e1 0c             	shl    $0xc,%ecx
c0003d05:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003d08:	01 ca                	add    %ecx,%edx
c0003d0a:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003d11:	00 
c0003d12:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003d16:	89 14 24             	mov    %edx,(%esp)
c0003d19:	e8 83 07 00 00       	call   c00044a1 <add_pte>
c0003d1e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003d21:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0003d25:	75 24                	jne    c0003d4b <malloc_page+0xdc>
c0003d27:	c7 44 24 0c 03 73 00 	movl   $0xc0007303,0xc(%esp)
c0003d2e:	c0 
c0003d2f:	c7 44 24 08 5d 73 00 	movl   $0xc000735d,0x8(%esp)
c0003d36:	c0 
c0003d37:	c7 44 24 04 38 00 00 	movl   $0x38,0x4(%esp)
c0003d3e:	00 
c0003d3f:	c7 04 24 e7 72 00 c0 	movl   $0xc00072e7,(%esp)
c0003d46:	e8 55 f8 ff ff       	call   c00035a0 <panic_spin>
c0003d4b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003d4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003d52:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003d55:	0f 82 5e ff ff ff    	jb     c0003cb9 <malloc_page+0x4a>
c0003d5b:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003d62:	e8 f2 14 00 00       	call   c0005259 <unlock>
c0003d67:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003d6a:	c9                   	leave  
c0003d6b:	c3                   	ret    

c0003d6c <create_vaddr>:
c0003d6c:	55                   	push   %ebp
c0003d6d:	89 e5                	mov    %esp,%ebp
c0003d6f:	83 ec 28             	sub    $0x28,%esp
c0003d72:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003d76:	75 17                	jne    c0003d8f <create_vaddr+0x23>
c0003d78:	c7 45 f4 a0 a7 00 c0 	movl   $0xc000a7a0,-0xc(%ebp)
c0003d7f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003d82:	05 00 f0 df 3f       	add    $0x3fdff000,%eax
c0003d87:	c1 e8 0c             	shr    $0xc,%eax
c0003d8a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003d8d:	eb 1a                	jmp    c0003da9 <create_vaddr+0x3d>
c0003d8f:	e8 74 08 00 00       	call   c0004608 <get_running>
c0003d94:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003d97:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003d9a:	83 c0 04             	add    $0x4,%eax
c0003d9d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003da0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003da3:	c1 e8 0c             	shr    $0xc,%eax
c0003da6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003da9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003dac:	8b 40 0c             	mov    0xc(%eax),%eax
c0003daf:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003db2:	77 24                	ja     c0003dd8 <create_vaddr+0x6c>
c0003db4:	c7 44 24 0c 15 73 00 	movl   $0xc0007315,0xc(%esp)
c0003dbb:	c0 
c0003dbc:	c7 44 24 08 69 73 00 	movl   $0xc0007369,0x8(%esp)
c0003dc3:	c0 
c0003dc4:	c7 44 24 04 4e 00 00 	movl   $0x4e,0x4(%esp)
c0003dcb:	00 
c0003dcc:	c7 04 24 e7 72 00 c0 	movl   $0xc00072e7,(%esp)
c0003dd3:	e8 c8 f7 ff ff       	call   c00035a0 <panic_spin>
c0003dd8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003ddb:	8b 00                	mov    (%eax),%eax
c0003ddd:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0003de0:	77 24                	ja     c0003e06 <create_vaddr+0x9a>
c0003de2:	c7 44 24 0c 28 73 00 	movl   $0xc0007328,0xc(%esp)
c0003de9:	c0 
c0003dea:	c7 44 24 08 69 73 00 	movl   $0xc0007369,0x8(%esp)
c0003df1:	c0 
c0003df2:	c7 44 24 04 4f 00 00 	movl   $0x4f,0x4(%esp)
c0003df9:	00 
c0003dfa:	c7 04 24 e7 72 00 c0 	movl   $0xc00072e7,(%esp)
c0003e01:	e8 9a f7 ff ff       	call   c00035a0 <panic_spin>
c0003e06:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003e09:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003e0c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003e10:	89 04 24             	mov    %eax,(%esp)
c0003e13:	e8 d1 fa ff ff       	call   c00038e9 <bit_test>
c0003e18:	85 c0                	test   %eax,%eax
c0003e1a:	74 07                	je     c0003e23 <create_vaddr+0xb7>
c0003e1c:	b8 00 00 00 00       	mov    $0x0,%eax
c0003e21:	eb 17                	jmp    c0003e3a <create_vaddr+0xce>
c0003e23:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003e26:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003e29:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003e2d:	89 04 24             	mov    %eax,(%esp)
c0003e30:	e8 2e fb ff ff       	call   c0003963 <bit_set>
c0003e35:	b8 01 00 00 00       	mov    $0x1,%eax
c0003e3a:	c9                   	leave  
c0003e3b:	c3                   	ret    

c0003e3c <create_page>:
c0003e3c:	55                   	push   %ebp
c0003e3d:	89 e5                	mov    %esp,%ebp
c0003e3f:	83 ec 28             	sub    $0x28,%esp
c0003e42:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003e49:	e8 b5 13 00 00       	call   c0005203 <lock>
c0003e4e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e51:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0003e56:	89 45 0c             	mov    %eax,0xc(%ebp)
c0003e59:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e5c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003e60:	8b 45 08             	mov    0x8(%ebp),%eax
c0003e63:	89 04 24             	mov    %eax,(%esp)
c0003e66:	e8 01 ff ff ff       	call   c0003d6c <create_vaddr>
c0003e6b:	85 c0                	test   %eax,%eax
c0003e6d:	75 16                	jne    c0003e85 <create_page+0x49>
c0003e6f:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003e76:	e8 de 13 00 00       	call   c0005259 <unlock>
c0003e7b:	b8 00 00 00 00       	mov    $0x0,%eax
c0003e80:	e9 9a 00 00 00       	jmp    c0003f1f <create_page+0xe3>
c0003e85:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003e8c:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003e90:	75 2a                	jne    c0003ebc <create_page+0x80>
c0003e92:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0003e99:	e8 82 fd ff ff       	call   c0003c20 <alloc_mem>
c0003e9e:	89 c2                	mov    %eax,%edx
c0003ea0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003ea3:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003eaa:	00 
c0003eab:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003eaf:	89 04 24             	mov    %eax,(%esp)
c0003eb2:	e8 ea 05 00 00       	call   c00044a1 <add_pte>
c0003eb7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003eba:	eb 28                	jmp    c0003ee4 <create_page+0xa8>
c0003ebc:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0003ec3:	e8 58 fd ff ff       	call   c0003c20 <alloc_mem>
c0003ec8:	89 c2                	mov    %eax,%edx
c0003eca:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003ecd:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003ed4:	00 
c0003ed5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003ed9:	89 04 24             	mov    %eax,(%esp)
c0003edc:	e8 c0 05 00 00       	call   c00044a1 <add_pte>
c0003ee1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003ee4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0003ee8:	75 24                	jne    c0003f0e <create_page+0xd2>
c0003eea:	c7 44 24 0c 03 73 00 	movl   $0xc0007303,0xc(%esp)
c0003ef1:	c0 
c0003ef2:	c7 44 24 08 76 73 00 	movl   $0xc0007376,0x8(%esp)
c0003ef9:	c0 
c0003efa:	c7 44 24 04 66 00 00 	movl   $0x66,0x4(%esp)
c0003f01:	00 
c0003f02:	c7 04 24 e7 72 00 c0 	movl   $0xc00072e7,(%esp)
c0003f09:	e8 92 f6 ff ff       	call   c00035a0 <panic_spin>
c0003f0e:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003f15:	e8 3f 13 00 00       	call   c0005259 <unlock>
c0003f1a:	b8 01 00 00 00       	mov    $0x1,%eax
c0003f1f:	c9                   	leave  
c0003f20:	c3                   	ret    

c0003f21 <free_pool>:
c0003f21:	55                   	push   %ebp
c0003f22:	89 e5                	mov    %esp,%ebp
c0003f24:	83 ec 28             	sub    $0x28,%esp
c0003f27:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003f2e:	eb 29                	jmp    c0003f59 <free_pool+0x38>
c0003f30:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003f33:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003f36:	01 c2                	add    %eax,%edx
c0003f38:	8b 45 08             	mov    0x8(%ebp),%eax
c0003f3b:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003f3f:	89 04 24             	mov    %eax,(%esp)
c0003f42:	e8 bf fa ff ff       	call   c0003a06 <bit_reset>
c0003f47:	85 c0                	test   %eax,%eax
c0003f49:	75 0a                	jne    c0003f55 <free_pool+0x34>
c0003f4b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003f4e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003f51:	01 d0                	add    %edx,%eax
c0003f53:	eb 11                	jmp    c0003f66 <free_pool+0x45>
c0003f55:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003f59:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003f5c:	3b 45 10             	cmp    0x10(%ebp),%eax
c0003f5f:	72 cf                	jb     c0003f30 <free_pool+0xf>
c0003f61:	b8 00 00 00 00       	mov    $0x0,%eax
c0003f66:	c9                   	leave  
c0003f67:	c3                   	ret    

c0003f68 <free_page>:
c0003f68:	55                   	push   %ebp
c0003f69:	89 e5                	mov    %esp,%ebp
c0003f6b:	83 ec 38             	sub    $0x38,%esp
c0003f6e:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003f75:	e8 89 12 00 00       	call   c0005203 <lock>
c0003f7a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0003f7e:	75 24                	jne    c0003fa4 <free_page+0x3c>
c0003f80:	c7 44 24 0c 43 73 00 	movl   $0xc0007343,0xc(%esp)
c0003f87:	c0 
c0003f88:	c7 44 24 08 82 73 00 	movl   $0xc0007382,0x8(%esp)
c0003f8f:	c0 
c0003f90:	c7 44 24 04 7a 00 00 	movl   $0x7a,0x4(%esp)
c0003f97:	00 
c0003f98:	c7 04 24 e7 72 00 c0 	movl   $0xc00072e7,(%esp)
c0003f9f:	e8 fc f5 ff ff       	call   c00035a0 <panic_spin>
c0003fa4:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
c0003fab:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003fae:	05 00 f0 df 3f       	add    $0x3fdff000,%eax
c0003fb3:	c1 e8 0c             	shr    $0xc,%eax
c0003fb6:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003fb9:	8b 45 10             	mov    0x10(%ebp),%eax
c0003fbc:	89 44 24 08          	mov    %eax,0x8(%esp)
c0003fc0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003fc3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003fc7:	c7 04 24 a0 a7 00 c0 	movl   $0xc000a7a0,(%esp)
c0003fce:	e8 4e ff ff ff       	call   c0003f21 <free_pool>
c0003fd3:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0003fd6:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c0003fda:	74 05                	je     c0003fe1 <free_page+0x79>
c0003fdc:	e9 a1 00 00 00       	jmp    c0004082 <free_page+0x11a>
c0003fe1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003fe8:	eb 79                	jmp    c0004063 <free_page+0xfb>
c0003fea:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003fed:	c1 e0 0c             	shl    $0xc,%eax
c0003ff0:	89 c2                	mov    %eax,%edx
c0003ff2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003ff5:	01 d0                	add    %edx,%eax
c0003ff7:	89 04 24             	mov    %eax,(%esp)
c0003ffa:	e8 76 05 00 00       	call   c0004575 <get_paddr>
c0003fff:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0004002:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0004005:	2d 00 10 20 00       	sub    $0x201000,%eax
c000400a:	c1 e8 0c             	shr    $0xc,%eax
c000400d:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0004010:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0004017:	00 
c0004018:	8b 45 e0             	mov    -0x20(%ebp),%eax
c000401b:	89 44 24 04          	mov    %eax,0x4(%esp)
c000401f:	c7 04 24 b0 a7 00 c0 	movl   $0xc000a7b0,(%esp)
c0004026:	e8 f6 fe ff ff       	call   c0003f21 <free_pool>
c000402b:	85 c0                	test   %eax,%eax
c000402d:	75 19                	jne    c0004048 <free_page+0xe0>
c000402f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004032:	c1 e0 0c             	shl    $0xc,%eax
c0004035:	89 c2                	mov    %eax,%edx
c0004037:	8b 45 0c             	mov    0xc(%ebp),%eax
c000403a:	01 d0                	add    %edx,%eax
c000403c:	89 04 24             	mov    %eax,(%esp)
c000403f:	e8 51 05 00 00       	call   c0004595 <reset_pte>
c0004044:	85 c0                	test   %eax,%eax
c0004046:	75 07                	jne    c000404f <free_page+0xe7>
c0004048:	b8 01 00 00 00       	mov    $0x1,%eax
c000404d:	eb 05                	jmp    c0004054 <free_page+0xec>
c000404f:	b8 00 00 00 00       	mov    $0x0,%eax
c0004054:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0004057:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
c000405b:	74 02                	je     c000405f <free_page+0xf7>
c000405d:	eb 23                	jmp    c0004082 <free_page+0x11a>
c000405f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0004063:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004066:	3b 45 10             	cmp    0x10(%ebp),%eax
c0004069:	0f 82 7b ff ff ff    	jb     c0003fea <free_page+0x82>
c000406f:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004076:	e8 de 11 00 00       	call   c0005259 <unlock>
c000407b:	b8 01 00 00 00       	mov    $0x1,%eax
c0004080:	eb 11                	jmp    c0004093 <free_page+0x12b>
c0004082:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004089:	e8 cb 11 00 00       	call   c0005259 <unlock>
c000408e:	b8 00 00 00 00       	mov    $0x0,%eax
c0004093:	c9                   	leave  
c0004094:	c3                   	ret    

c0004095 <mem_decs_init>:
c0004095:	55                   	push   %ebp
c0004096:	89 e5                	mov    %esp,%ebp
c0004098:	83 ec 28             	sub    $0x28,%esp
c000409b:	c7 45 f4 00 04 00 00 	movl   $0x400,-0xc(%ebp)
c00040a2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00040a9:	eb 4a                	jmp    c00040f5 <mem_decs_init+0x60>
c00040ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00040ae:	c1 e0 04             	shl    $0x4,%eax
c00040b1:	89 c2                	mov    %eax,%edx
c00040b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00040b6:	01 c2                	add    %eax,%edx
c00040b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00040bb:	89 02                	mov    %eax,(%edx)
c00040bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00040c0:	c1 e0 04             	shl    $0x4,%eax
c00040c3:	89 c2                	mov    %eax,%edx
c00040c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00040c8:	01 d0                	add    %edx,%eax
c00040ca:	c7 40 04 f0 0f 00 00 	movl   $0xff0,0x4(%eax)
c00040d1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00040d4:	c1 e0 04             	shl    $0x4,%eax
c00040d7:	89 c2                	mov    %eax,%edx
c00040d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00040dc:	01 d0                	add    %edx,%eax
c00040de:	83 c0 08             	add    $0x8,%eax
c00040e1:	89 04 24             	mov    %eax,(%esp)
c00040e4:	e8 12 0b 00 00       	call   c0004bfb <init_list>
c00040e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00040ec:	d1 e8                	shr    %eax
c00040ee:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00040f1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00040f5:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
c00040f9:	76 b0                	jbe    c00040ab <mem_decs_init+0x16>
c00040fb:	c9                   	leave  
c00040fc:	c3                   	ret    

c00040fd <sys_malloc>:
c00040fd:	55                   	push   %ebp
c00040fe:	89 e5                	mov    %esp,%ebp
c0004100:	83 ec 38             	sub    $0x38,%esp
c0004103:	e8 00 05 00 00       	call   c0004608 <get_running>
c0004108:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c000410b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c000410e:	8b 40 48             	mov    0x48(%eax),%eax
c0004111:	3d 00 00 10 00       	cmp    $0x100000,%eax
c0004116:	75 10                	jne    c0004128 <sys_malloc+0x2b>
c0004118:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
c000411f:	c7 45 f4 b0 a7 00 c0 	movl   $0xc000a7b0,-0xc(%ebp)
c0004126:	eb 0e                	jmp    c0004136 <sys_malloc+0x39>
c0004128:	c7 45 f0 02 00 00 00 	movl   $0x2,-0x10(%ebp)
c000412f:	c7 45 f4 90 a7 00 c0 	movl   $0xc000a790,-0xc(%ebp)
c0004136:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004139:	8b 40 0c             	mov    0xc(%eax),%eax
c000413c:	3b 45 08             	cmp    0x8(%ebp),%eax
c000413f:	73 0a                	jae    c000414b <sys_malloc+0x4e>
c0004141:	b8 00 00 00 00       	mov    $0x0,%eax
c0004146:	e9 3e 01 00 00       	jmp    c0004289 <sys_malloc+0x18c>
c000414b:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004152:	e8 ac 10 00 00       	call   c0005203 <lock>
c0004157:	81 7d 08 00 04 00 00 	cmpl   $0x400,0x8(%ebp)
c000415e:	76 5a                	jbe    c00041ba <sys_malloc+0xbd>
c0004160:	8b 45 08             	mov    0x8(%ebp),%eax
c0004163:	83 e8 01             	sub    $0x1,%eax
c0004166:	c1 e8 0a             	shr    $0xa,%eax
c0004169:	83 c0 01             	add    $0x1,%eax
c000416c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004170:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004173:	89 04 24             	mov    %eax,(%esp)
c0004176:	e8 f4 fa ff ff       	call   c0003c6f <malloc_page>
c000417b:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000417e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004181:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
c0004188:	8b 45 08             	mov    0x8(%ebp),%eax
c000418b:	83 e8 01             	sub    $0x1,%eax
c000418e:	c1 e8 0a             	shr    $0xa,%eax
c0004191:	8d 50 01             	lea    0x1(%eax),%edx
c0004194:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004197:	89 50 04             	mov    %edx,0x4(%eax)
c000419a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000419d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00041a3:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c00041aa:	e8 aa 10 00 00       	call   c0005259 <unlock>
c00041af:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00041b2:	83 c0 0c             	add    $0xc,%eax
c00041b5:	e9 cf 00 00 00       	jmp    c0004289 <sys_malloc+0x18c>
c00041ba:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00041c1:	eb 18                	jmp    c00041db <sys_malloc+0xde>
c00041c3:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00041c6:	c1 e0 04             	shl    $0x4,%eax
c00041c9:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c00041ce:	8b 00                	mov    (%eax),%eax
c00041d0:	3b 45 08             	cmp    0x8(%ebp),%eax
c00041d3:	76 02                	jbe    c00041d7 <sys_malloc+0xda>
c00041d5:	eb 0a                	jmp    c00041e1 <sys_malloc+0xe4>
c00041d7:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
c00041db:	83 7d e8 06          	cmpl   $0x6,-0x18(%ebp)
c00041df:	7e e2                	jle    c00041c3 <sys_malloc+0xc6>
c00041e1:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00041e4:	c1 e0 04             	shl    $0x4,%eax
c00041e7:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c00041ec:	83 c0 08             	add    $0x8,%eax
c00041ef:	89 04 24             	mov    %eax,(%esp)
c00041f2:	e8 05 0e 00 00       	call   c0004ffc <lst_empty>
c00041f7:	85 c0                	test   %eax,%eax
c00041f9:	74 57                	je     c0004252 <sys_malloc+0x155>
c00041fb:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0004202:	00 
c0004203:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004206:	89 04 24             	mov    %eax,(%esp)
c0004209:	e8 61 fa ff ff       	call   c0003c6f <malloc_page>
c000420e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0004211:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004214:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c000421b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000421e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004225:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004228:	c1 e0 04             	shl    $0x4,%eax
c000422b:	8d 90 20 a7 00 c0    	lea    -0x3fff58e0(%eax),%edx
c0004231:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004234:	89 10                	mov    %edx,(%eax)
c0004236:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004239:	c1 e0 04             	shl    $0x4,%eax
c000423c:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c0004241:	8b 00                	mov    (%eax),%eax
c0004243:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004247:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000424a:	89 04 24             	mov    %eax,(%esp)
c000424d:	e8 39 00 00 00       	call   c000428b <mblock_cut>
c0004252:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004259:	e8 fb 0f 00 00       	call   c0005259 <unlock>
c000425e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004261:	c1 e0 04             	shl    $0x4,%eax
c0004264:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c0004269:	83 c0 08             	add    $0x8,%eax
c000426c:	89 04 24             	mov    %eax,(%esp)
c000426f:	e8 b8 0a 00 00       	call   c0004d2c <lst_pop>
c0004274:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0004277:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000427a:	8b 40 04             	mov    0x4(%eax),%eax
c000427d:	8d 50 01             	lea    0x1(%eax),%edx
c0004280:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004283:	89 50 04             	mov    %edx,0x4(%eax)
c0004286:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0004289:	c9                   	leave  
c000428a:	c3                   	ret    

c000428b <mblock_cut>:
c000428b:	55                   	push   %ebp
c000428c:	89 e5                	mov    %esp,%ebp
c000428e:	83 ec 28             	sub    $0x28,%esp
c0004291:	8b 45 08             	mov    0x8(%ebp),%eax
c0004294:	83 c0 0c             	add    $0xc,%eax
c0004297:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000429a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00042a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00042a4:	c1 e0 04             	shl    $0x4,%eax
c00042a7:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c00042ac:	8b 08                	mov    (%eax),%ecx
c00042ae:	b8 f4 0f 00 00       	mov    $0xff4,%eax
c00042b3:	ba 00 00 00 00       	mov    $0x0,%edx
c00042b8:	f7 f1                	div    %ecx
c00042ba:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00042bd:	eb 2b                	jmp    c00042ea <mblock_cut+0x5f>
c00042bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00042c2:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00042c5:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00042c8:	8b 55 08             	mov    0x8(%ebp),%edx
c00042cb:	8b 12                	mov    (%edx),%edx
c00042cd:	83 c2 08             	add    $0x8,%edx
c00042d0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00042d4:	89 14 24             	mov    %edx,(%esp)
c00042d7:	e8 37 09 00 00       	call   c0004c13 <lst_push>
c00042dc:	8b 45 08             	mov    0x8(%ebp),%eax
c00042df:	8b 00                	mov    (%eax),%eax
c00042e1:	8b 00                	mov    (%eax),%eax
c00042e3:	01 45 f4             	add    %eax,-0xc(%ebp)
c00042e6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00042ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00042ed:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c00042f0:	7c cd                	jl     c00042bf <mblock_cut+0x34>
c00042f2:	c9                   	leave  
c00042f3:	c3                   	ret    

c00042f4 <sys_free>:
c00042f4:	55                   	push   %ebp
c00042f5:	89 e5                	mov    %esp,%ebp
c00042f7:	83 ec 28             	sub    $0x28,%esp
c00042fa:	e8 09 03 00 00       	call   c0004608 <get_running>
c00042ff:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004302:	8b 45 08             	mov    0x8(%ebp),%eax
c0004305:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0004308:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000430b:	8b 40 48             	mov    0x48(%eax),%eax
c000430e:	3d 00 00 10 00       	cmp    $0x100000,%eax
c0004313:	75 09                	jne    c000431e <sys_free+0x2a>
c0004315:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c000431c:	eb 07                	jmp    c0004325 <sys_free+0x31>
c000431e:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
c0004325:	8b 45 08             	mov    0x8(%ebp),%eax
c0004328:	25 00 10 00 00       	and    $0x1000,%eax
c000432d:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0004330:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004333:	8b 40 08             	mov    0x8(%eax),%eax
c0004336:	85 c0                	test   %eax,%eax
c0004338:	74 1e                	je     c0004358 <sys_free+0x64>
c000433a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000433d:	8b 40 04             	mov    0x4(%eax),%eax
c0004340:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004344:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004347:	89 44 24 04          	mov    %eax,0x4(%esp)
c000434b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000434e:	89 04 24             	mov    %eax,(%esp)
c0004351:	e8 12 fc ff ff       	call   c0003f68 <free_page>
c0004356:	eb 4c                	jmp    c00043a4 <sys_free+0xb0>
c0004358:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000435b:	8b 40 04             	mov    0x4(%eax),%eax
c000435e:	8d 50 ff             	lea    -0x1(%eax),%edx
c0004361:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004364:	89 50 04             	mov    %edx,0x4(%eax)
c0004367:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000436a:	8b 40 04             	mov    0x4(%eax),%eax
c000436d:	85 c0                	test   %eax,%eax
c000436f:	75 1c                	jne    c000438d <sys_free+0x99>
c0004371:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0004378:	00 
c0004379:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000437c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004380:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004383:	89 04 24             	mov    %eax,(%esp)
c0004386:	e8 dd fb ff ff       	call   c0003f68 <free_page>
c000438b:	eb 17                	jmp    c00043a4 <sys_free+0xb0>
c000438d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004390:	8b 55 e8             	mov    -0x18(%ebp),%edx
c0004393:	8b 12                	mov    (%edx),%edx
c0004395:	83 c2 08             	add    $0x8,%edx
c0004398:	89 44 24 04          	mov    %eax,0x4(%esp)
c000439c:	89 14 24             	mov    %edx,(%esp)
c000439f:	e8 6f 08 00 00       	call   c0004c13 <lst_push>
c00043a4:	90                   	nop
c00043a5:	c9                   	leave  
c00043a6:	c3                   	ret    

c00043a7 <init_pool>:
c00043a7:	55                   	push   %ebp
c00043a8:	89 e5                	mov    %esp,%ebp
c00043aa:	83 ec 28             	sub    $0x28,%esp
c00043ad:	b8 09 0b 00 c0       	mov    $0xc0000b09,%eax
c00043b2:	8b 00                	mov    (%eax),%eax
c00043b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00043b7:	c7 05 b8 a7 00 c0 00 	movl   $0x201000,0xc000a7b8
c00043be:	10 20 00 
c00043c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00043c4:	2d 00 10 20 00       	sub    $0x201000,%eax
c00043c9:	d1 e8                	shr    %eax
c00043cb:	a3 bc a7 00 c0       	mov    %eax,0xc000a7bc
c00043d0:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043d5:	05 00 10 20 00       	add    $0x201000,%eax
c00043da:	a3 98 a7 00 c0       	mov    %eax,0xc000a798
c00043df:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043e4:	a3 9c a7 00 c0       	mov    %eax,0xc000a79c
c00043e9:	c7 05 b4 a7 00 c0 00 	movl   $0xc009a000,0xc000a7b4
c00043f0:	a0 09 c0 
c00043f3:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043f8:	a3 b0 a7 00 c0       	mov    %eax,0xc000a7b0
c00043fd:	c7 04 24 b0 a7 00 c0 	movl   $0xc000a7b0,(%esp)
c0004404:	e8 db f4 ff ff       	call   c00038e4 <init_bit_map>
c0004409:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c000440e:	c1 e8 0c             	shr    $0xc,%eax
c0004411:	2d 00 60 f6 3f       	sub    $0x3ff66000,%eax
c0004416:	a3 94 a7 00 c0       	mov    %eax,0xc000a794
c000441b:	a1 9c a7 00 c0       	mov    0xc000a79c,%eax
c0004420:	a3 90 a7 00 c0       	mov    %eax,0xc000a790
c0004425:	c7 04 24 90 a7 00 c0 	movl   $0xc000a790,(%esp)
c000442c:	e8 b3 f4 ff ff       	call   c00038e4 <init_bit_map>
c0004431:	c7 05 ac a7 00 c0 00 	movl   $0x40000000,0xc000a7ac
c0004438:	00 00 40 
c000443b:	c7 05 a8 a7 00 c0 00 	movl   $0xc0201000,0xc000a7a8
c0004442:	10 20 c0 
c0004445:	c7 05 a4 a7 00 c0 00 	movl   $0x92000,0xc000a7a4
c000444c:	20 09 00 
c000444f:	a1 ac a7 00 c0       	mov    0xc000a7ac,%eax
c0004454:	2d 00 10 20 00       	sub    $0x201000,%eax
c0004459:	c1 e8 0c             	shr    $0xc,%eax
c000445c:	a3 a0 a7 00 c0       	mov    %eax,0xc000a7a0
c0004461:	c7 04 24 a0 a7 00 c0 	movl   $0xc000a7a0,(%esp)
c0004468:	e8 77 f4 ff ff       	call   c00038e4 <init_bit_map>
c000446d:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004474:	e8 dc 0b 00 00       	call   c0005055 <init_mutex>
c0004479:	c9                   	leave  
c000447a:	c3                   	ret    

c000447b <get_pde_ptr>:
c000447b:	55                   	push   %ebp
c000447c:	89 e5                	mov    %esp,%ebp
c000447e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004481:	c1 e8 14             	shr    $0x14,%eax
c0004484:	35 00 f0 ff ff       	xor    $0xfffff000,%eax
c0004489:	83 e0 fc             	and    $0xfffffffc,%eax
c000448c:	5d                   	pop    %ebp
c000448d:	c3                   	ret    

c000448e <get_pte_ptr>:
c000448e:	55                   	push   %ebp
c000448f:	89 e5                	mov    %esp,%ebp
c0004491:	8b 45 08             	mov    0x8(%ebp),%eax
c0004494:	c1 e8 0a             	shr    $0xa,%eax
c0004497:	35 00 00 c0 ff       	xor    $0xffc00000,%eax
c000449c:	83 e0 fc             	and    $0xfffffffc,%eax
c000449f:	5d                   	pop    %ebp
c00044a0:	c3                   	ret    

c00044a1 <add_pte>:
c00044a1:	55                   	push   %ebp
c00044a2:	89 e5                	mov    %esp,%ebp
c00044a4:	83 ec 28             	sub    $0x28,%esp
c00044a7:	8b 45 10             	mov    0x10(%ebp),%eax
c00044aa:	88 45 e4             	mov    %al,-0x1c(%ebp)
c00044ad:	8b 45 08             	mov    0x8(%ebp),%eax
c00044b0:	89 04 24             	mov    %eax,(%esp)
c00044b3:	e8 c3 ff ff ff       	call   c000447b <get_pde_ptr>
c00044b8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00044bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00044be:	8b 00                	mov    (%eax),%eax
c00044c0:	83 e0 01             	and    $0x1,%eax
c00044c3:	85 c0                	test   %eax,%eax
c00044c5:	75 61                	jne    c0004528 <add_pte+0x87>
c00044c7:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00044ce:	00 
c00044cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c00044d6:	e8 94 f7 ff ff       	call   c0003c6f <malloc_page>
c00044db:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00044de:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00044e1:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00044e8:	00 
c00044e9:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
c00044f0:	00 
c00044f1:	89 04 24             	mov    %eax,(%esp)
c00044f4:	e8 b4 f1 ff ff       	call   c00036ad <memset_8>
c00044f9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00044fc:	89 04 24             	mov    %eax,(%esp)
c00044ff:	e8 71 00 00 00       	call   c0004575 <get_paddr>
c0004504:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004509:	89 c2                	mov    %eax,%edx
c000450b:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c000450f:	01 d0                	add    %edx,%eax
c0004511:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004515:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c000451c:	00 
c000451d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004520:	89 04 24             	mov    %eax,(%esp)
c0004523:	e8 e7 f1 ff ff       	call   c000370f <memset_32>
c0004528:	8b 45 08             	mov    0x8(%ebp),%eax
c000452b:	89 04 24             	mov    %eax,(%esp)
c000452e:	e8 5b ff ff ff       	call   c000448e <get_pte_ptr>
c0004533:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0004536:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004539:	8b 00                	mov    (%eax),%eax
c000453b:	83 e0 01             	and    $0x1,%eax
c000453e:	85 c0                	test   %eax,%eax
c0004540:	75 2c                	jne    c000456e <add_pte+0xcd>
c0004542:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004545:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c000454a:	89 c2                	mov    %eax,%edx
c000454c:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c0004550:	01 d0                	add    %edx,%eax
c0004552:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004556:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c000455d:	00 
c000455e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004561:	89 04 24             	mov    %eax,(%esp)
c0004564:	e8 a6 f1 ff ff       	call   c000370f <memset_32>
c0004569:	8b 45 08             	mov    0x8(%ebp),%eax
c000456c:	eb 05                	jmp    c0004573 <add_pte+0xd2>
c000456e:	b8 00 00 00 00       	mov    $0x0,%eax
c0004573:	c9                   	leave  
c0004574:	c3                   	ret    

c0004575 <get_paddr>:
c0004575:	55                   	push   %ebp
c0004576:	89 e5                	mov    %esp,%ebp
c0004578:	83 ec 14             	sub    $0x14,%esp
c000457b:	8b 45 08             	mov    0x8(%ebp),%eax
c000457e:	89 04 24             	mov    %eax,(%esp)
c0004581:	e8 08 ff ff ff       	call   c000448e <get_pte_ptr>
c0004586:	8b 00                	mov    (%eax),%eax
c0004588:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000458b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000458e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004593:	c9                   	leave  
c0004594:	c3                   	ret    

c0004595 <reset_pte>:
c0004595:	55                   	push   %ebp
c0004596:	89 e5                	mov    %esp,%ebp
c0004598:	83 ec 28             	sub    $0x28,%esp
c000459b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000459f:	75 24                	jne    c00045c5 <reset_pte+0x30>
c00045a1:	c7 44 24 0c 8c 73 00 	movl   $0xc000738c,0xc(%esp)
c00045a8:	c0 
c00045a9:	c7 44 24 08 b0 73 00 	movl   $0xc00073b0,0x8(%esp)
c00045b0:	c0 
c00045b1:	c7 44 24 04 53 00 00 	movl   $0x53,0x4(%esp)
c00045b8:	00 
c00045b9:	c7 04 24 97 73 00 c0 	movl   $0xc0007397,(%esp)
c00045c0:	e8 db ef ff ff       	call   c00035a0 <panic_spin>
c00045c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00045c8:	89 04 24             	mov    %eax,(%esp)
c00045cb:	e8 be fe ff ff       	call   c000448e <get_pte_ptr>
c00045d0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00045d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00045d6:	8b 00                	mov    (%eax),%eax
c00045d8:	83 e0 01             	and    $0x1,%eax
c00045db:	85 c0                	test   %eax,%eax
c00045dd:	75 07                	jne    c00045e6 <reset_pte+0x51>
c00045df:	b8 00 00 00 00       	mov    $0x0,%eax
c00045e4:	eb 20                	jmp    c0004606 <reset_pte+0x71>
c00045e6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00045ed:	00 
c00045ee:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00045f5:	00 
c00045f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00045f9:	89 04 24             	mov    %eax,(%esp)
c00045fc:	e8 0e f1 ff ff       	call   c000370f <memset_32>
c0004601:	b8 01 00 00 00       	mov    $0x1,%eax
c0004606:	c9                   	leave  
c0004607:	c3                   	ret    

c0004608 <get_running>:
c0004608:	55                   	push   %ebp
c0004609:	89 e5                	mov    %esp,%ebp
c000460b:	83 ec 10             	sub    $0x10,%esp
c000460e:	89 e0                	mov    %esp,%eax
c0004610:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0004613:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0004616:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c000461b:	c9                   	leave  
c000461c:	c3                   	ret    

c000461d <schedule>:
c000461d:	55                   	push   %ebp
c000461e:	89 e5                	mov    %esp,%ebp
c0004620:	83 ec 28             	sub    $0x28,%esp
c0004623:	e8 06 ef ff ff       	call   c000352e <get_int_status>
c0004628:	85 c0                	test   %eax,%eax
c000462a:	74 24                	je     c0004650 <schedule+0x33>
c000462c:	c7 44 24 0c bc 73 00 	movl   $0xc00073bc,0xc(%esp)
c0004633:	c0 
c0004634:	c7 44 24 08 7e 74 00 	movl   $0xc000747e,0x8(%esp)
c000463b:	c0 
c000463c:	c7 44 24 04 15 00 00 	movl   $0x15,0x4(%esp)
c0004643:	00 
c0004644:	c7 04 24 d8 73 00 c0 	movl   $0xc00073d8,(%esp)
c000464b:	e8 50 ef ff ff       	call   c00035a0 <panic_spin>
c0004650:	e8 b3 ff ff ff       	call   c0004608 <get_running>
c0004655:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004658:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c000465f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004662:	8b 40 28             	mov    0x28(%eax),%eax
c0004665:	83 f8 03             	cmp    $0x3,%eax
c0004668:	75 40                	jne    c00046aa <schedule+0x8d>
c000466a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000466d:	83 c0 40             	add    $0x40,%eax
c0004670:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004674:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c000467b:	e8 af 07 00 00       	call   c0004e2f <lst_remove>
c0004680:	81 7d f4 00 e0 09 00 	cmpl   $0x9e000,-0xc(%ebp)
c0004687:	0f 84 92 00 00 00    	je     c000471f <schedule+0x102>
c000468d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0004694:	00 
c0004695:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004698:	89 44 24 04          	mov    %eax,0x4(%esp)
c000469c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c00046a3:	e8 c0 f8 ff ff       	call   c0003f68 <free_page>
c00046a8:	eb 75                	jmp    c000471f <schedule+0x102>
c00046aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046ad:	8b 40 28             	mov    0x28(%eax),%eax
c00046b0:	83 f8 01             	cmp    $0x1,%eax
c00046b3:	75 22                	jne    c00046d7 <schedule+0xba>
c00046b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046b8:	83 c0 38             	add    $0x38,%eax
c00046bb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00046bf:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c00046c6:	e8 48 05 00 00       	call   c0004c13 <lst_push>
c00046cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046ce:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c00046d5:	eb 48                	jmp    c000471f <schedule+0x102>
c00046d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046da:	8b 40 28             	mov    0x28(%eax),%eax
c00046dd:	85 c0                	test   %eax,%eax
c00046df:	75 3e                	jne    c000471f <schedule+0x102>
c00046e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046e4:	83 c0 38             	add    $0x38,%eax
c00046e7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00046eb:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c00046f2:	e8 d3 06 00 00       	call   c0004dca <lst_find>
c00046f7:	85 c0                	test   %eax,%eax
c00046f9:	74 24                	je     c000471f <schedule+0x102>
c00046fb:	c7 44 24 0c f0 73 00 	movl   $0xc00073f0,0xc(%esp)
c0004702:	c0 
c0004703:	c7 44 24 08 7e 74 00 	movl   $0xc000747e,0x8(%esp)
c000470a:	c0 
c000470b:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c0004712:	00 
c0004713:	c7 04 24 d8 73 00 c0 	movl   $0xc00073d8,(%esp)
c000471a:	e8 81 ee ff ff       	call   c00035a0 <panic_spin>
c000471f:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004726:	e8 d1 08 00 00       	call   c0004ffc <lst_empty>
c000472b:	85 c0                	test   %eax,%eax
c000472d:	74 0d                	je     c000473c <schedule+0x11f>
c000472f:	a1 38 b0 00 c0       	mov    0xc000b038,%eax
c0004734:	89 04 24             	mov    %eax,(%esp)
c0004737:	e8 f4 0b 00 00       	call   c0005330 <thread_unblock>
c000473c:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004743:	e8 e4 05 00 00       	call   c0004d2c <lst_pop>
c0004748:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000474b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000474e:	83 e8 38             	sub    $0x38,%eax
c0004751:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004754:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004757:	25 ff 0f 00 00       	and    $0xfff,%eax
c000475c:	85 c0                	test   %eax,%eax
c000475e:	74 24                	je     c0004784 <schedule+0x167>
c0004760:	c7 44 24 0c 18 74 00 	movl   $0xc0007418,0xc(%esp)
c0004767:	c0 
c0004768:	c7 44 24 08 7e 74 00 	movl   $0xc000747e,0x8(%esp)
c000476f:	c0 
c0004770:	c7 44 24 04 2b 00 00 	movl   $0x2b,0x4(%esp)
c0004777:	00 
c0004778:	c7 04 24 d8 73 00 c0 	movl   $0xc00073d8,(%esp)
c000477f:	e8 1c ee ff ff       	call   c00035a0 <panic_spin>
c0004784:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0004788:	75 24                	jne    c00047ae <schedule+0x191>
c000478a:	c7 44 24 0c 32 74 00 	movl   $0xc0007432,0xc(%esp)
c0004791:	c0 
c0004792:	c7 44 24 08 7e 74 00 	movl   $0xc000747e,0x8(%esp)
c0004799:	c0 
c000479a:	c7 44 24 04 2c 00 00 	movl   $0x2c,0x4(%esp)
c00047a1:	00 
c00047a2:	c7 04 24 d8 73 00 c0 	movl   $0xc00073d8,(%esp)
c00047a9:	e8 f2 ed ff ff       	call   c00035a0 <panic_spin>
c00047ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047b1:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c00047b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047bb:	8b 40 48             	mov    0x48(%eax),%eax
c00047be:	85 c0                	test   %eax,%eax
c00047c0:	74 09                	je     c00047cb <schedule+0x1ae>
c00047c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047c5:	8b 40 48             	mov    0x48(%eax),%eax
c00047c8:	0f 22 d8             	mov    %eax,%cr3
c00047cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047ce:	89 04 24             	mov    %eax,(%esp)
c00047d1:	e8 7c 12 00 00       	call   c0005a52 <exchange_esp0>
c00047d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047d9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00047dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047e0:	89 04 24             	mov    %eax,(%esp)
c00047e3:	e8 58 08 00 00       	call   c0005040 <switch_on>
c00047e8:	c9                   	leave  
c00047e9:	c3                   	ret    

c00047ea <print_thread>:
c00047ea:	55                   	push   %ebp
c00047eb:	89 e5                	mov    %esp,%ebp
c00047ed:	5d                   	pop    %ebp
c00047ee:	c3                   	ret    

c00047ef <thread_fun_exc>:
c00047ef:	55                   	push   %ebp
c00047f0:	89 e5                	mov    %esp,%ebp
c00047f2:	83 ec 18             	sub    $0x18,%esp
c00047f5:	e8 58 ed ff ff       	call   c0003552 <int_enable>
c00047fa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00047fd:	89 04 24             	mov    %eax,(%esp)
c0004800:	8b 45 08             	mov    0x8(%ebp),%eax
c0004803:	ff d0                	call   *%eax
c0004805:	e8 5c ed ff ff       	call   c0003566 <int_disable>
c000480a:	e8 f9 fd ff ff       	call   c0004608 <get_running>
c000480f:	c7 40 28 03 00 00 00 	movl   $0x3,0x28(%eax)
c0004816:	e8 02 fe ff ff       	call   c000461d <schedule>
c000481b:	e8 32 ed ff ff       	call   c0003552 <int_enable>
c0004820:	c9                   	leave  
c0004821:	c3                   	ret    

c0004822 <thread_finished>:
c0004822:	55                   	push   %ebp
c0004823:	89 e5                	mov    %esp,%ebp
c0004825:	83 ec 08             	sub    $0x8,%esp
c0004828:	e8 39 ed ff ff       	call   c0003566 <int_disable>
c000482d:	e8 d6 fd ff ff       	call   c0004608 <get_running>
c0004832:	c7 40 28 03 00 00 00 	movl   $0x3,0x28(%eax)
c0004839:	e8 df fd ff ff       	call   c000461d <schedule>
c000483e:	e8 0f ed ff ff       	call   c0003552 <int_enable>
c0004843:	c9                   	leave  
c0004844:	c3                   	ret    

c0004845 <acquire_id>:
c0004845:	55                   	push   %ebp
c0004846:	89 e5                	mov    %esp,%ebp
c0004848:	83 ec 28             	sub    $0x28,%esp
c000484b:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c0004852:	e8 ac 09 00 00       	call   c0005203 <lock>
c0004857:	a1 3c b0 00 c0       	mov    0xc000b03c,%eax
c000485c:	8d 50 01             	lea    0x1(%eax),%edx
c000485f:	89 15 3c b0 00 c0    	mov    %edx,0xc000b03c
c0004865:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004868:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c000486f:	e8 e5 09 00 00       	call   c0005259 <unlock>
c0004874:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004877:	c9                   	leave  
c0004878:	c3                   	ret    

c0004879 <create_thread>:
c0004879:	55                   	push   %ebp
c000487a:	89 e5                	mov    %esp,%ebp
c000487c:	83 ec 28             	sub    $0x28,%esp
c000487f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004883:	75 24                	jne    c00048a9 <create_thread+0x30>
c0004885:	c7 44 24 0c 3f 74 00 	movl   $0xc000743f,0xc(%esp)
c000488c:	c0 
c000488d:	c7 44 24 08 87 74 00 	movl   $0xc0007487,0x8(%esp)
c0004894:	c0 
c0004895:	c7 44 24 04 58 00 00 	movl   $0x58,0x4(%esp)
c000489c:	00 
c000489d:	c7 04 24 d8 73 00 c0 	movl   $0xc00073d8,(%esp)
c00048a4:	e8 f7 ec ff ff       	call   c00035a0 <panic_spin>
c00048a9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00048b0:	00 
c00048b1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c00048b8:	e8 b2 f3 ff ff       	call   c0003c6f <malloc_page>
c00048bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00048c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048c3:	8d 50 14             	lea    0x14(%eax),%edx
c00048c6:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
c00048cd:	00 
c00048ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00048d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00048d5:	89 14 24             	mov    %edx,(%esp)
c00048d8:	e8 8d ee ff ff       	call   c000376a <memcopy>
c00048dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048e0:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c00048e7:	e8 59 ff ff ff       	call   c0004845 <acquire_id>
c00048ec:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00048ef:	89 42 24             	mov    %eax,0x24(%edx)
c00048f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048f5:	8b 55 0c             	mov    0xc(%ebp),%edx
c00048f8:	89 50 2c             	mov    %edx,0x2c(%eax)
c00048fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048fe:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004901:	89 50 30             	mov    %edx,0x30(%eax)
c0004904:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004907:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
c000490e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004911:	c7 40 4c 09 ad ff 78 	movl   $0x78ffad09,0x4c(%eax)
c0004918:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000491b:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%eax)
c0004922:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004925:	c9                   	leave  
c0004926:	c3                   	ret    

c0004927 <init_thread>:
c0004927:	55                   	push   %ebp
c0004928:	89 e5                	mov    %esp,%ebp
c000492a:	83 ec 28             	sub    $0x28,%esp
c000492d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004930:	05 e0 0f 00 00       	add    $0xfe0,%eax
c0004935:	89 c2                	mov    %eax,%edx
c0004937:	8b 45 08             	mov    0x8(%ebp),%eax
c000493a:	89 10                	mov    %edx,(%eax)
c000493c:	8b 45 08             	mov    0x8(%ebp),%eax
c000493f:	8b 00                	mov    (%eax),%eax
c0004941:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004944:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004947:	c7 40 10 ef 47 00 c0 	movl   $0xc00047ef,0x10(%eax)
c000494e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004951:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004954:	89 50 18             	mov    %edx,0x18(%eax)
c0004957:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000495a:	8b 55 10             	mov    0x10(%ebp),%edx
c000495d:	89 50 1c             	mov    %edx,0x1c(%eax)
c0004960:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004963:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c000496a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000496d:	8b 50 0c             	mov    0xc(%eax),%edx
c0004970:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004973:	89 50 08             	mov    %edx,0x8(%eax)
c0004976:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004979:	8b 50 08             	mov    0x8(%eax),%edx
c000497c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000497f:	89 10                	mov    %edx,(%eax)
c0004981:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004984:	8b 10                	mov    (%eax),%edx
c0004986:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004989:	89 50 04             	mov    %edx,0x4(%eax)
c000498c:	8b 45 08             	mov    0x8(%ebp),%eax
c000498f:	83 c0 38             	add    $0x38,%eax
c0004992:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004996:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c000499d:	e8 71 02 00 00       	call   c0004c13 <lst_push>
c00049a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00049a5:	83 c0 40             	add    $0x40,%eax
c00049a8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00049ac:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c00049b3:	e8 5b 02 00 00       	call   c0004c13 <lst_push>
c00049b8:	c9                   	leave  
c00049b9:	c3                   	ret    

c00049ba <init_main>:
c00049ba:	55                   	push   %ebp
c00049bb:	89 e5                	mov    %esp,%ebp
c00049bd:	83 ec 28             	sub    $0x28,%esp
c00049c0:	c7 45 f4 00 e0 09 00 	movl   $0x9e000,-0xc(%ebp)
c00049c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049ca:	c7 00 e0 ef 09 00    	movl   $0x9efe0,(%eax)
c00049d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049d3:	83 c0 14             	add    $0x14,%eax
c00049d6:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c00049dd:	00 
c00049de:	c7 44 24 04 4c 74 00 	movl   $0xc000744c,0x4(%esp)
c00049e5:	c0 
c00049e6:	89 04 24             	mov    %eax,(%esp)
c00049e9:	e8 7c ed ff ff       	call   c000376a <memcopy>
c00049ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049f1:	83 c0 64             	add    $0x64,%eax
c00049f4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00049fb:	00 
c00049fc:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c0004a03:	00 
c0004a04:	89 04 24             	mov    %eax,(%esp)
c0004a07:	e8 a1 ec ff ff       	call   c00036ad <memset_8>
c0004a0c:	a1 3c b0 00 c0       	mov    0xc000b03c,%eax
c0004a11:	8d 50 01             	lea    0x1(%eax),%edx
c0004a14:	89 15 3c b0 00 c0    	mov    %edx,0xc000b03c
c0004a1a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0004a1d:	89 42 24             	mov    %eax,0x24(%edx)
c0004a20:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a23:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c0004a2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a2d:	c7 40 30 14 00 00 00 	movl   $0x14,0x30(%eax)
c0004a34:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a37:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
c0004a3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a41:	c7 40 2c 14 00 00 00 	movl   $0x14,0x2c(%eax)
c0004a48:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a4b:	c7 40 4c 09 ad ff 78 	movl   $0x78ffad09,0x4c(%eax)
c0004a52:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a55:	83 c0 40             	add    $0x40,%eax
c0004a58:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004a5c:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c0004a63:	e8 ab 01 00 00       	call   c0004c13 <lst_push>
c0004a68:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a6b:	c7 40 48 00 00 10 00 	movl   $0x100000,0x48(%eax)
c0004a72:	b8 fc ef 09 00       	mov    $0x9effc,%eax
c0004a77:	ba 22 48 00 c0       	mov    $0xc0004822,%edx
c0004a7c:	89 10                	mov    %edx,(%eax)
c0004a7e:	c9                   	leave  
c0004a7f:	c3                   	ret    

c0004a80 <init_thread_list>:
c0004a80:	55                   	push   %ebp
c0004a81:	89 e5                	mov    %esp,%ebp
c0004a83:	83 ec 18             	sub    $0x18,%esp
c0004a86:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004a8d:	e8 69 01 00 00       	call   c0004bfb <init_list>
c0004a92:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c0004a99:	e8 5d 01 00 00       	call   c0004bfb <init_list>
c0004a9e:	e8 17 ff ff ff       	call   c00049ba <init_main>
c0004aa3:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c0004aaa:	e8 a6 05 00 00       	call   c0005055 <init_mutex>
c0004aaf:	c7 05 3c b0 00 c0 00 	movl   $0x0,0xc000b03c
c0004ab6:	00 00 00 
c0004ab9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0004ac0:	00 
c0004ac1:	c7 44 24 08 e4 4a 00 	movl   $0xc0004ae4,0x8(%esp)
c0004ac8:	c0 
c0004ac9:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
c0004ad0:	00 
c0004ad1:	c7 04 24 51 74 00 c0 	movl   $0xc0007451,(%esp)
c0004ad8:	e8 d7 00 00 00       	call   c0004bb4 <thread_start>
c0004add:	a3 38 b0 00 c0       	mov    %eax,0xc000b038
c0004ae2:	c9                   	leave  
c0004ae3:	c3                   	ret    

c0004ae4 <deamon_fun>:
c0004ae4:	55                   	push   %ebp
c0004ae5:	89 e5                	mov    %esp,%ebp
c0004ae7:	83 ec 28             	sub    $0x28,%esp
c0004aea:	e8 77 ea ff ff       	call   c0003566 <int_disable>
c0004aef:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004af2:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004af9:	e8 fe 04 00 00       	call   c0004ffc <lst_empty>
c0004afe:	85 c0                	test   %eax,%eax
c0004b00:	75 0d                	jne    c0004b0f <deamon_fun+0x2b>
c0004b02:	a1 38 b0 00 c0       	mov    0xc000b038,%eax
c0004b07:	89 04 24             	mov    %eax,(%esp)
c0004b0a:	e8 95 07 00 00       	call   c00052a4 <thread_block>
c0004b0f:	fb                   	sti    
c0004b10:	f4                   	hlt    
c0004b11:	eb d7                	jmp    c0004aea <deamon_fun+0x6>

c0004b13 <thread_yield>:
c0004b13:	55                   	push   %ebp
c0004b14:	89 e5                	mov    %esp,%ebp
c0004b16:	83 ec 28             	sub    $0x28,%esp
c0004b19:	e8 48 ea ff ff       	call   c0003566 <int_disable>
c0004b1e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004b21:	e8 e2 fa ff ff       	call   c0004608 <get_running>
c0004b26:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004b29:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b2c:	83 c0 38             	add    $0x38,%eax
c0004b2f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004b33:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004b3a:	e8 8b 02 00 00       	call   c0004dca <lst_find>
c0004b3f:	85 c0                	test   %eax,%eax
c0004b41:	74 24                	je     c0004b67 <thread_yield+0x54>
c0004b43:	c7 44 24 0c 58 74 00 	movl   $0xc0007458,0xc(%esp)
c0004b4a:	c0 
c0004b4b:	c7 44 24 08 95 74 00 	movl   $0xc0007495,0x8(%esp)
c0004b52:	c0 
c0004b53:	c7 44 24 04 a4 00 00 	movl   $0xa4,0x4(%esp)
c0004b5a:	00 
c0004b5b:	c7 04 24 d8 73 00 c0 	movl   $0xc00073d8,(%esp)
c0004b62:	e8 39 ea ff ff       	call   c00035a0 <panic_spin>
c0004b67:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b6a:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c0004b71:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b74:	83 c0 38             	add    $0x38,%eax
c0004b77:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004b7b:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004b82:	e8 8c 00 00 00       	call   c0004c13 <lst_push>
c0004b87:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b8a:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
c0004b91:	e8 bc e9 ff ff       	call   c0003552 <int_enable>
c0004b96:	90                   	nop
c0004b97:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b9a:	8b 40 2c             	mov    0x2c(%eax),%eax
c0004b9d:	83 f8 01             	cmp    $0x1,%eax
c0004ba0:	74 f5                	je     c0004b97 <thread_yield+0x84>
c0004ba2:	e8 bf e9 ff ff       	call   c0003566 <int_disable>
c0004ba7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004baa:	89 04 24             	mov    %eax,(%esp)
c0004bad:	e8 c8 e9 ff ff       	call   c000357a <set_int_status>
c0004bb2:	c9                   	leave  
c0004bb3:	c3                   	ret    

c0004bb4 <thread_start>:
c0004bb4:	55                   	push   %ebp
c0004bb5:	89 e5                	mov    %esp,%ebp
c0004bb7:	83 ec 28             	sub    $0x28,%esp
c0004bba:	8b 45 14             	mov    0x14(%ebp),%eax
c0004bbd:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0004bc1:	8b 45 10             	mov    0x10(%ebp),%eax
c0004bc4:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004bc8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004bcb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004bcf:	8b 45 08             	mov    0x8(%ebp),%eax
c0004bd2:	89 04 24             	mov    %eax,(%esp)
c0004bd5:	e8 9f fc ff ff       	call   c0004879 <create_thread>
c0004bda:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004bdd:	8b 45 14             	mov    0x14(%ebp),%eax
c0004be0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004be4:	8b 45 10             	mov    0x10(%ebp),%eax
c0004be7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004beb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004bee:	89 04 24             	mov    %eax,(%esp)
c0004bf1:	e8 31 fd ff ff       	call   c0004927 <init_thread>
c0004bf6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004bf9:	c9                   	leave  
c0004bfa:	c3                   	ret    

c0004bfb <init_list>:
c0004bfb:	55                   	push   %ebp
c0004bfc:	89 e5                	mov    %esp,%ebp
c0004bfe:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c01:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004c08:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c0b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004c11:	5d                   	pop    %ebp
c0004c12:	c3                   	ret    

c0004c13 <lst_push>:
c0004c13:	55                   	push   %ebp
c0004c14:	89 e5                	mov    %esp,%ebp
c0004c16:	83 ec 28             	sub    $0x28,%esp
c0004c19:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004c1d:	75 24                	jne    c0004c43 <lst_push+0x30>
c0004c1f:	c7 44 24 0c a4 74 00 	movl   $0xc00074a4,0xc(%esp)
c0004c26:	c0 
c0004c27:	c7 44 24 08 9c 75 00 	movl   $0xc000759c,0x8(%esp)
c0004c2e:	c0 
c0004c2f:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c0004c36:	00 
c0004c37:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004c3e:	e8 5d e9 ff ff       	call   c00035a0 <panic_spin>
c0004c43:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004c46:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004c4a:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c4d:	89 04 24             	mov    %eax,(%esp)
c0004c50:	e8 75 01 00 00       	call   c0004dca <lst_find>
c0004c55:	85 c0                	test   %eax,%eax
c0004c57:	74 24                	je     c0004c7d <lst_push+0x6a>
c0004c59:	c7 44 24 0c d5 74 00 	movl   $0xc00074d5,0xc(%esp)
c0004c60:	c0 
c0004c61:	c7 44 24 08 9c 75 00 	movl   $0xc000759c,0x8(%esp)
c0004c68:	c0 
c0004c69:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
c0004c70:	00 
c0004c71:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004c78:	e8 23 e9 ff ff       	call   c00035a0 <panic_spin>
c0004c7d:	e8 e4 e8 ff ff       	call   c0003566 <int_disable>
c0004c82:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004c85:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c88:	8b 40 04             	mov    0x4(%eax),%eax
c0004c8b:	85 c0                	test   %eax,%eax
c0004c8d:	75 26                	jne    c0004cb5 <lst_push+0xa2>
c0004c8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c92:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c95:	89 50 04             	mov    %edx,0x4(%eax)
c0004c98:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c9b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c9e:	89 10                	mov    %edx,(%eax)
c0004ca0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ca3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004caa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004cad:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004cb3:	eb 26                	jmp    c0004cdb <lst_push+0xc8>
c0004cb5:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cb8:	8b 10                	mov    (%eax),%edx
c0004cba:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004cbd:	89 50 04             	mov    %edx,0x4(%eax)
c0004cc0:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cc3:	8b 00                	mov    (%eax),%eax
c0004cc5:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004cc8:	89 10                	mov    %edx,(%eax)
c0004cca:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ccd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004cd3:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cd6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004cd9:	89 10                	mov    %edx,(%eax)
c0004cdb:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cde:	8b 00                	mov    (%eax),%eax
c0004ce0:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004ce3:	75 3a                	jne    c0004d1f <lst_push+0x10c>
c0004ce5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ce8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004cec:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cef:	89 04 24             	mov    %eax,(%esp)
c0004cf2:	e8 d3 00 00 00       	call   c0004dca <lst_find>
c0004cf7:	85 c0                	test   %eax,%eax
c0004cf9:	75 24                	jne    c0004d1f <lst_push+0x10c>
c0004cfb:	c7 44 24 0c ec 74 00 	movl   $0xc00074ec,0xc(%esp)
c0004d02:	c0 
c0004d03:	c7 44 24 08 9c 75 00 	movl   $0xc000759c,0x8(%esp)
c0004d0a:	c0 
c0004d0b:	c7 44 24 04 1b 00 00 	movl   $0x1b,0x4(%esp)
c0004d12:	00 
c0004d13:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004d1a:	e8 81 e8 ff ff       	call   c00035a0 <panic_spin>
c0004d1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004d22:	89 04 24             	mov    %eax,(%esp)
c0004d25:	e8 50 e8 ff ff       	call   c000357a <set_int_status>
c0004d2a:	c9                   	leave  
c0004d2b:	c3                   	ret    

c0004d2c <lst_pop>:
c0004d2c:	55                   	push   %ebp
c0004d2d:	89 e5                	mov    %esp,%ebp
c0004d2f:	83 ec 28             	sub    $0x28,%esp
c0004d32:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d35:	8b 40 04             	mov    0x4(%eax),%eax
c0004d38:	85 c0                	test   %eax,%eax
c0004d3a:	75 24                	jne    c0004d60 <lst_pop+0x34>
c0004d3c:	c7 44 24 0c 18 75 00 	movl   $0xc0007518,0xc(%esp)
c0004d43:	c0 
c0004d44:	c7 44 24 08 a5 75 00 	movl   $0xc00075a5,0x8(%esp)
c0004d4b:	c0 
c0004d4c:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c0004d53:	00 
c0004d54:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004d5b:	e8 40 e8 ff ff       	call   c00035a0 <panic_spin>
c0004d60:	e8 01 e8 ff ff       	call   c0003566 <int_disable>
c0004d65:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004d68:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d6b:	8b 40 04             	mov    0x4(%eax),%eax
c0004d6e:	85 c0                	test   %eax,%eax
c0004d70:	75 07                	jne    c0004d79 <lst_pop+0x4d>
c0004d72:	b8 00 00 00 00       	mov    $0x0,%eax
c0004d77:	eb 4f                	jmp    c0004dc8 <lst_pop+0x9c>
c0004d79:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d7c:	8b 40 04             	mov    0x4(%eax),%eax
c0004d7f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004d82:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d85:	8b 40 04             	mov    0x4(%eax),%eax
c0004d88:	8b 10                	mov    (%eax),%edx
c0004d8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d8d:	89 50 04             	mov    %edx,0x4(%eax)
c0004d90:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004d93:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004d9a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004d9d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004da3:	8b 45 08             	mov    0x8(%ebp),%eax
c0004da6:	8b 40 04             	mov    0x4(%eax),%eax
c0004da9:	85 c0                	test   %eax,%eax
c0004dab:	74 0d                	je     c0004dba <lst_pop+0x8e>
c0004dad:	8b 45 08             	mov    0x8(%ebp),%eax
c0004db0:	8b 40 04             	mov    0x4(%eax),%eax
c0004db3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004dba:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004dbd:	89 04 24             	mov    %eax,(%esp)
c0004dc0:	e8 b5 e7 ff ff       	call   c000357a <set_int_status>
c0004dc5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004dc8:	c9                   	leave  
c0004dc9:	c3                   	ret    

c0004dca <lst_find>:
c0004dca:	55                   	push   %ebp
c0004dcb:	89 e5                	mov    %esp,%ebp
c0004dcd:	83 ec 28             	sub    $0x28,%esp
c0004dd0:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004dd4:	75 24                	jne    c0004dfa <lst_find+0x30>
c0004dd6:	c7 44 24 0c a4 74 00 	movl   $0xc00074a4,0xc(%esp)
c0004ddd:	c0 
c0004dde:	c7 44 24 08 ad 75 00 	movl   $0xc00075ad,0x8(%esp)
c0004de5:	c0 
c0004de6:	c7 44 24 04 2f 00 00 	movl   $0x2f,0x4(%esp)
c0004ded:	00 
c0004dee:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004df5:	e8 a6 e7 ff ff       	call   c00035a0 <panic_spin>
c0004dfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0004dfd:	8b 40 04             	mov    0x4(%eax),%eax
c0004e00:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004e03:	eb 08                	jmp    c0004e0d <lst_find+0x43>
c0004e05:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004e08:	8b 00                	mov    (%eax),%eax
c0004e0a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004e0d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004e10:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004e13:	74 06                	je     c0004e1b <lst_find+0x51>
c0004e15:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004e19:	75 ea                	jne    c0004e05 <lst_find+0x3b>
c0004e1b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004e1f:	75 07                	jne    c0004e28 <lst_find+0x5e>
c0004e21:	b8 00 00 00 00       	mov    $0x0,%eax
c0004e26:	eb 05                	jmp    c0004e2d <lst_find+0x63>
c0004e28:	b8 01 00 00 00       	mov    $0x1,%eax
c0004e2d:	c9                   	leave  
c0004e2e:	c3                   	ret    

c0004e2f <lst_remove>:
c0004e2f:	55                   	push   %ebp
c0004e30:	89 e5                	mov    %esp,%ebp
c0004e32:	83 ec 28             	sub    $0x28,%esp
c0004e35:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e38:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004e3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e3f:	89 04 24             	mov    %eax,(%esp)
c0004e42:	e8 83 ff ff ff       	call   c0004dca <lst_find>
c0004e47:	85 c0                	test   %eax,%eax
c0004e49:	75 24                	jne    c0004e6f <lst_remove+0x40>
c0004e4b:	c7 44 24 0c 2c 75 00 	movl   $0xc000752c,0xc(%esp)
c0004e52:	c0 
c0004e53:	c7 44 24 08 b6 75 00 	movl   $0xc00075b6,0x8(%esp)
c0004e5a:	c0 
c0004e5b:	c7 44 24 04 3a 00 00 	movl   $0x3a,0x4(%esp)
c0004e62:	00 
c0004e63:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004e6a:	e8 31 e7 ff ff       	call   c00035a0 <panic_spin>
c0004e6f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004e73:	74 47                	je     c0004ebc <lst_remove+0x8d>
c0004e75:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e78:	8b 40 04             	mov    0x4(%eax),%eax
c0004e7b:	85 c0                	test   %eax,%eax
c0004e7d:	75 09                	jne    c0004e88 <lst_remove+0x59>
c0004e7f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e82:	8b 00                	mov    (%eax),%eax
c0004e84:	85 c0                	test   %eax,%eax
c0004e86:	74 07                	je     c0004e8f <lst_remove+0x60>
c0004e88:	b8 01 00 00 00       	mov    $0x1,%eax
c0004e8d:	eb 05                	jmp    c0004e94 <lst_remove+0x65>
c0004e8f:	b8 00 00 00 00       	mov    $0x0,%eax
c0004e94:	85 c0                	test   %eax,%eax
c0004e96:	75 24                	jne    c0004ebc <lst_remove+0x8d>
c0004e98:	c7 44 24 0c 40 75 00 	movl   $0xc0007540,0xc(%esp)
c0004e9f:	c0 
c0004ea0:	c7 44 24 08 b6 75 00 	movl   $0xc00075b6,0x8(%esp)
c0004ea7:	c0 
c0004ea8:	c7 44 24 04 3b 00 00 	movl   $0x3b,0x4(%esp)
c0004eaf:	00 
c0004eb0:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004eb7:	e8 e4 e6 ff ff       	call   c00035a0 <panic_spin>
c0004ebc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ebf:	8b 40 04             	mov    0x4(%eax),%eax
c0004ec2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004ec5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ec8:	8b 00                	mov    (%eax),%eax
c0004eca:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004ecd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004ed1:	75 15                	jne    c0004ee8 <lst_remove+0xb9>
c0004ed3:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ed6:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004edd:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ee0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004ee6:	eb 1b                	jmp    c0004f03 <lst_remove+0xd4>
c0004ee8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004eeb:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0004eee:	89 10                	mov    %edx,(%eax)
c0004ef0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ef3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004efa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004efd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004f03:	c9                   	leave  
c0004f04:	c3                   	ret    

c0004f05 <lst_head_insert>:
c0004f05:	55                   	push   %ebp
c0004f06:	89 e5                	mov    %esp,%ebp
c0004f08:	83 ec 18             	sub    $0x18,%esp
c0004f0b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004f0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004f12:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f15:	89 04 24             	mov    %eax,(%esp)
c0004f18:	e8 ad fe ff ff       	call   c0004dca <lst_find>
c0004f1d:	85 c0                	test   %eax,%eax
c0004f1f:	74 24                	je     c0004f45 <lst_head_insert+0x40>
c0004f21:	c7 44 24 0c 7a 75 00 	movl   $0xc000757a,0xc(%esp)
c0004f28:	c0 
c0004f29:	c7 44 24 08 c1 75 00 	movl   $0xc00075c1,0x8(%esp)
c0004f30:	c0 
c0004f31:	c7 44 24 04 4a 00 00 	movl   $0x4a,0x4(%esp)
c0004f38:	00 
c0004f39:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004f40:	e8 5b e6 ff ff       	call   c00035a0 <panic_spin>
c0004f45:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004f49:	75 24                	jne    c0004f6f <lst_head_insert+0x6a>
c0004f4b:	c7 44 24 0c a4 74 00 	movl   $0xc00074a4,0xc(%esp)
c0004f52:	c0 
c0004f53:	c7 44 24 08 c1 75 00 	movl   $0xc00075c1,0x8(%esp)
c0004f5a:	c0 
c0004f5b:	c7 44 24 04 4b 00 00 	movl   $0x4b,0x4(%esp)
c0004f62:	00 
c0004f63:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004f6a:	e8 31 e6 ff ff       	call   c00035a0 <panic_spin>
c0004f6f:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f72:	8b 40 04             	mov    0x4(%eax),%eax
c0004f75:	85 c0                	test   %eax,%eax
c0004f77:	75 28                	jne    c0004fa1 <lst_head_insert+0x9c>
c0004f79:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f7c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004f7f:	89 10                	mov    %edx,(%eax)
c0004f81:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f84:	8b 10                	mov    (%eax),%edx
c0004f86:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f89:	89 50 04             	mov    %edx,0x4(%eax)
c0004f8c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004f8f:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004f96:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004f99:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004f9f:	eb 2a                	jmp    c0004fcb <lst_head_insert+0xc6>
c0004fa1:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fa4:	8b 40 04             	mov    0x4(%eax),%eax
c0004fa7:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004faa:	89 50 04             	mov    %edx,0x4(%eax)
c0004fad:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fb0:	8b 50 04             	mov    0x4(%eax),%edx
c0004fb3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004fb6:	89 10                	mov    %edx,(%eax)
c0004fb8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004fbb:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004fc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fc5:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004fc8:	89 50 04             	mov    %edx,0x4(%eax)
c0004fcb:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fce:	8b 40 04             	mov    0x4(%eax),%eax
c0004fd1:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004fd4:	74 24                	je     c0004ffa <lst_head_insert+0xf5>
c0004fd6:	c7 44 24 0c 8c 75 00 	movl   $0xc000758c,0xc(%esp)
c0004fdd:	c0 
c0004fde:	c7 44 24 08 c1 75 00 	movl   $0xc00075c1,0x8(%esp)
c0004fe5:	c0 
c0004fe6:	c7 44 24 04 57 00 00 	movl   $0x57,0x4(%esp)
c0004fed:	00 
c0004fee:	c7 04 24 b4 74 00 c0 	movl   $0xc00074b4,(%esp)
c0004ff5:	e8 a6 e5 ff ff       	call   c00035a0 <panic_spin>
c0004ffa:	c9                   	leave  
c0004ffb:	c3                   	ret    

c0004ffc <lst_empty>:
c0004ffc:	55                   	push   %ebp
c0004ffd:	89 e5                	mov    %esp,%ebp
c0004fff:	8b 45 08             	mov    0x8(%ebp),%eax
c0005002:	8b 40 04             	mov    0x4(%eax),%eax
c0005005:	85 c0                	test   %eax,%eax
c0005007:	0f 94 c0             	sete   %al
c000500a:	0f b6 c0             	movzbl %al,%eax
c000500d:	5d                   	pop    %ebp
c000500e:	c3                   	ret    

c000500f <lst_traverse>:
c000500f:	55                   	push   %ebp
c0005010:	89 e5                	mov    %esp,%ebp
c0005012:	83 ec 28             	sub    $0x28,%esp
c0005015:	8b 45 08             	mov    0x8(%ebp),%eax
c0005018:	8b 40 04             	mov    0x4(%eax),%eax
c000501b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000501e:	eb 13                	jmp    c0005033 <lst_traverse+0x24>
c0005020:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005023:	89 04 24             	mov    %eax,(%esp)
c0005026:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005029:	ff d0                	call   *%eax
c000502b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000502e:	8b 00                	mov    (%eax),%eax
c0005030:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005033:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0005037:	75 e7                	jne    c0005020 <lst_traverse+0x11>
c0005039:	c9                   	leave  
c000503a:	c3                   	ret    
c000503b:	66 90                	xchg   %ax,%ax
c000503d:	66 90                	xchg   %ax,%ax
c000503f:	90                   	nop

c0005040 <switch_on>:
c0005040:	57                   	push   %edi
c0005041:	56                   	push   %esi
c0005042:	55                   	push   %ebp
c0005043:	53                   	push   %ebx
c0005044:	89 e5                	mov    %esp,%ebp
c0005046:	8b 45 14             	mov    0x14(%ebp),%eax
c0005049:	89 20                	mov    %esp,(%eax)
c000504b:	8b 45 18             	mov    0x18(%ebp),%eax
c000504e:	8b 20                	mov    (%eax),%esp
c0005050:	5b                   	pop    %ebx
c0005051:	5d                   	pop    %ebp
c0005052:	5e                   	pop    %esi
c0005053:	5f                   	pop    %edi
c0005054:	c3                   	ret    

c0005055 <init_mutex>:
c0005055:	55                   	push   %ebp
c0005056:	89 e5                	mov    %esp,%ebp
c0005058:	83 ec 18             	sub    $0x18,%esp
c000505b:	8b 45 08             	mov    0x8(%ebp),%eax
c000505e:	89 04 24             	mov    %eax,(%esp)
c0005061:	e8 2c 00 00 00       	call   c0005092 <sema_init>
c0005066:	8b 45 08             	mov    0x8(%ebp),%eax
c0005069:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0005070:	00 
c0005071:	89 04 24             	mov    %eax,(%esp)
c0005074:	e8 3b 00 00 00       	call   c00050b4 <set_sema_sgcnt>
c0005079:	8b 45 08             	mov    0x8(%ebp),%eax
c000507c:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0005083:	8b 45 08             	mov    0x8(%ebp),%eax
c0005086:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c000508d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005090:	c9                   	leave  
c0005091:	c3                   	ret    

c0005092 <sema_init>:
c0005092:	55                   	push   %ebp
c0005093:	89 e5                	mov    %esp,%ebp
c0005095:	83 ec 18             	sub    $0x18,%esp
c0005098:	8b 45 08             	mov    0x8(%ebp),%eax
c000509b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00050a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00050a4:	83 c0 04             	add    $0x4,%eax
c00050a7:	89 04 24             	mov    %eax,(%esp)
c00050aa:	e8 4c fb ff ff       	call   c0004bfb <init_list>
c00050af:	8b 45 08             	mov    0x8(%ebp),%eax
c00050b2:	c9                   	leave  
c00050b3:	c3                   	ret    

c00050b4 <set_sema_sgcnt>:
c00050b4:	55                   	push   %ebp
c00050b5:	89 e5                	mov    %esp,%ebp
c00050b7:	8b 45 08             	mov    0x8(%ebp),%eax
c00050ba:	8b 55 0c             	mov    0xc(%ebp),%edx
c00050bd:	89 10                	mov    %edx,(%eax)
c00050bf:	5d                   	pop    %ebp
c00050c0:	c3                   	ret    

c00050c1 <sema_down>:
c00050c1:	55                   	push   %ebp
c00050c2:	89 e5                	mov    %esp,%ebp
c00050c4:	83 ec 28             	sub    $0x28,%esp
c00050c7:	e8 9a e4 ff ff       	call   c0003566 <int_disable>
c00050cc:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00050cf:	e8 34 f5 ff ff       	call   c0004608 <get_running>
c00050d4:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00050d7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00050de:	e9 9d 00 00 00       	jmp    c0005180 <sema_down+0xbf>
c00050e3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00050e7:	75 5f                	jne    c0005148 <sema_down+0x87>
c00050e9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00050ec:	8d 50 38             	lea    0x38(%eax),%edx
c00050ef:	8b 45 08             	mov    0x8(%ebp),%eax
c00050f2:	83 c0 04             	add    $0x4,%eax
c00050f5:	89 54 24 04          	mov    %edx,0x4(%esp)
c00050f9:	89 04 24             	mov    %eax,(%esp)
c00050fc:	e8 c9 fc ff ff       	call   c0004dca <lst_find>
c0005101:	85 c0                	test   %eax,%eax
c0005103:	74 24                	je     c0005129 <sema_down+0x68>
c0005105:	c7 44 24 0c d4 75 00 	movl   $0xc00075d4,0xc(%esp)
c000510c:	c0 
c000510d:	c7 44 24 08 73 76 00 	movl   $0xc0007673,0x8(%esp)
c0005114:	c0 
c0005115:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c000511c:	00 
c000511d:	c7 04 24 fa 75 00 c0 	movl   $0xc00075fa,(%esp)
c0005124:	e8 77 e4 ff ff       	call   c00035a0 <panic_spin>
c0005129:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000512c:	8d 50 38             	lea    0x38(%eax),%edx
c000512f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005132:	83 c0 04             	add    $0x4,%eax
c0005135:	89 54 24 04          	mov    %edx,0x4(%esp)
c0005139:	89 04 24             	mov    %eax,(%esp)
c000513c:	e8 d2 fa ff ff       	call   c0004c13 <lst_push>
c0005141:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0005148:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000514b:	89 04 24             	mov    %eax,(%esp)
c000514e:	e8 51 01 00 00       	call   c00052a4 <thread_block>
c0005153:	e8 d6 e3 ff ff       	call   c000352e <get_int_status>
c0005158:	85 c0                	test   %eax,%eax
c000515a:	74 24                	je     c0005180 <sema_down+0xbf>
c000515c:	c7 44 24 0c 15 76 00 	movl   $0xc0007615,0xc(%esp)
c0005163:	c0 
c0005164:	c7 44 24 08 73 76 00 	movl   $0xc0007673,0x8(%esp)
c000516b:	c0 
c000516c:	c7 44 24 04 26 00 00 	movl   $0x26,0x4(%esp)
c0005173:	00 
c0005174:	c7 04 24 fa 75 00 c0 	movl   $0xc00075fa,(%esp)
c000517b:	e8 20 e4 ff ff       	call   c00035a0 <panic_spin>
c0005180:	8b 45 08             	mov    0x8(%ebp),%eax
c0005183:	8b 00                	mov    (%eax),%eax
c0005185:	85 c0                	test   %eax,%eax
c0005187:	0f 8e 56 ff ff ff    	jle    c00050e3 <sema_down+0x22>
c000518d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005190:	8b 00                	mov    (%eax),%eax
c0005192:	8d 50 ff             	lea    -0x1(%eax),%edx
c0005195:	8b 45 08             	mov    0x8(%ebp),%eax
c0005198:	89 10                	mov    %edx,(%eax)
c000519a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000519d:	89 04 24             	mov    %eax,(%esp)
c00051a0:	e8 d5 e3 ff ff       	call   c000357a <set_int_status>
c00051a5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00051a8:	c9                   	leave  
c00051a9:	c3                   	ret    

c00051aa <sema_up>:
c00051aa:	55                   	push   %ebp
c00051ab:	89 e5                	mov    %esp,%ebp
c00051ad:	83 ec 28             	sub    $0x28,%esp
c00051b0:	e8 b1 e3 ff ff       	call   c0003566 <int_disable>
c00051b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00051b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00051bb:	83 c0 04             	add    $0x4,%eax
c00051be:	89 04 24             	mov    %eax,(%esp)
c00051c1:	e8 36 fe ff ff       	call   c0004ffc <lst_empty>
c00051c6:	85 c0                	test   %eax,%eax
c00051c8:	75 1f                	jne    c00051e9 <sema_up+0x3f>
c00051ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00051cd:	83 c0 04             	add    $0x4,%eax
c00051d0:	89 04 24             	mov    %eax,(%esp)
c00051d3:	e8 54 fb ff ff       	call   c0004d2c <lst_pop>
c00051d8:	83 e8 38             	sub    $0x38,%eax
c00051db:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00051de:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00051e1:	89 04 24             	mov    %eax,(%esp)
c00051e4:	e8 47 01 00 00       	call   c0005330 <thread_unblock>
c00051e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00051ec:	8b 00                	mov    (%eax),%eax
c00051ee:	8d 50 01             	lea    0x1(%eax),%edx
c00051f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00051f4:	89 10                	mov    %edx,(%eax)
c00051f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00051f9:	89 04 24             	mov    %eax,(%esp)
c00051fc:	e8 79 e3 ff ff       	call   c000357a <set_int_status>
c0005201:	c9                   	leave  
c0005202:	c3                   	ret    

c0005203 <lock>:
c0005203:	55                   	push   %ebp
c0005204:	89 e5                	mov    %esp,%ebp
c0005206:	83 ec 28             	sub    $0x28,%esp
c0005209:	e8 58 e3 ff ff       	call   c0003566 <int_disable>
c000520e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005211:	8b 45 08             	mov    0x8(%ebp),%eax
c0005214:	8b 40 0c             	mov    0xc(%eax),%eax
c0005217:	85 c0                	test   %eax,%eax
c0005219:	74 20                	je     c000523b <lock+0x38>
c000521b:	e8 e8 f3 ff ff       	call   c0004608 <get_running>
c0005220:	8b 55 08             	mov    0x8(%ebp),%edx
c0005223:	8b 52 0c             	mov    0xc(%edx),%edx
c0005226:	39 d0                	cmp    %edx,%eax
c0005228:	75 11                	jne    c000523b <lock+0x38>
c000522a:	8b 45 08             	mov    0x8(%ebp),%eax
c000522d:	8b 40 10             	mov    0x10(%eax),%eax
c0005230:	8d 50 01             	lea    0x1(%eax),%edx
c0005233:	8b 45 08             	mov    0x8(%ebp),%eax
c0005236:	89 50 10             	mov    %edx,0x10(%eax)
c0005239:	eb 11                	jmp    c000524c <lock+0x49>
c000523b:	8b 45 08             	mov    0x8(%ebp),%eax
c000523e:	89 04 24             	mov    %eax,(%esp)
c0005241:	e8 7b fe ff ff       	call   c00050c1 <sema_down>
c0005246:	8b 55 08             	mov    0x8(%ebp),%edx
c0005249:	89 42 0c             	mov    %eax,0xc(%edx)
c000524c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000524f:	89 04 24             	mov    %eax,(%esp)
c0005252:	e8 23 e3 ff ff       	call   c000357a <set_int_status>
c0005257:	c9                   	leave  
c0005258:	c3                   	ret    

c0005259 <unlock>:
c0005259:	55                   	push   %ebp
c000525a:	89 e5                	mov    %esp,%ebp
c000525c:	83 ec 28             	sub    $0x28,%esp
c000525f:	e8 02 e3 ff ff       	call   c0003566 <int_disable>
c0005264:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005267:	8b 45 08             	mov    0x8(%ebp),%eax
c000526a:	8b 40 10             	mov    0x10(%eax),%eax
c000526d:	85 c0                	test   %eax,%eax
c000526f:	7e 11                	jle    c0005282 <unlock+0x29>
c0005271:	8b 45 08             	mov    0x8(%ebp),%eax
c0005274:	8b 40 10             	mov    0x10(%eax),%eax
c0005277:	8d 50 ff             	lea    -0x1(%eax),%edx
c000527a:	8b 45 08             	mov    0x8(%ebp),%eax
c000527d:	89 50 10             	mov    %edx,0x10(%eax)
c0005280:	eb 15                	jmp    c0005297 <unlock+0x3e>
c0005282:	8b 45 08             	mov    0x8(%ebp),%eax
c0005285:	89 04 24             	mov    %eax,(%esp)
c0005288:	e8 1d ff ff ff       	call   c00051aa <sema_up>
c000528d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005290:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0005297:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000529a:	89 04 24             	mov    %eax,(%esp)
c000529d:	e8 d8 e2 ff ff       	call   c000357a <set_int_status>
c00052a2:	c9                   	leave  
c00052a3:	c3                   	ret    

c00052a4 <thread_block>:
c00052a4:	55                   	push   %ebp
c00052a5:	89 e5                	mov    %esp,%ebp
c00052a7:	83 ec 18             	sub    $0x18,%esp
c00052aa:	e8 7f e2 ff ff       	call   c000352e <get_int_status>
c00052af:	85 c0                	test   %eax,%eax
c00052b1:	74 24                	je     c00052d7 <thread_block+0x33>
c00052b3:	c7 44 24 0c 15 76 00 	movl   $0xc0007615,0xc(%esp)
c00052ba:	c0 
c00052bb:	c7 44 24 08 7d 76 00 	movl   $0xc000767d,0x8(%esp)
c00052c2:	c0 
c00052c3:	c7 44 24 04 52 00 00 	movl   $0x52,0x4(%esp)
c00052ca:	00 
c00052cb:	c7 04 24 fa 75 00 c0 	movl   $0xc00075fa,(%esp)
c00052d2:	e8 c9 e2 ff ff       	call   c00035a0 <panic_spin>
c00052d7:	8b 45 08             	mov    0x8(%ebp),%eax
c00052da:	8b 40 28             	mov    0x28(%eax),%eax
c00052dd:	85 c0                	test   %eax,%eax
c00052df:	74 2f                	je     c0005310 <thread_block+0x6c>
c00052e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00052e4:	8b 40 28             	mov    0x28(%eax),%eax
c00052e7:	83 f8 03             	cmp    $0x3,%eax
c00052ea:	75 24                	jne    c0005310 <thread_block+0x6c>
c00052ec:	c7 44 24 0c 34 76 00 	movl   $0xc0007634,0xc(%esp)
c00052f3:	c0 
c00052f4:	c7 44 24 08 7d 76 00 	movl   $0xc000767d,0x8(%esp)
c00052fb:	c0 
c00052fc:	c7 44 24 04 53 00 00 	movl   $0x53,0x4(%esp)
c0005303:	00 
c0005304:	c7 04 24 fa 75 00 c0 	movl   $0xc00075fa,(%esp)
c000530b:	e8 90 e2 ff ff       	call   c00035a0 <panic_spin>
c0005310:	8b 45 08             	mov    0x8(%ebp),%eax
c0005313:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
c000531a:	8b 45 08             	mov    0x8(%ebp),%eax
c000531d:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
c0005324:	e8 01 c3 ff ff       	call   c000162a <handle_clock_intr>
c0005329:	e8 38 e2 ff ff       	call   c0003566 <int_disable>
c000532e:	c9                   	leave  
c000532f:	c3                   	ret    

c0005330 <thread_unblock>:
c0005330:	55                   	push   %ebp
c0005331:	89 e5                	mov    %esp,%ebp
c0005333:	83 ec 18             	sub    $0x18,%esp
c0005336:	e8 f3 e1 ff ff       	call   c000352e <get_int_status>
c000533b:	85 c0                	test   %eax,%eax
c000533d:	74 24                	je     c0005363 <thread_unblock+0x33>
c000533f:	c7 44 24 0c 15 76 00 	movl   $0xc0007615,0xc(%esp)
c0005346:	c0 
c0005347:	c7 44 24 08 8a 76 00 	movl   $0xc000768a,0x8(%esp)
c000534e:	c0 
c000534f:	c7 44 24 04 5b 00 00 	movl   $0x5b,0x4(%esp)
c0005356:	00 
c0005357:	c7 04 24 fa 75 00 c0 	movl   $0xc00075fa,(%esp)
c000535e:	e8 3d e2 ff ff       	call   c00035a0 <panic_spin>
c0005363:	8b 45 08             	mov    0x8(%ebp),%eax
c0005366:	8b 40 28             	mov    0x28(%eax),%eax
c0005369:	85 c0                	test   %eax,%eax
c000536b:	74 24                	je     c0005391 <thread_unblock+0x61>
c000536d:	c7 44 24 0c 60 76 00 	movl   $0xc0007660,0xc(%esp)
c0005374:	c0 
c0005375:	c7 44 24 08 8a 76 00 	movl   $0xc000768a,0x8(%esp)
c000537c:	c0 
c000537d:	c7 44 24 04 5c 00 00 	movl   $0x5c,0x4(%esp)
c0005384:	00 
c0005385:	c7 04 24 fa 75 00 c0 	movl   $0xc00075fa,(%esp)
c000538c:	e8 0f e2 ff ff       	call   c00035a0 <panic_spin>
c0005391:	8b 45 08             	mov    0x8(%ebp),%eax
c0005394:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c000539b:	8b 45 08             	mov    0x8(%ebp),%eax
c000539e:	83 c0 38             	add    $0x38,%eax
c00053a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00053a5:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c00053ac:	e8 54 fb ff ff       	call   c0004f05 <lst_head_insert>
c00053b1:	c9                   	leave  
c00053b2:	c3                   	ret    

c00053b3 <init_console>:
c00053b3:	55                   	push   %ebp
c00053b4:	89 e5                	mov    %esp,%ebp
c00053b6:	83 ec 18             	sub    $0x18,%esp
c00053b9:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c00053c0:	e8 90 fc ff ff       	call   c0005055 <init_mutex>
c00053c5:	c9                   	leave  
c00053c6:	c3                   	ret    

c00053c7 <console_put_str>:
c00053c7:	55                   	push   %ebp
c00053c8:	89 e5                	mov    %esp,%ebp
c00053ca:	83 ec 18             	sub    $0x18,%esp
c00053cd:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c00053d4:	e8 2a fe ff ff       	call   c0005203 <lock>
c00053d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00053dc:	89 04 24             	mov    %eax,(%esp)
c00053df:	e8 21 e1 ff ff       	call   c0003505 <put_str>
c00053e4:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c00053eb:	e8 69 fe ff ff       	call   c0005259 <unlock>
c00053f0:	c9                   	leave  
c00053f1:	c3                   	ret    

c00053f2 <console_put_char>:
c00053f2:	55                   	push   %ebp
c00053f3:	89 e5                	mov    %esp,%ebp
c00053f5:	83 ec 18             	sub    $0x18,%esp
c00053f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00053fb:	88 45 f4             	mov    %al,-0xc(%ebp)
c00053fe:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005405:	e8 f9 fd ff ff       	call   c0005203 <lock>
c000540a:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c000540e:	89 04 24             	mov    %eax,(%esp)
c0005411:	e8 6a df ff ff       	call   c0003380 <put_char>
c0005416:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c000541d:	e8 37 fe ff ff       	call   c0005259 <unlock>
c0005422:	c9                   	leave  
c0005423:	c3                   	ret    

c0005424 <console_put_int>:
c0005424:	55                   	push   %ebp
c0005425:	89 e5                	mov    %esp,%ebp
c0005427:	83 ec 18             	sub    $0x18,%esp
c000542a:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005431:	e8 cd fd ff ff       	call   c0005203 <lock>
c0005436:	8b 45 08             	mov    0x8(%ebp),%eax
c0005439:	89 04 24             	mov    %eax,(%esp)
c000543c:	e8 22 e0 ff ff       	call   c0003463 <put_int>
c0005441:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005448:	e8 0c fe ff ff       	call   c0005259 <unlock>
c000544d:	c9                   	leave  
c000544e:	c3                   	ret    

c000544f <read_port>:
c000544f:	55                   	push   %ebp
c0005450:	89 e5                	mov    %esp,%ebp
c0005452:	83 ec 14             	sub    $0x14,%esp
c0005455:	8b 45 08             	mov    0x8(%ebp),%eax
c0005458:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c000545c:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
c0005460:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c0005464:	ec                   	in     (%dx),%al
c0005465:	88 45 ff             	mov    %al,-0x1(%ebp)
c0005468:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c000546c:	c9                   	leave  
c000546d:	c3                   	ret    

c000546e <init_keyboard>:
c000546e:	55                   	push   %ebp
c000546f:	89 e5                	mov    %esp,%ebp
c0005471:	81 ec d8 00 00 00    	sub    $0xd8,%esp
c0005477:	c7 05 24 b1 00 c0 00 	movl   $0x0,0xc000b124
c000547e:	00 00 00 
c0005481:	c7 05 3c b1 00 c0 00 	movl   $0x0,0xc000b13c
c0005488:	00 00 00 
c000548b:	c7 05 38 b1 00 c0 00 	movl   $0x0,0xc000b138
c0005492:	00 00 00 
c0005495:	c7 05 74 b0 00 c0 00 	movl   $0x0,0xc000b074
c000549c:	00 00 00 
c000549f:	c7 05 70 b0 00 c0 00 	movl   $0x0,0xc000b070
c00054a6:	00 00 00 
c00054a9:	8d 85 38 ff ff ff    	lea    -0xc8(%ebp),%eax
c00054af:	c7 44 24 04 80 b0 00 	movl   $0xc000b080,0x4(%esp)
c00054b6:	c0 
c00054b7:	89 04 24             	mov    %eax,(%esp)
c00054ba:	e8 2f 04 00 00       	call   c00058ee <init_cq>
c00054bf:	83 ec 04             	sub    $0x4,%esp
c00054c2:	c7 44 24 08 80 b0 00 	movl   $0xc000b080,0x8(%esp)
c00054c9:	c0 
c00054ca:	c7 44 24 04 e6 59 00 	movl   $0xc00059e6,0x4(%esp)
c00054d1:	c0 
c00054d2:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c00054d9:	e8 3c 03 00 00       	call   c000581a <init_condition_var>
c00054de:	c7 44 24 08 80 b0 00 	movl   $0xc000b080,0x8(%esp)
c00054e5:	c0 
c00054e6:	c7 44 24 04 31 5a 00 	movl   $0xc0005a31,0x4(%esp)
c00054ed:	c0 
c00054ee:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c00054f5:	e8 20 03 00 00       	call   c000581a <init_condition_var>
c00054fa:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c0005501:	e8 4f fb ff ff       	call   c0005055 <init_mutex>
c0005506:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c000550d:	e8 43 fb ff ff       	call   c0005055 <init_mutex>
c0005512:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0005519:	00 
c000551a:	c7 44 24 08 cb 57 00 	movl   $0xc00057cb,0x8(%esp)
c0005521:	c0 
c0005522:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c0005529:	00 
c000552a:	c7 04 24 99 76 00 c0 	movl   $0xc0007699,(%esp)
c0005531:	e8 7e f6 ff ff       	call   c0004bb4 <thread_start>
c0005536:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005539:	c9                   	leave  
c000553a:	c3                   	ret    

c000553b <keyboard_int_handle>:
c000553b:	55                   	push   %ebp
c000553c:	89 e5                	mov    %esp,%ebp
c000553e:	83 ec 28             	sub    $0x28,%esp
c0005541:	c7 04 24 60 00 00 00 	movl   $0x60,(%esp)
c0005548:	e8 02 ff ff ff       	call   c000544f <read_port>
c000554d:	0f b6 c0             	movzbl %al,%eax
c0005550:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c0005554:	66 81 7d f6 e0 00    	cmpw   $0xe0,-0xa(%ebp)
c000555a:	75 0f                	jne    c000556b <keyboard_int_handle+0x30>
c000555c:	c7 05 24 b1 00 c0 01 	movl   $0x1,0xc000b124
c0005563:	00 00 00 
c0005566:	e9 0c 02 00 00       	jmp    c0005777 <keyboard_int_handle+0x23c>
c000556b:	a1 24 b1 00 c0       	mov    0xc000b124,%eax
c0005570:	85 c0                	test   %eax,%eax
c0005572:	74 06                	je     c000557a <keyboard_int_handle+0x3f>
c0005574:	66 c7 45 f6 01 00    	movw   $0x1,-0xa(%ebp)
c000557a:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000557e:	25 80 00 00 00       	and    $0x80,%eax
c0005583:	85 c0                	test   %eax,%eax
c0005585:	0f 95 c0             	setne  %al
c0005588:	0f b6 c0             	movzbl %al,%eax
c000558b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000558e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0005592:	74 5d                	je     c00055f1 <keyboard_int_handle+0xb6>
c0005594:	66 83 45 f6 80       	addw   $0xff80,-0xa(%ebp)
c0005599:	66 83 7d f6 38       	cmpw   $0x38,-0xa(%ebp)
c000559e:	74 08                	je     c00055a8 <keyboard_int_handle+0x6d>
c00055a0:	66 81 7d f6 38 e0    	cmpw   $0xe038,-0xa(%ebp)
c00055a6:	75 0c                	jne    c00055b4 <keyboard_int_handle+0x79>
c00055a8:	c7 05 74 b0 00 c0 00 	movl   $0x0,0xc000b074
c00055af:	00 00 00 
c00055b2:	eb 38                	jmp    c00055ec <keyboard_int_handle+0xb1>
c00055b4:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c00055b9:	74 07                	je     c00055c2 <keyboard_int_handle+0x87>
c00055bb:	66 83 7d f6 36       	cmpw   $0x36,-0xa(%ebp)
c00055c0:	75 0c                	jne    c00055ce <keyboard_int_handle+0x93>
c00055c2:	c7 05 3c b1 00 c0 00 	movl   $0x0,0xc000b13c
c00055c9:	00 00 00 
c00055cc:	eb 1e                	jmp    c00055ec <keyboard_int_handle+0xb1>
c00055ce:	66 83 7d f6 1d       	cmpw   $0x1d,-0xa(%ebp)
c00055d3:	74 08                	je     c00055dd <keyboard_int_handle+0xa2>
c00055d5:	66 81 7d f6 1d e0    	cmpw   $0xe01d,-0xa(%ebp)
c00055db:	75 0f                	jne    c00055ec <keyboard_int_handle+0xb1>
c00055dd:	c7 05 38 b1 00 c0 00 	movl   $0x0,0xc000b138
c00055e4:	00 00 00 
c00055e7:	e9 8b 01 00 00       	jmp    c0005777 <keyboard_int_handle+0x23c>
c00055ec:	e9 86 01 00 00       	jmp    c0005777 <keyboard_int_handle+0x23c>
c00055f1:	66 83 7d f6 38       	cmpw   $0x38,-0xa(%ebp)
c00055f6:	74 08                	je     c0005600 <keyboard_int_handle+0xc5>
c00055f8:	66 81 7d f6 38 e0    	cmpw   $0xe038,-0xa(%ebp)
c00055fe:	75 0f                	jne    c000560f <keyboard_int_handle+0xd4>
c0005600:	c7 05 74 b0 00 c0 01 	movl   $0x1,0xc000b074
c0005607:	00 00 00 
c000560a:	e9 68 01 00 00       	jmp    c0005777 <keyboard_int_handle+0x23c>
c000560f:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c0005614:	74 07                	je     c000561d <keyboard_int_handle+0xe2>
c0005616:	66 83 7d f6 36       	cmpw   $0x36,-0xa(%ebp)
c000561b:	75 0f                	jne    c000562c <keyboard_int_handle+0xf1>
c000561d:	c7 05 3c b1 00 c0 01 	movl   $0x1,0xc000b13c
c0005624:	00 00 00 
c0005627:	e9 4b 01 00 00       	jmp    c0005777 <keyboard_int_handle+0x23c>
c000562c:	66 83 7d f6 1d       	cmpw   $0x1d,-0xa(%ebp)
c0005631:	74 08                	je     c000563b <keyboard_int_handle+0x100>
c0005633:	66 81 7d f6 1d e0    	cmpw   $0xe01d,-0xa(%ebp)
c0005639:	75 0f                	jne    c000564a <keyboard_int_handle+0x10f>
c000563b:	c7 05 38 b1 00 c0 01 	movl   $0x1,0xc000b138
c0005642:	00 00 00 
c0005645:	e9 2d 01 00 00       	jmp    c0005777 <keyboard_int_handle+0x23c>
c000564a:	66 83 7d f6 3a       	cmpw   $0x3a,-0xa(%ebp)
c000564f:	75 17                	jne    c0005668 <keyboard_int_handle+0x12d>
c0005651:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c0005656:	85 c0                	test   %eax,%eax
c0005658:	0f 94 c0             	sete   %al
c000565b:	0f b6 c0             	movzbl %al,%eax
c000565e:	a3 70 b0 00 c0       	mov    %eax,0xc000b070
c0005663:	e9 0f 01 00 00       	jmp    c0005777 <keyboard_int_handle+0x23c>
c0005668:	66 83 7d f6 0f       	cmpw   $0xf,-0xa(%ebp)
c000566d:	76 07                	jbe    c0005676 <keyboard_int_handle+0x13b>
c000566f:	66 83 7d f6 19       	cmpw   $0x19,-0xa(%ebp)
c0005674:	76 1c                	jbe    c0005692 <keyboard_int_handle+0x157>
c0005676:	66 83 7d f6 1c       	cmpw   $0x1c,-0xa(%ebp)
c000567b:	76 07                	jbe    c0005684 <keyboard_int_handle+0x149>
c000567d:	66 83 7d f6 25       	cmpw   $0x25,-0xa(%ebp)
c0005682:	76 0e                	jbe    c0005692 <keyboard_int_handle+0x157>
c0005684:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c0005689:	76 0e                	jbe    c0005699 <keyboard_int_handle+0x15e>
c000568b:	66 83 7d f6 31       	cmpw   $0x31,-0xa(%ebp)
c0005690:	77 07                	ja     c0005699 <keyboard_int_handle+0x15e>
c0005692:	b8 01 00 00 00       	mov    $0x1,%eax
c0005697:	eb 05                	jmp    c000569e <keyboard_int_handle+0x163>
c0005699:	b8 00 00 00 00       	mov    $0x0,%eax
c000569e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00056a1:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c00056a5:	0f 84 93 00 00 00    	je     c000573e <keyboard_int_handle+0x203>
c00056ab:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c00056b0:	85 c0                	test   %eax,%eax
c00056b2:	74 22                	je     c00056d6 <keyboard_int_handle+0x19b>
c00056b4:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c00056b9:	85 c0                	test   %eax,%eax
c00056bb:	75 19                	jne    c00056d6 <keyboard_int_handle+0x19b>
c00056bd:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00056c1:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c00056c8:	c0 
c00056c9:	0f be c0             	movsbl %al,%eax
c00056cc:	89 04 24             	mov    %eax,(%esp)
c00056cf:	e8 a5 00 00 00       	call   c0005779 <give_char>
c00056d4:	eb 66                	jmp    c000573c <keyboard_int_handle+0x201>
c00056d6:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c00056db:	85 c0                	test   %eax,%eax
c00056dd:	74 22                	je     c0005701 <keyboard_int_handle+0x1c6>
c00056df:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c00056e4:	85 c0                	test   %eax,%eax
c00056e6:	74 19                	je     c0005701 <keyboard_int_handle+0x1c6>
c00056e8:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00056ec:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c00056f3:	c0 
c00056f4:	0f be c0             	movsbl %al,%eax
c00056f7:	89 04 24             	mov    %eax,(%esp)
c00056fa:	e8 7a 00 00 00       	call   c0005779 <give_char>
c00056ff:	eb 3b                	jmp    c000573c <keyboard_int_handle+0x201>
c0005701:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c0005706:	85 c0                	test   %eax,%eax
c0005708:	74 19                	je     c0005723 <keyboard_int_handle+0x1e8>
c000570a:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000570e:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c0005715:	c0 
c0005716:	0f be c0             	movsbl %al,%eax
c0005719:	89 04 24             	mov    %eax,(%esp)
c000571c:	e8 58 00 00 00       	call   c0005779 <give_char>
c0005721:	eb 54                	jmp    c0005777 <keyboard_int_handle+0x23c>
c0005723:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005727:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c000572e:	c0 
c000572f:	0f be c0             	movsbl %al,%eax
c0005732:	89 04 24             	mov    %eax,(%esp)
c0005735:	e8 3f 00 00 00       	call   c0005779 <give_char>
c000573a:	eb 3b                	jmp    c0005777 <keyboard_int_handle+0x23c>
c000573c:	eb 39                	jmp    c0005777 <keyboard_int_handle+0x23c>
c000573e:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c0005743:	85 c0                	test   %eax,%eax
c0005745:	74 19                	je     c0005760 <keyboard_int_handle+0x225>
c0005747:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000574b:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c0005752:	c0 
c0005753:	0f be c0             	movsbl %al,%eax
c0005756:	89 04 24             	mov    %eax,(%esp)
c0005759:	e8 1b 00 00 00       	call   c0005779 <give_char>
c000575e:	eb 17                	jmp    c0005777 <keyboard_int_handle+0x23c>
c0005760:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005764:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c000576b:	c0 
c000576c:	0f be c0             	movsbl %al,%eax
c000576f:	89 04 24             	mov    %eax,(%esp)
c0005772:	e8 02 00 00 00       	call   c0005779 <give_char>
c0005777:	c9                   	leave  
c0005778:	c3                   	ret    

c0005779 <give_char>:
c0005779:	55                   	push   %ebp
c000577a:	89 e5                	mov    %esp,%ebp
c000577c:	83 ec 18             	sub    $0x18,%esp
c000577f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005782:	88 45 f4             	mov    %al,-0xc(%ebp)
c0005785:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c000578c:	e8 72 fa ff ff       	call   c0005203 <lock>
c0005791:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c0005798:	e8 a4 00 00 00       	call   c0005841 <conditional_block>
c000579d:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c00057a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00057a5:	c7 04 24 80 b0 00 c0 	movl   $0xc000b080,(%esp)
c00057ac:	e8 79 01 00 00       	call   c000592a <cq_push>
c00057b1:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c00057b8:	e8 e5 00 00 00       	call   c00058a2 <conditional_notify>
c00057bd:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c00057c4:	e8 90 fa ff ff       	call   c0005259 <unlock>
c00057c9:	c9                   	leave  
c00057ca:	c3                   	ret    

c00057cb <take_char>:
c00057cb:	55                   	push   %ebp
c00057cc:	89 e5                	mov    %esp,%ebp
c00057ce:	83 ec 18             	sub    $0x18,%esp
c00057d1:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c00057d8:	e8 26 fa ff ff       	call   c0005203 <lock>
c00057dd:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c00057e4:	e8 58 00 00 00       	call   c0005841 <conditional_block>
c00057e9:	c7 04 24 80 b0 00 c0 	movl   $0xc000b080,(%esp)
c00057f0:	e8 94 01 00 00       	call   c0005989 <cq_pop>
c00057f5:	0f be c0             	movsbl %al,%eax
c00057f8:	89 04 24             	mov    %eax,(%esp)
c00057fb:	e8 f2 fb ff ff       	call   c00053f2 <console_put_char>
c0005800:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c0005807:	e8 96 00 00 00       	call   c00058a2 <conditional_notify>
c000580c:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c0005813:	e8 41 fa ff ff       	call   c0005259 <unlock>
c0005818:	eb b7                	jmp    c00057d1 <take_char+0x6>

c000581a <init_condition_var>:
c000581a:	55                   	push   %ebp
c000581b:	89 e5                	mov    %esp,%ebp
c000581d:	83 ec 18             	sub    $0x18,%esp
c0005820:	8b 45 08             	mov    0x8(%ebp),%eax
c0005823:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005826:	89 10                	mov    %edx,(%eax)
c0005828:	8b 45 08             	mov    0x8(%ebp),%eax
c000582b:	8b 55 10             	mov    0x10(%ebp),%edx
c000582e:	89 50 04             	mov    %edx,0x4(%eax)
c0005831:	8b 45 08             	mov    0x8(%ebp),%eax
c0005834:	83 c0 08             	add    $0x8,%eax
c0005837:	89 04 24             	mov    %eax,(%esp)
c000583a:	e8 bc f3 ff ff       	call   c0004bfb <init_list>
c000583f:	c9                   	leave  
c0005840:	c3                   	ret    

c0005841 <conditional_block>:
c0005841:	55                   	push   %ebp
c0005842:	89 e5                	mov    %esp,%ebp
c0005844:	83 ec 28             	sub    $0x28,%esp
c0005847:	8b 45 08             	mov    0x8(%ebp),%eax
c000584a:	8b 00                	mov    (%eax),%eax
c000584c:	8b 55 08             	mov    0x8(%ebp),%edx
c000584f:	8b 52 04             	mov    0x4(%edx),%edx
c0005852:	89 14 24             	mov    %edx,(%esp)
c0005855:	ff d0                	call   *%eax
c0005857:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000585a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c000585e:	75 02                	jne    c0005862 <conditional_block+0x21>
c0005860:	eb 3e                	jmp    c00058a0 <conditional_block+0x5f>
c0005862:	e8 ff dc ff ff       	call   c0003566 <int_disable>
c0005867:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000586a:	e8 99 ed ff ff       	call   c0004608 <get_running>
c000586f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005872:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0005875:	8d 50 38             	lea    0x38(%eax),%edx
c0005878:	8b 45 08             	mov    0x8(%ebp),%eax
c000587b:	83 c0 08             	add    $0x8,%eax
c000587e:	89 54 24 04          	mov    %edx,0x4(%esp)
c0005882:	89 04 24             	mov    %eax,(%esp)
c0005885:	e8 89 f3 ff ff       	call   c0004c13 <lst_push>
c000588a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000588d:	89 04 24             	mov    %eax,(%esp)
c0005890:	e8 0f fa ff ff       	call   c00052a4 <thread_block>
c0005895:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005898:	89 04 24             	mov    %eax,(%esp)
c000589b:	e8 da dc ff ff       	call   c000357a <set_int_status>
c00058a0:	c9                   	leave  
c00058a1:	c3                   	ret    

c00058a2 <conditional_notify>:
c00058a2:	55                   	push   %ebp
c00058a3:	89 e5                	mov    %esp,%ebp
c00058a5:	83 ec 28             	sub    $0x28,%esp
c00058a8:	e8 b9 dc ff ff       	call   c0003566 <int_disable>
c00058ad:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00058b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00058b3:	83 c0 08             	add    $0x8,%eax
c00058b6:	89 04 24             	mov    %eax,(%esp)
c00058b9:	e8 3e f7 ff ff       	call   c0004ffc <lst_empty>
c00058be:	85 c0                	test   %eax,%eax
c00058c0:	75 1f                	jne    c00058e1 <conditional_notify+0x3f>
c00058c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00058c5:	83 c0 08             	add    $0x8,%eax
c00058c8:	89 04 24             	mov    %eax,(%esp)
c00058cb:	e8 5c f4 ff ff       	call   c0004d2c <lst_pop>
c00058d0:	83 e8 38             	sub    $0x38,%eax
c00058d3:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00058d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00058d9:	89 04 24             	mov    %eax,(%esp)
c00058dc:	e8 4f fa ff ff       	call   c0005330 <thread_unblock>
c00058e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00058e4:	89 04 24             	mov    %eax,(%esp)
c00058e7:	e8 8e dc ff ff       	call   c000357a <set_int_status>
c00058ec:	c9                   	leave  
c00058ed:	c3                   	ret    

c00058ee <init_cq>:
c00058ee:	55                   	push   %ebp
c00058ef:	89 e5                	mov    %esp,%ebp
c00058f1:	83 ec 18             	sub    $0x18,%esp
c00058f4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00058f7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00058fe:	00 
c00058ff:	c7 44 24 04 a0 00 00 	movl   $0xa0,0x4(%esp)
c0005906:	00 
c0005907:	89 04 24             	mov    %eax,(%esp)
c000590a:	e8 9e dd ff ff       	call   c00036ad <memset_8>
c000590f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005912:	c6 80 a0 00 00 00 00 	movb   $0x0,0xa0(%eax)
c0005919:	8b 45 0c             	mov    0xc(%ebp),%eax
c000591c:	c6 80 a1 00 00 00 00 	movb   $0x0,0xa1(%eax)
c0005923:	8b 45 08             	mov    0x8(%ebp),%eax
c0005926:	c9                   	leave  
c0005927:	c2 04 00             	ret    $0x4

c000592a <cq_push>:
c000592a:	55                   	push   %ebp
c000592b:	89 e5                	mov    %esp,%ebp
c000592d:	83 ec 04             	sub    $0x4,%esp
c0005930:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005933:	88 45 fc             	mov    %al,-0x4(%ebp)
c0005936:	8b 45 08             	mov    0x8(%ebp),%eax
c0005939:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c0005940:	0f b6 c0             	movzbl %al,%eax
c0005943:	8b 55 08             	mov    0x8(%ebp),%edx
c0005946:	0f b6 4d fc          	movzbl -0x4(%ebp),%ecx
c000594a:	88 0c 02             	mov    %cl,(%edx,%eax,1)
c000594d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005950:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c0005957:	0f b6 c0             	movzbl %al,%eax
c000595a:	8d 48 01             	lea    0x1(%eax),%ecx
c000595d:	ba 67 66 66 66       	mov    $0x66666667,%edx
c0005962:	89 c8                	mov    %ecx,%eax
c0005964:	f7 ea                	imul   %edx
c0005966:	c1 fa 06             	sar    $0x6,%edx
c0005969:	89 c8                	mov    %ecx,%eax
c000596b:	c1 f8 1f             	sar    $0x1f,%eax
c000596e:	29 c2                	sub    %eax,%edx
c0005970:	89 d0                	mov    %edx,%eax
c0005972:	c1 e0 02             	shl    $0x2,%eax
c0005975:	01 d0                	add    %edx,%eax
c0005977:	c1 e0 05             	shl    $0x5,%eax
c000597a:	29 c1                	sub    %eax,%ecx
c000597c:	89 ca                	mov    %ecx,%edx
c000597e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005981:	88 90 a1 00 00 00    	mov    %dl,0xa1(%eax)
c0005987:	c9                   	leave  
c0005988:	c3                   	ret    

c0005989 <cq_pop>:
c0005989:	55                   	push   %ebp
c000598a:	89 e5                	mov    %esp,%ebp
c000598c:	83 ec 10             	sub    $0x10,%esp
c000598f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005992:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005999:	0f b6 c0             	movzbl %al,%eax
c000599c:	8b 55 08             	mov    0x8(%ebp),%edx
c000599f:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c00059a3:	88 45 ff             	mov    %al,-0x1(%ebp)
c00059a6:	8b 45 08             	mov    0x8(%ebp),%eax
c00059a9:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c00059b0:	0f b6 c0             	movzbl %al,%eax
c00059b3:	8d 48 01             	lea    0x1(%eax),%ecx
c00059b6:	ba 67 66 66 66       	mov    $0x66666667,%edx
c00059bb:	89 c8                	mov    %ecx,%eax
c00059bd:	f7 ea                	imul   %edx
c00059bf:	c1 fa 06             	sar    $0x6,%edx
c00059c2:	89 c8                	mov    %ecx,%eax
c00059c4:	c1 f8 1f             	sar    $0x1f,%eax
c00059c7:	29 c2                	sub    %eax,%edx
c00059c9:	89 d0                	mov    %edx,%eax
c00059cb:	c1 e0 02             	shl    $0x2,%eax
c00059ce:	01 d0                	add    %edx,%eax
c00059d0:	c1 e0 05             	shl    $0x5,%eax
c00059d3:	29 c1                	sub    %eax,%ecx
c00059d5:	89 ca                	mov    %ecx,%edx
c00059d7:	8b 45 08             	mov    0x8(%ebp),%eax
c00059da:	88 90 a0 00 00 00    	mov    %dl,0xa0(%eax)
c00059e0:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c00059e4:	c9                   	leave  
c00059e5:	c3                   	ret    

c00059e6 <cq_full>:
c00059e6:	55                   	push   %ebp
c00059e7:	89 e5                	mov    %esp,%ebp
c00059e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00059ec:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c00059f3:	0f b6 c0             	movzbl %al,%eax
c00059f6:	8d 48 01             	lea    0x1(%eax),%ecx
c00059f9:	ba 67 66 66 66       	mov    $0x66666667,%edx
c00059fe:	89 c8                	mov    %ecx,%eax
c0005a00:	f7 ea                	imul   %edx
c0005a02:	c1 fa 06             	sar    $0x6,%edx
c0005a05:	89 c8                	mov    %ecx,%eax
c0005a07:	c1 f8 1f             	sar    $0x1f,%eax
c0005a0a:	29 c2                	sub    %eax,%edx
c0005a0c:	89 d0                	mov    %edx,%eax
c0005a0e:	c1 e0 02             	shl    $0x2,%eax
c0005a11:	01 d0                	add    %edx,%eax
c0005a13:	c1 e0 05             	shl    $0x5,%eax
c0005a16:	29 c1                	sub    %eax,%ecx
c0005a18:	89 ca                	mov    %ecx,%edx
c0005a1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a1d:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005a24:	0f b6 c0             	movzbl %al,%eax
c0005a27:	39 c2                	cmp    %eax,%edx
c0005a29:	0f 94 c0             	sete   %al
c0005a2c:	0f b6 c0             	movzbl %al,%eax
c0005a2f:	5d                   	pop    %ebp
c0005a30:	c3                   	ret    

c0005a31 <cq_empty>:
c0005a31:	55                   	push   %ebp
c0005a32:	89 e5                	mov    %esp,%ebp
c0005a34:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a37:	0f b6 90 a1 00 00 00 	movzbl 0xa1(%eax),%edx
c0005a3e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a41:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005a48:	38 c2                	cmp    %al,%dl
c0005a4a:	0f 94 c0             	sete   %al
c0005a4d:	0f b6 c0             	movzbl %al,%eax
c0005a50:	5d                   	pop    %ebp
c0005a51:	c3                   	ret    

c0005a52 <exchange_esp0>:
c0005a52:	55                   	push   %ebp
c0005a53:	89 e5                	mov    %esp,%ebp
c0005a55:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a58:	05 00 10 00 00       	add    $0x1000,%eax
c0005a5d:	a3 44 b1 00 c0       	mov    %eax,0xc000b144
c0005a62:	5d                   	pop    %ebp
c0005a63:	c3                   	ret    

c0005a64 <init_proc_data>:
c0005a64:	55                   	push   %ebp
c0005a65:	89 e5                	mov    %esp,%ebp
c0005a67:	53                   	push   %ebx
c0005a68:	83 ec 34             	sub    $0x34,%esp
c0005a6b:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
c0005a72:	e8 59 01 00 00       	call   c0005bd0 <lgdt>
c0005a77:	c7 45 f4 03 09 00 c0 	movl   $0xc0000903,-0xc(%ebp)
c0005a7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005a81:	8d 58 20             	lea    0x20(%eax),%ebx
c0005a84:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005a87:	c7 44 24 10 f2 00 00 	movl   $0xf2,0x10(%esp)
c0005a8e:	00 
c0005a8f:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
c0005a96:	00 
c0005a97:	c7 44 24 08 ff ff 0f 	movl   $0xfffff,0x8(%esp)
c0005a9e:	00 
c0005a9f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0005aa6:	00 
c0005aa7:	89 04 24             	mov    %eax,(%esp)
c0005aaa:	e8 c2 00 00 00       	call   c0005b71 <make_seg_des>
c0005aaf:	83 ec 04             	sub    $0x4,%esp
c0005ab2:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005ab5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005ab8:	89 03                	mov    %eax,(%ebx)
c0005aba:	89 53 04             	mov    %edx,0x4(%ebx)
c0005abd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005ac0:	8d 58 28             	lea    0x28(%eax),%ebx
c0005ac3:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005ac6:	c7 44 24 10 f8 00 00 	movl   $0xf8,0x10(%esp)
c0005acd:	00 
c0005ace:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
c0005ad5:	00 
c0005ad6:	c7 44 24 08 ff ff 0f 	movl   $0xfffff,0x8(%esp)
c0005add:	00 
c0005ade:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0005ae5:	00 
c0005ae6:	89 04 24             	mov    %eax,(%esp)
c0005ae9:	e8 83 00 00 00       	call   c0005b71 <make_seg_des>
c0005aee:	83 ec 04             	sub    $0x4,%esp
c0005af1:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005af4:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005af7:	89 03                	mov    %eax,(%ebx)
c0005af9:	89 53 04             	mov    %edx,0x4(%ebx)
c0005afc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005aff:	8d 58 30             	lea    0x30(%eax),%ebx
c0005b02:	ba 40 b1 00 c0       	mov    $0xc000b140,%edx
c0005b07:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005b0a:	c7 44 24 10 89 00 00 	movl   $0x89,0x10(%esp)
c0005b11:	00 
c0005b12:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0005b19:	00 
c0005b1a:	c7 44 24 08 63 00 00 	movl   $0x63,0x8(%esp)
c0005b21:	00 
c0005b22:	89 54 24 04          	mov    %edx,0x4(%esp)
c0005b26:	89 04 24             	mov    %eax,(%esp)
c0005b29:	e8 43 00 00 00       	call   c0005b71 <make_seg_des>
c0005b2e:	83 ec 04             	sub    $0x4,%esp
c0005b31:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005b34:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005b37:	89 03                	mov    %eax,(%ebx)
c0005b39:	89 53 04             	mov    %edx,0x4(%ebx)
c0005b3c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005b43:	00 
c0005b44:	c7 44 24 04 64 00 00 	movl   $0x64,0x4(%esp)
c0005b4b:	00 
c0005b4c:	c7 04 24 40 b1 00 c0 	movl   $0xc000b140,(%esp)
c0005b53:	e8 55 db ff ff       	call   c00036ad <memset_8>
c0005b58:	c7 05 48 b1 00 c0 10 	movl   $0x10,0xc000b148
c0005b5f:	00 00 00 
c0005b62:	66 c7 45 f2 30 00    	movw   $0x30,-0xe(%ebp)
c0005b68:	0f 00 5d f2          	ltr    -0xe(%ebp)
c0005b6c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0005b6f:	c9                   	leave  
c0005b70:	c3                   	ret    

c0005b71 <make_seg_des>:
c0005b71:	55                   	push   %ebp
c0005b72:	89 e5                	mov    %esp,%ebp
c0005b74:	83 ec 18             	sub    $0x18,%esp
c0005b77:	8b 55 14             	mov    0x14(%ebp),%edx
c0005b7a:	8b 45 18             	mov    0x18(%ebp),%eax
c0005b7d:	88 55 ec             	mov    %dl,-0x14(%ebp)
c0005b80:	88 45 e8             	mov    %al,-0x18(%ebp)
c0005b83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005b86:	c1 e8 18             	shr    $0x18,%eax
c0005b89:	88 45 ff             	mov    %al,-0x1(%ebp)
c0005b8c:	8b 45 10             	mov    0x10(%ebp),%eax
c0005b8f:	c1 e8 10             	shr    $0x10,%eax
c0005b92:	89 c2                	mov    %eax,%edx
c0005b94:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c0005b98:	01 d0                	add    %edx,%eax
c0005b9a:	88 45 fe             	mov    %al,-0x2(%ebp)
c0005b9d:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
c0005ba1:	88 45 fd             	mov    %al,-0x3(%ebp)
c0005ba4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005ba7:	c1 e8 10             	shr    $0x10,%eax
c0005baa:	88 45 fc             	mov    %al,-0x4(%ebp)
c0005bad:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005bb0:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
c0005bb4:	8b 45 10             	mov    0x10(%ebp),%eax
c0005bb7:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
c0005bbb:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0005bbe:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0005bc1:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0005bc4:	89 01                	mov    %eax,(%ecx)
c0005bc6:	89 51 04             	mov    %edx,0x4(%ecx)
c0005bc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0005bcc:	c9                   	leave  
c0005bcd:	c2 04 00             	ret    $0x4

c0005bd0 <lgdt>:
c0005bd0:	55                   	push   %ebp
c0005bd1:	89 e5                	mov    %esp,%ebp
c0005bd3:	53                   	push   %ebx
c0005bd4:	83 ec 18             	sub    $0x18,%esp
c0005bd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0005bda:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
c0005bde:	c7 45 f0 03 09 00 c0 	movl   $0xc0000903,-0x10(%ebp)
c0005be5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0005bec:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005bef:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005bf2:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c0005bf6:	c1 e0 10             	shl    $0x10,%eax
c0005bf9:	89 c1                	mov    %eax,%ecx
c0005bfb:	89 d3                	mov    %edx,%ebx
c0005bfd:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
c0005c01:	c1 e0 03             	shl    $0x3,%eax
c0005c04:	99                   	cltd   
c0005c05:	01 c8                	add    %ecx,%eax
c0005c07:	11 da                	adc    %ebx,%edx
c0005c09:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005c0c:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0005c0f:	0f 01 55 f0          	lgdtl  -0x10(%ebp)
c0005c13:	83 c4 18             	add    $0x18,%esp
c0005c16:	5b                   	pop    %ebx
c0005c17:	5d                   	pop    %ebp
c0005c18:	c3                   	ret    

c0005c19 <proc_start>:
c0005c19:	55                   	push   %ebp
c0005c1a:	89 e5                	mov    %esp,%ebp
c0005c1c:	83 ec 28             	sub    $0x28,%esp
c0005c1f:	8b 45 14             	mov    0x14(%ebp),%eax
c0005c22:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0005c26:	8b 45 10             	mov    0x10(%ebp),%eax
c0005c29:	89 44 24 08          	mov    %eax,0x8(%esp)
c0005c2d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005c30:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005c34:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c37:	89 04 24             	mov    %eax,(%esp)
c0005c3a:	e8 3a ec ff ff       	call   c0004879 <create_thread>
c0005c3f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005c42:	8b 45 14             	mov    0x14(%ebp),%eax
c0005c45:	89 44 24 08          	mov    %eax,0x8(%esp)
c0005c49:	8b 45 10             	mov    0x10(%ebp),%eax
c0005c4c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005c50:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c53:	89 04 24             	mov    %eax,(%esp)
c0005c56:	e8 0d 00 00 00       	call   c0005c68 <init_proc>
c0005c5b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c5e:	89 04 24             	mov    %eax,(%esp)
c0005c61:	e8 39 01 00 00       	call   c0005d9f <create_proc_page>
c0005c66:	c9                   	leave  
c0005c67:	c3                   	ret    

c0005c68 <init_proc>:
c0005c68:	55                   	push   %ebp
c0005c69:	89 e5                	mov    %esp,%ebp
c0005c6b:	83 ec 28             	sub    $0x28,%esp
c0005c6e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c71:	05 98 0f 00 00       	add    $0xf98,%eax
c0005c76:	89 c2                	mov    %eax,%edx
c0005c78:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c7b:	89 10                	mov    %edx,(%eax)
c0005c7d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c80:	8b 00                	mov    (%eax),%eax
c0005c82:	83 c0 04             	add    $0x4,%eax
c0005c85:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005c8c:	00 
c0005c8d:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c0005c94:	00 
c0005c95:	89 04 24             	mov    %eax,(%esp)
c0005c98:	e8 72 da ff ff       	call   c000370f <memset_32>
c0005c9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ca0:	8b 00                	mov    (%eax),%eax
c0005ca2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005ca5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005cac:	00 
c0005cad:	c7 44 24 04 68 00 00 	movl   $0x68,0x4(%esp)
c0005cb4:	00 
c0005cb5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cb8:	89 04 24             	mov    %eax,(%esp)
c0005cbb:	e8 ed d9 ff ff       	call   c00036ad <memset_8>
c0005cc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cc3:	c7 40 24 23 00 00 00 	movl   $0x23,0x24(%eax)
c0005cca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005ccd:	8b 50 24             	mov    0x24(%eax),%edx
c0005cd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cd3:	89 50 20             	mov    %edx,0x20(%eax)
c0005cd6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cd9:	8b 50 20             	mov    0x20(%eax),%edx
c0005cdc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cdf:	89 50 28             	mov    %edx,0x28(%eax)
c0005ce2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005ce5:	c7 40 10 27 5e 00 c0 	movl   $0xc0005e27,0x10(%eax)
c0005cec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cef:	8b 55 10             	mov    0x10(%ebp),%edx
c0005cf2:	89 50 64             	mov    %edx,0x64(%eax)
c0005cf5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cf8:	c7 40 54 2b 00 00 00 	movl   $0x2b,0x54(%eax)
c0005cff:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005d02:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d05:	89 50 50             	mov    %edx,0x50(%eax)
c0005d08:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d0b:	c7 40 58 02 02 00 00 	movl   $0x202,0x58(%eax)
c0005d12:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d15:	c7 40 60 23 00 00 00 	movl   $0x23,0x60(%eax)
c0005d1c:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d1f:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
c0005d25:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d28:	89 50 5c             	mov    %edx,0x5c(%eax)
c0005d2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d2e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0005d35:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d38:	c7 40 10 00 00 00 c0 	movl   $0xc0000000,0x10(%eax)
c0005d3f:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
c0005d46:	00 
c0005d47:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005d4e:	e8 1c df ff ff       	call   c0003c6f <malloc_page>
c0005d53:	8b 55 08             	mov    0x8(%ebp),%edx
c0005d56:	89 42 08             	mov    %eax,0x8(%edx)
c0005d59:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d5c:	c7 40 04 00 00 00 c0 	movl   $0xc0000000,0x4(%eax)
c0005d63:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d66:	83 c0 04             	add    $0x4,%eax
c0005d69:	89 04 24             	mov    %eax,(%esp)
c0005d6c:	e8 73 db ff ff       	call   c00038e4 <init_bit_map>
c0005d71:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d74:	83 c0 38             	add    $0x38,%eax
c0005d77:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005d7b:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0005d82:	e8 8c ee ff ff       	call   c0004c13 <lst_push>
c0005d87:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d8a:	83 c0 40             	add    $0x40,%eax
c0005d8d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005d91:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c0005d98:	e8 76 ee ff ff       	call   c0004c13 <lst_push>
c0005d9d:	c9                   	leave  
c0005d9e:	c3                   	ret    

c0005d9f <create_proc_page>:
c0005d9f:	55                   	push   %ebp
c0005da0:	89 e5                	mov    %esp,%ebp
c0005da2:	83 ec 28             	sub    $0x28,%esp
c0005da5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0005dac:	00 
c0005dad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005db4:	e8 b6 de ff ff       	call   c0003c6f <malloc_page>
c0005db9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005dbc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005dbf:	89 04 24             	mov    %eax,(%esp)
c0005dc2:	e8 ae e7 ff ff       	call   c0004575 <get_paddr>
c0005dc7:	89 c2                	mov    %eax,%edx
c0005dc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0005dcc:	89 50 48             	mov    %edx,0x48(%eax)
c0005dcf:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0005dd6:	00 
c0005dd7:	c7 44 24 04 00 f0 ff 	movl   $0xfffff000,0x4(%esp)
c0005dde:	ff 
c0005ddf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005de2:	89 04 24             	mov    %eax,(%esp)
c0005de5:	e8 80 d9 ff ff       	call   c000376a <memcopy>
c0005dea:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ded:	8b 40 48             	mov    0x48(%eax),%eax
c0005df0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0005df5:	83 c0 07             	add    $0x7,%eax
c0005df8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005dfb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005dfe:	05 fc 0f 00 00       	add    $0xffc,%eax
c0005e03:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0005e06:	89 10                	mov    %edx,(%eax)
c0005e08:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%ebp)
c0005e0f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0005e12:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005e16:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005e1d:	e8 4d de ff ff       	call   c0003c6f <malloc_page>
c0005e22:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0005e25:	eb fe                	jmp    c0005e25 <create_proc_page+0x86>

c0005e27 <process_fun>:
c0005e27:	55                   	push   %ebp
c0005e28:	89 e5                	mov    %esp,%ebp
c0005e2a:	83 ec 28             	sub    $0x28,%esp
c0005e2d:	e8 20 d7 ff ff       	call   c0003552 <int_enable>
c0005e32:	e8 d1 e7 ff ff       	call   c0004608 <get_running>
c0005e37:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005e3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005e3d:	8b 00                	mov    (%eax),%eax
c0005e3f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005e42:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005e45:	8b 40 48             	mov    0x48(%eax),%eax
c0005e48:	0f 22 d8             	mov    %eax,%cr3
c0005e4b:	c7 44 24 04 ff ff 00 	movl   $0x7000ffff,0x4(%esp)
c0005e52:	70 
c0005e53:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0005e5a:	e8 dd df ff ff       	call   c0003e3c <create_page>
c0005e5f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005e62:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0005e66:	75 24                	jne    c0005e8c <process_fun+0x65>
c0005e68:	c7 44 24 0c a4 76 00 	movl   $0xc00076a4,0xc(%esp)
c0005e6f:	c0 
c0005e70:	c7 44 24 08 bf 76 00 	movl   $0xc00076bf,0x8(%esp)
c0005e77:	c0 
c0005e78:	c7 44 24 04 76 00 00 	movl   $0x76,0x4(%esp)
c0005e7f:	00 
c0005e80:	c7 04 24 a9 76 00 c0 	movl   $0xc00076a9,(%esp)
c0005e87:	e8 14 d7 ff ff       	call   c00035a0 <panic_spin>
c0005e8c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005e8f:	c7 40 5c f7 ff 00 70 	movl   $0x7000fff7,0x5c(%eax)
c0005e96:	b8 fb ff 00 70       	mov    $0x7000fffb,%eax
c0005e9b:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0005e9e:	8b 52 64             	mov    0x64(%edx),%edx
c0005ea1:	89 10                	mov    %edx,(%eax)
c0005ea3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005ea6:	83 c0 18             	add    $0x18,%eax
c0005ea9:	89 c4                	mov    %eax,%esp
c0005eab:	e9 b1 bb ff ff       	jmp    c0001a61 <exit_int>
c0005eb0:	c9                   	leave  
c0005eb1:	c3                   	ret    

c0005eb2 <syscall_table_init>:
c0005eb2:	55                   	push   %ebp
c0005eb3:	89 e5                	mov    %esp,%ebp
c0005eb5:	c7 05 c0 b1 00 c0 df 	movl   $0xc0005edf,0xc000b1c0
c0005ebc:	5e 00 c0 
c0005ebf:	c7 05 c4 b1 00 c0 ef 	movl   $0xc0005eef,0xc000b1c4
c0005ec6:	5e 00 c0 
c0005ec9:	c7 05 c8 b1 00 c0 fd 	movl   $0xc00040fd,0xc000b1c8
c0005ed0:	40 00 c0 
c0005ed3:	c7 05 cc b1 00 c0 f4 	movl   $0xc00042f4,0xc000b1cc
c0005eda:	42 00 c0 
c0005edd:	5d                   	pop    %ebp
c0005ede:	c3                   	ret    

c0005edf <sys_getPid>:
c0005edf:	55                   	push   %ebp
c0005ee0:	89 e5                	mov    %esp,%ebp
c0005ee2:	83 ec 08             	sub    $0x8,%esp
c0005ee5:	e8 1e e7 ff ff       	call   c0004608 <get_running>
c0005eea:	8b 40 24             	mov    0x24(%eax),%eax
c0005eed:	c9                   	leave  
c0005eee:	c3                   	ret    

c0005eef <sys_write>:
c0005eef:	55                   	push   %ebp
c0005ef0:	89 e5                	mov    %esp,%ebp
c0005ef2:	83 ec 18             	sub    $0x18,%esp
c0005ef5:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ef8:	89 04 24             	mov    %eax,(%esp)
c0005efb:	e8 c7 f4 ff ff       	call   c00053c7 <console_put_str>
c0005f00:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f03:	89 04 24             	mov    %eax,(%esp)
c0005f06:	e8 1f d9 ff ff       	call   c000382a <strlen>
c0005f0b:	c9                   	leave  
c0005f0c:	c3                   	ret    

c0005f0d <printf>:
c0005f0d:	55                   	push   %ebp
c0005f0e:	89 e5                	mov    %esp,%ebp
c0005f10:	83 ec 28             	sub    $0x28,%esp
c0005f13:	8d 45 08             	lea    0x8(%ebp),%eax
c0005f16:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005f19:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f1c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005f1f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0005f23:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005f27:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0005f2e:	e8 11 00 00 00       	call   c0005f44 <vsprintf>
c0005f33:	68 00 a3 00 c0       	push   $0xc000a300
c0005f38:	6a 01                	push   $0x1
c0005f3a:	cd 80                	int    $0x80
c0005f3c:	83 c4 08             	add    $0x8,%esp
c0005f3f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005f42:	c9                   	leave  
c0005f43:	c3                   	ret    

c0005f44 <vsprintf>:
c0005f44:	55                   	push   %ebp
c0005f45:	89 e5                	mov    %esp,%ebp
c0005f47:	83 ec 28             	sub    $0x28,%esp
c0005f4a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005f4d:	0f b6 00             	movzbl (%eax),%eax
c0005f50:	88 45 f7             	mov    %al,-0x9(%ebp)
c0005f53:	e9 04 01 00 00       	jmp    c000605c <vsprintf+0x118>
c0005f58:	80 7d f7 25          	cmpb   $0x25,-0x9(%ebp)
c0005f5c:	0f 85 db 00 00 00    	jne    c000603d <vsprintf+0xf9>
c0005f62:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0005f66:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005f69:	0f b6 00             	movzbl (%eax),%eax
c0005f6c:	88 45 f7             	mov    %al,-0x9(%ebp)
c0005f6f:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
c0005f73:	83 e8 63             	sub    $0x63,%eax
c0005f76:	83 f8 15             	cmp    $0x15,%eax
c0005f79:	0f 87 ae 00 00 00    	ja     c000602d <vsprintf+0xe9>
c0005f7f:	8b 04 85 cc 76 00 c0 	mov    -0x3fff8934(,%eax,4),%eax
c0005f86:	ff e0                	jmp    *%eax
c0005f88:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005f8c:	8b 45 10             	mov    0x10(%ebp),%eax
c0005f8f:	8b 00                	mov    (%eax),%eax
c0005f91:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005f95:	8d 45 08             	lea    0x8(%ebp),%eax
c0005f98:	89 04 24             	mov    %eax,(%esp)
c0005f9b:	e8 ce 00 00 00       	call   c000606e <hex_to_ascii>
c0005fa0:	e9 89 00 00 00       	jmp    c000602e <vsprintf+0xea>
c0005fa5:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005fa9:	8b 45 10             	mov    0x10(%ebp),%eax
c0005fac:	8b 00                	mov    (%eax),%eax
c0005fae:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005fb2:	8d 45 08             	lea    0x8(%ebp),%eax
c0005fb5:	89 04 24             	mov    %eax,(%esp)
c0005fb8:	e8 a4 01 00 00       	call   c0006161 <dec_to_ascii>
c0005fbd:	eb 6f                	jmp    c000602e <vsprintf+0xea>
c0005fbf:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005fc3:	8b 45 10             	mov    0x10(%ebp),%eax
c0005fc6:	8b 00                	mov    (%eax),%eax
c0005fc8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005fcc:	8d 45 08             	lea    0x8(%ebp),%eax
c0005fcf:	89 04 24             	mov    %eax,(%esp)
c0005fd2:	e8 45 02 00 00       	call   c000621c <unsign_to_ascii>
c0005fd7:	eb 55                	jmp    c000602e <vsprintf+0xea>
c0005fd9:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005fdd:	8b 45 10             	mov    0x10(%ebp),%eax
c0005fe0:	8b 00                	mov    (%eax),%eax
c0005fe2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005fe5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005fe8:	0f b6 00             	movzbl (%eax),%eax
c0005feb:	88 45 ef             	mov    %al,-0x11(%ebp)
c0005fee:	eb 1f                	jmp    c000600f <vsprintf+0xcb>
c0005ff0:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ff3:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
c0005ff7:	88 10                	mov    %dl,(%eax)
c0005ff9:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ffc:	83 c0 01             	add    $0x1,%eax
c0005fff:	89 45 08             	mov    %eax,0x8(%ebp)
c0006002:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0006006:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006009:	0f b6 00             	movzbl (%eax),%eax
c000600c:	88 45 ef             	mov    %al,-0x11(%ebp)
c000600f:	80 7d ef 00          	cmpb   $0x0,-0x11(%ebp)
c0006013:	75 db                	jne    c0005ff0 <vsprintf+0xac>
c0006015:	eb 17                	jmp    c000602e <vsprintf+0xea>
c0006017:	8b 45 08             	mov    0x8(%ebp),%eax
c000601a:	8d 50 01             	lea    0x1(%eax),%edx
c000601d:	89 55 08             	mov    %edx,0x8(%ebp)
c0006020:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0006024:	8b 55 10             	mov    0x10(%ebp),%edx
c0006027:	8b 12                	mov    (%edx),%edx
c0006029:	88 10                	mov    %dl,(%eax)
c000602b:	eb 01                	jmp    c000602e <vsprintf+0xea>
c000602d:	90                   	nop
c000602e:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0006032:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006035:	0f b6 00             	movzbl (%eax),%eax
c0006038:	88 45 f7             	mov    %al,-0x9(%ebp)
c000603b:	eb 1f                	jmp    c000605c <vsprintf+0x118>
c000603d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006040:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006044:	88 10                	mov    %dl,(%eax)
c0006046:	8b 45 08             	mov    0x8(%ebp),%eax
c0006049:	83 c0 01             	add    $0x1,%eax
c000604c:	89 45 08             	mov    %eax,0x8(%ebp)
c000604f:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0006053:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006056:	0f b6 00             	movzbl (%eax),%eax
c0006059:	88 45 f7             	mov    %al,-0x9(%ebp)
c000605c:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
c0006060:	0f 85 f2 fe ff ff    	jne    c0005f58 <vsprintf+0x14>
c0006066:	8b 45 08             	mov    0x8(%ebp),%eax
c0006069:	c6 00 00             	movb   $0x0,(%eax)
c000606c:	c9                   	leave  
c000606d:	c3                   	ret    

c000606e <hex_to_ascii>:
c000606e:	55                   	push   %ebp
c000606f:	89 e5                	mov    %esp,%ebp
c0006071:	53                   	push   %ebx
c0006072:	83 ec 10             	sub    $0x10,%esp
c0006075:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0006079:	75 15                	jne    c0006090 <hex_to_ascii+0x22>
c000607b:	8b 45 08             	mov    0x8(%ebp),%eax
c000607e:	8b 00                	mov    (%eax),%eax
c0006080:	8d 48 01             	lea    0x1(%eax),%ecx
c0006083:	8b 55 08             	mov    0x8(%ebp),%edx
c0006086:	89 0a                	mov    %ecx,(%edx)
c0006088:	c6 00 30             	movb   $0x30,(%eax)
c000608b:	e9 cb 00 00 00       	jmp    c000615b <hex_to_ascii+0xed>
c0006090:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006093:	85 c0                	test   %eax,%eax
c0006095:	79 17                	jns    c00060ae <hex_to_ascii+0x40>
c0006097:	8b 45 08             	mov    0x8(%ebp),%eax
c000609a:	8b 00                	mov    (%eax),%eax
c000609c:	8d 48 01             	lea    0x1(%eax),%ecx
c000609f:	8b 55 08             	mov    0x8(%ebp),%edx
c00060a2:	89 0a                	mov    %ecx,(%edx)
c00060a4:	c6 00 2d             	movb   $0x2d,(%eax)
c00060a7:	81 65 0c ff ff ff 7f 	andl   $0x7fffffff,0xc(%ebp)
c00060ae:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
c00060b5:	eb 04                	jmp    c00060bb <hex_to_ascii+0x4d>
c00060b7:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c00060bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00060be:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c00060c1:	72 f4                	jb     c00060b7 <hex_to_ascii+0x49>
c00060c3:	eb 5e                	jmp    c0006123 <hex_to_ascii+0xb5>
c00060c5:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00060c8:	8d 58 01             	lea    0x1(%eax),%ebx
c00060cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00060ce:	ba 00 00 00 00       	mov    $0x0,%edx
c00060d3:	f7 f3                	div    %ebx
c00060d5:	88 45 f7             	mov    %al,-0x9(%ebp)
c00060d8:	80 7d f7 09          	cmpb   $0x9,-0x9(%ebp)
c00060dc:	7f 18                	jg     c00060f6 <hex_to_ascii+0x88>
c00060de:	8b 45 08             	mov    0x8(%ebp),%eax
c00060e1:	8b 00                	mov    (%eax),%eax
c00060e3:	8d 48 01             	lea    0x1(%eax),%ecx
c00060e6:	8b 55 08             	mov    0x8(%ebp),%edx
c00060e9:	89 0a                	mov    %ecx,(%edx)
c00060eb:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c00060ef:	83 c2 30             	add    $0x30,%edx
c00060f2:	88 10                	mov    %dl,(%eax)
c00060f4:	eb 16                	jmp    c000610c <hex_to_ascii+0x9e>
c00060f6:	8b 45 08             	mov    0x8(%ebp),%eax
c00060f9:	8b 00                	mov    (%eax),%eax
c00060fb:	8d 48 01             	lea    0x1(%eax),%ecx
c00060fe:	8b 55 08             	mov    0x8(%ebp),%edx
c0006101:	89 0a                	mov    %ecx,(%edx)
c0006103:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006107:	83 c2 57             	add    $0x57,%edx
c000610a:	88 10                	mov    %dl,(%eax)
c000610c:	8b 45 f8             	mov    -0x8(%ebp),%eax
c000610f:	8d 48 01             	lea    0x1(%eax),%ecx
c0006112:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006115:	ba 00 00 00 00       	mov    $0x0,%edx
c000611a:	f7 f1                	div    %ecx
c000611c:	89 55 0c             	mov    %edx,0xc(%ebp)
c000611f:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0006123:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0006127:	75 9c                	jne    c00060c5 <hex_to_ascii+0x57>
c0006129:	83 7d 0c 09          	cmpl   $0x9,0xc(%ebp)
c000612d:	77 17                	ja     c0006146 <hex_to_ascii+0xd8>
c000612f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006132:	8b 00                	mov    (%eax),%eax
c0006134:	8d 48 01             	lea    0x1(%eax),%ecx
c0006137:	8b 55 08             	mov    0x8(%ebp),%edx
c000613a:	89 0a                	mov    %ecx,(%edx)
c000613c:	8b 55 0c             	mov    0xc(%ebp),%edx
c000613f:	83 c2 30             	add    $0x30,%edx
c0006142:	88 10                	mov    %dl,(%eax)
c0006144:	eb 15                	jmp    c000615b <hex_to_ascii+0xed>
c0006146:	8b 45 08             	mov    0x8(%ebp),%eax
c0006149:	8b 00                	mov    (%eax),%eax
c000614b:	8d 48 01             	lea    0x1(%eax),%ecx
c000614e:	8b 55 08             	mov    0x8(%ebp),%edx
c0006151:	89 0a                	mov    %ecx,(%edx)
c0006153:	8b 55 0c             	mov    0xc(%ebp),%edx
c0006156:	83 c2 57             	add    $0x57,%edx
c0006159:	88 10                	mov    %dl,(%eax)
c000615b:	83 c4 10             	add    $0x10,%esp
c000615e:	5b                   	pop    %ebx
c000615f:	5d                   	pop    %ebp
c0006160:	c3                   	ret    

c0006161 <dec_to_ascii>:
c0006161:	55                   	push   %ebp
c0006162:	89 e5                	mov    %esp,%ebp
c0006164:	83 ec 10             	sub    $0x10,%esp
c0006167:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c000616b:	75 15                	jne    c0006182 <dec_to_ascii+0x21>
c000616d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006170:	8b 00                	mov    (%eax),%eax
c0006172:	8d 48 01             	lea    0x1(%eax),%ecx
c0006175:	8b 55 08             	mov    0x8(%ebp),%edx
c0006178:	89 0a                	mov    %ecx,(%edx)
c000617a:	c6 00 30             	movb   $0x30,(%eax)
c000617d:	e9 98 00 00 00       	jmp    c000621a <dec_to_ascii+0xb9>
c0006182:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006185:	85 c0                	test   %eax,%eax
c0006187:	79 13                	jns    c000619c <dec_to_ascii+0x3b>
c0006189:	8b 45 08             	mov    0x8(%ebp),%eax
c000618c:	8b 00                	mov    (%eax),%eax
c000618e:	8d 48 01             	lea    0x1(%eax),%ecx
c0006191:	8b 55 08             	mov    0x8(%ebp),%edx
c0006194:	89 0a                	mov    %ecx,(%edx)
c0006196:	c6 00 2d             	movb   $0x2d,(%eax)
c0006199:	f7 5d 0c             	negl   0xc(%ebp)
c000619c:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c00061a3:	eb 0f                	jmp    c00061b4 <dec_to_ascii+0x53>
c00061a5:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00061a8:	89 d0                	mov    %edx,%eax
c00061aa:	c1 e0 02             	shl    $0x2,%eax
c00061ad:	01 d0                	add    %edx,%eax
c00061af:	01 c0                	add    %eax,%eax
c00061b1:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00061b4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00061b7:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c00061ba:	73 e9                	jae    c00061a5 <dec_to_ascii+0x44>
c00061bc:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00061bf:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c00061c4:	f7 e2                	mul    %edx
c00061c6:	89 d0                	mov    %edx,%eax
c00061c8:	c1 e8 03             	shr    $0x3,%eax
c00061cb:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00061ce:	eb 44                	jmp    c0006214 <dec_to_ascii+0xb3>
c00061d0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00061d3:	ba 00 00 00 00       	mov    $0x0,%edx
c00061d8:	f7 75 fc             	divl   -0x4(%ebp)
c00061db:	88 45 fb             	mov    %al,-0x5(%ebp)
c00061de:	8b 45 08             	mov    0x8(%ebp),%eax
c00061e1:	8b 00                	mov    (%eax),%eax
c00061e3:	8d 48 01             	lea    0x1(%eax),%ecx
c00061e6:	8b 55 08             	mov    0x8(%ebp),%edx
c00061e9:	89 0a                	mov    %ecx,(%edx)
c00061eb:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00061ef:	83 c2 30             	add    $0x30,%edx
c00061f2:	88 10                	mov    %dl,(%eax)
c00061f4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00061f7:	ba 00 00 00 00       	mov    $0x0,%edx
c00061fc:	f7 75 fc             	divl   -0x4(%ebp)
c00061ff:	89 55 0c             	mov    %edx,0xc(%ebp)
c0006202:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006205:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c000620a:	f7 e2                	mul    %edx
c000620c:	89 d0                	mov    %edx,%eax
c000620e:	c1 e8 03             	shr    $0x3,%eax
c0006211:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0006214:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0006218:	75 b6                	jne    c00061d0 <dec_to_ascii+0x6f>
c000621a:	c9                   	leave  
c000621b:	c3                   	ret    

c000621c <unsign_to_ascii>:
c000621c:	55                   	push   %ebp
c000621d:	89 e5                	mov    %esp,%ebp
c000621f:	53                   	push   %ebx
c0006220:	83 ec 10             	sub    $0x10,%esp
c0006223:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0006227:	75 15                	jne    c000623e <unsign_to_ascii+0x22>
c0006229:	8b 45 08             	mov    0x8(%ebp),%eax
c000622c:	8b 00                	mov    (%eax),%eax
c000622e:	8d 48 01             	lea    0x1(%eax),%ecx
c0006231:	8b 55 08             	mov    0x8(%ebp),%edx
c0006234:	89 0a                	mov    %ecx,(%edx)
c0006236:	c6 00 30             	movb   $0x30,(%eax)
c0006239:	e9 d8 00 00 00       	jmp    c0006316 <unsign_to_ascii+0xfa>
c000623e:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
c0006242:	75 24                	jne    c0006268 <unsign_to_ascii+0x4c>
c0006244:	8b 45 08             	mov    0x8(%ebp),%eax
c0006247:	8b 00                	mov    (%eax),%eax
c0006249:	c7 00 66 66 66 66    	movl   $0x66666666,(%eax)
c000624f:	c7 40 04 66 66 66 66 	movl   $0x66666666,0x4(%eax)
c0006256:	8b 45 08             	mov    0x8(%ebp),%eax
c0006259:	8b 00                	mov    (%eax),%eax
c000625b:	8d 50 08             	lea    0x8(%eax),%edx
c000625e:	8b 45 08             	mov    0x8(%ebp),%eax
c0006261:	89 10                	mov    %edx,(%eax)
c0006263:	e9 ae 00 00 00       	jmp    c0006316 <unsign_to_ascii+0xfa>
c0006268:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
c000626f:	eb 04                	jmp    c0006275 <unsign_to_ascii+0x59>
c0006271:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0006275:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006278:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c000627b:	72 f4                	jb     c0006271 <unsign_to_ascii+0x55>
c000627d:	eb 5e                	jmp    c00062dd <unsign_to_ascii+0xc1>
c000627f:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0006282:	8d 58 01             	lea    0x1(%eax),%ebx
c0006285:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006288:	ba 00 00 00 00       	mov    $0x0,%edx
c000628d:	f7 f3                	div    %ebx
c000628f:	88 45 f7             	mov    %al,-0x9(%ebp)
c0006292:	80 7d f7 09          	cmpb   $0x9,-0x9(%ebp)
c0006296:	7f 18                	jg     c00062b0 <unsign_to_ascii+0x94>
c0006298:	8b 45 08             	mov    0x8(%ebp),%eax
c000629b:	8b 00                	mov    (%eax),%eax
c000629d:	8d 48 01             	lea    0x1(%eax),%ecx
c00062a0:	8b 55 08             	mov    0x8(%ebp),%edx
c00062a3:	89 0a                	mov    %ecx,(%edx)
c00062a5:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c00062a9:	83 c2 30             	add    $0x30,%edx
c00062ac:	88 10                	mov    %dl,(%eax)
c00062ae:	eb 16                	jmp    c00062c6 <unsign_to_ascii+0xaa>
c00062b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00062b3:	8b 00                	mov    (%eax),%eax
c00062b5:	8d 48 01             	lea    0x1(%eax),%ecx
c00062b8:	8b 55 08             	mov    0x8(%ebp),%edx
c00062bb:	89 0a                	mov    %ecx,(%edx)
c00062bd:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c00062c1:	83 c2 57             	add    $0x57,%edx
c00062c4:	88 10                	mov    %dl,(%eax)
c00062c6:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00062c9:	8d 48 01             	lea    0x1(%eax),%ecx
c00062cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00062cf:	ba 00 00 00 00       	mov    $0x0,%edx
c00062d4:	f7 f1                	div    %ecx
c00062d6:	89 55 0c             	mov    %edx,0xc(%ebp)
c00062d9:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c00062dd:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c00062e1:	75 9c                	jne    c000627f <unsign_to_ascii+0x63>
c00062e3:	83 7d 0c 09          	cmpl   $0x9,0xc(%ebp)
c00062e7:	77 17                	ja     c0006300 <unsign_to_ascii+0xe4>
c00062e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00062ec:	8b 00                	mov    (%eax),%eax
c00062ee:	8d 48 01             	lea    0x1(%eax),%ecx
c00062f1:	8b 55 08             	mov    0x8(%ebp),%edx
c00062f4:	89 0a                	mov    %ecx,(%edx)
c00062f6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00062f9:	83 c2 30             	add    $0x30,%edx
c00062fc:	88 10                	mov    %dl,(%eax)
c00062fe:	eb 16                	jmp    c0006316 <unsign_to_ascii+0xfa>
c0006300:	8b 45 08             	mov    0x8(%ebp),%eax
c0006303:	8b 00                	mov    (%eax),%eax
c0006305:	8d 48 01             	lea    0x1(%eax),%ecx
c0006308:	8b 55 08             	mov    0x8(%ebp),%edx
c000630b:	89 0a                	mov    %ecx,(%edx)
c000630d:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006311:	83 c2 57             	add    $0x57,%edx
c0006314:	88 10                	mov    %dl,(%eax)
c0006316:	83 c4 10             	add    $0x10,%esp
c0006319:	5b                   	pop    %ebx
c000631a:	5d                   	pop    %ebp
c000631b:	c3                   	ret    

c000631c <getpid>:
c000631c:	55                   	push   %ebp
c000631d:	89 e5                	mov    %esp,%ebp
c000631f:	83 ec 10             	sub    $0x10,%esp
c0006322:	6a 00                	push   $0x0
c0006324:	cd 80                	int    $0x80
c0006326:	83 c4 04             	add    $0x4,%esp
c0006329:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000632c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000632f:	c9                   	leave  
c0006330:	c3                   	ret    

c0006331 <malloc>:
c0006331:	55                   	push   %ebp
c0006332:	89 e5                	mov    %esp,%ebp
c0006334:	83 ec 10             	sub    $0x10,%esp
c0006337:	ff 75 08             	pushl  0x8(%ebp)
c000633a:	6a 02                	push   $0x2
c000633c:	cd 80                	int    $0x80
c000633e:	83 c4 08             	add    $0x8,%esp
c0006341:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0006344:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006347:	c9                   	leave  
c0006348:	c3                   	ret    

c0006349 <free>:
c0006349:	55                   	push   %ebp
c000634a:	89 e5                	mov    %esp,%ebp
c000634c:	83 ec 10             	sub    $0x10,%esp
c000634f:	ff 75 08             	pushl  0x8(%ebp)
c0006352:	6a 03                	push   $0x3
c0006354:	cd 80                	int    $0x80
c0006356:	83 c4 08             	add    $0x8,%esp
c0006359:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000635c:	90                   	nop
c000635d:	c9                   	leave  
c000635e:	c3                   	ret    

c000635f <read_port>:
c000635f:	55                   	push   %ebp
c0006360:	89 e5                	mov    %esp,%ebp
c0006362:	83 ec 14             	sub    $0x14,%esp
c0006365:	8b 45 08             	mov    0x8(%ebp),%eax
c0006368:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c000636c:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
c0006370:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c0006374:	ec                   	in     (%dx),%al
c0006375:	88 45 ff             	mov    %al,-0x1(%ebp)
c0006378:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c000637c:	c9                   	leave  
c000637d:	c3                   	ret    

c000637e <read_wordstream>:
c000637e:	55                   	push   %ebp
c000637f:	89 e5                	mov    %esp,%ebp
c0006381:	57                   	push   %edi
c0006382:	53                   	push   %ebx
c0006383:	83 ec 04             	sub    $0x4,%esp
c0006386:	8b 45 08             	mov    0x8(%ebp),%eax
c0006389:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
c000638d:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
c0006391:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0006394:	8b 45 10             	mov    0x10(%ebp),%eax
c0006397:	89 cb                	mov    %ecx,%ebx
c0006399:	89 df                	mov    %ebx,%edi
c000639b:	89 c1                	mov    %eax,%ecx
c000639d:	fc                   	cld    
c000639e:	66 f3 6d             	rep insw (%dx),%es:(%edi)
c00063a1:	89 c8                	mov    %ecx,%eax
c00063a3:	89 fb                	mov    %edi,%ebx
c00063a5:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00063a8:	89 45 10             	mov    %eax,0x10(%ebp)
c00063ab:	83 c4 04             	add    $0x4,%esp
c00063ae:	5b                   	pop    %ebx
c00063af:	5f                   	pop    %edi
c00063b0:	5d                   	pop    %ebp
c00063b1:	c3                   	ret    

c00063b2 <write_port>:
c00063b2:	55                   	push   %ebp
c00063b3:	89 e5                	mov    %esp,%ebp
c00063b5:	83 ec 04             	sub    $0x4,%esp
c00063b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00063bb:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00063bf:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c00063c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00063c6:	ee                   	out    %al,(%dx)
c00063c7:	c9                   	leave  
c00063c8:	c3                   	ret    

c00063c9 <write_wordstream>:
c00063c9:	55                   	push   %ebp
c00063ca:	89 e5                	mov    %esp,%ebp
c00063cc:	56                   	push   %esi
c00063cd:	53                   	push   %ebx
c00063ce:	83 ec 04             	sub    $0x4,%esp
c00063d1:	8b 45 08             	mov    0x8(%ebp),%eax
c00063d4:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
c00063d8:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
c00063dc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00063df:	8b 45 10             	mov    0x10(%ebp),%eax
c00063e2:	89 cb                	mov    %ecx,%ebx
c00063e4:	89 de                	mov    %ebx,%esi
c00063e6:	89 c1                	mov    %eax,%ecx
c00063e8:	fc                   	cld    
c00063e9:	66 f3 6f             	rep outsw %ds:(%esi),(%dx)
c00063ec:	89 c8                	mov    %ecx,%eax
c00063ee:	89 f3                	mov    %esi,%ebx
c00063f0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00063f3:	89 45 10             	mov    %eax,0x10(%ebp)
c00063f6:	83 c4 04             	add    $0x4,%esp
c00063f9:	5b                   	pop    %ebx
c00063fa:	5e                   	pop    %esi
c00063fb:	5d                   	pop    %ebp
c00063fc:	c3                   	ret    

c00063fd <channel_init>:
c00063fd:	55                   	push   %ebp
c00063fe:	89 e5                	mov    %esp,%ebp
c0006400:	83 ec 28             	sub    $0x28,%esp
c0006403:	b8 75 04 00 00       	mov    $0x475,%eax
c0006408:	0f b6 00             	movzbl (%eax),%eax
c000640b:	88 45 f6             	mov    %al,-0xa(%ebp)
c000640e:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
c0006412:	89 c2                	mov    %eax,%edx
c0006414:	c0 ea 07             	shr    $0x7,%dl
c0006417:	01 d0                	add    %edx,%eax
c0006419:	d0 f8                	sar    %al
c000641b:	88 45 f5             	mov    %al,-0xb(%ebp)
c000641e:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
c0006422:	e9 fa 00 00 00       	jmp    c0006521 <channel_init+0x124>
c0006427:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000642b:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c0006431:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c0006436:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0006439:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000643c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0006443:	00 
c0006444:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c000644b:	00 
c000644c:	89 04 24             	mov    %eax,(%esp)
c000644f:	e8 59 d2 ff ff       	call   c00036ad <memset_8>
c0006454:	c7 45 ec 24 77 00 c0 	movl   $0xc0007724,-0x14(%ebp)
c000645b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000645e:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
c0006465:	00 
c0006466:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0006469:	89 54 24 04          	mov    %edx,0x4(%esp)
c000646d:	89 04 24             	mov    %eax,(%esp)
c0006470:	e8 f5 d2 ff ff       	call   c000376a <memcopy>
c0006475:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006479:	83 c0 30             	add    $0x30,%eax
c000647c:	89 c2                	mov    %eax,%edx
c000647e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006481:	88 50 03             	mov    %dl,0x3(%eax)
c0006484:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006487:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c000648b:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000648f:	85 c0                	test   %eax,%eax
c0006491:	74 07                	je     c000649a <channel_init+0x9d>
c0006493:	83 f8 01             	cmp    $0x1,%eax
c0006496:	74 2e                	je     c00064c6 <channel_init+0xc9>
c0006498:	eb 57                	jmp    c00064f1 <channel_init+0xf4>
c000649a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000649d:	c7 40 08 f0 01 00 00 	movl   $0x1f0,0x8(%eax)
c00064a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064a7:	c7 40 0c 2e 00 00 00 	movl   $0x2e,0xc(%eax)
c00064ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064b1:	8b 40 0c             	mov    0xc(%eax),%eax
c00064b4:	c7 44 24 04 18 69 00 	movl   $0xc0006918,0x4(%esp)
c00064bb:	c0 
c00064bc:	89 04 24             	mov    %eax,(%esp)
c00064bf:	e8 d2 b2 ff ff       	call   c0001796 <register_int>
c00064c4:	eb 2b                	jmp    c00064f1 <channel_init+0xf4>
c00064c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064c9:	c7 40 08 70 01 00 00 	movl   $0x170,0x8(%eax)
c00064d0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064d3:	c7 40 0c 2f 00 00 00 	movl   $0x2f,0xc(%eax)
c00064da:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064dd:	8b 40 0c             	mov    0xc(%eax),%eax
c00064e0:	c7 44 24 04 18 69 00 	movl   $0xc0006918,0x4(%esp)
c00064e7:	c0 
c00064e8:	89 04 24             	mov    %eax,(%esp)
c00064eb:	e8 a6 b2 ff ff       	call   c0001796 <register_int>
c00064f0:	90                   	nop
c00064f1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064f4:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c00064fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064fe:	83 c0 14             	add    $0x14,%eax
c0006501:	89 04 24             	mov    %eax,(%esp)
c0006504:	e8 4c eb ff ff       	call   c0005055 <init_mutex>
c0006509:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000650c:	83 c0 28             	add    $0x28,%eax
c000650f:	89 04 24             	mov    %eax,(%esp)
c0006512:	e8 7b eb ff ff       	call   c0005092 <sema_init>
c0006517:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000651b:	83 c0 01             	add    $0x1,%eax
c000651e:	88 45 f7             	mov    %al,-0x9(%ebp)
c0006521:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006525:	3a 45 f5             	cmp    -0xb(%ebp),%al
c0006528:	0f 86 f9 fe ff ff    	jbe    c0006427 <channel_init+0x2a>
c000652e:	c9                   	leave  
c000652f:	c3                   	ret    

c0006530 <select_disk>:
c0006530:	55                   	push   %ebp
c0006531:	89 e5                	mov    %esp,%ebp
c0006533:	83 ec 28             	sub    $0x28,%esp
c0006536:	c6 45 f7 a8          	movb   $0xa8,-0x9(%ebp)
c000653a:	8b 45 08             	mov    0x8(%ebp),%eax
c000653d:	0f b6 40 14          	movzbl 0x14(%eax),%eax
c0006541:	84 c0                	test   %al,%al
c0006543:	74 04                	je     c0006549 <select_disk+0x19>
c0006545:	80 4d f7 10          	orb    $0x10,-0x9(%ebp)
c0006549:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000654d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006551:	c7 04 24 28 77 00 c0 	movl   $0xc0007728,(%esp)
c0006558:	e8 19 0a 00 00       	call   c0006f76 <__printk>
c000655d:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006561:	8b 45 08             	mov    0x8(%ebp),%eax
c0006564:	8b 40 10             	mov    0x10(%eax),%eax
c0006567:	8b 40 08             	mov    0x8(%eax),%eax
c000656a:	83 c0 06             	add    $0x6,%eax
c000656d:	0f b7 c0             	movzwl %ax,%eax
c0006570:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006574:	89 04 24             	mov    %eax,(%esp)
c0006577:	e8 36 fe ff ff       	call   c00063b2 <write_port>
c000657c:	8b 45 08             	mov    0x8(%ebp),%eax
c000657f:	c9                   	leave  
c0006580:	c3                   	ret    

c0006581 <select_sector>:
c0006581:	55                   	push   %ebp
c0006582:	89 e5                	mov    %esp,%ebp
c0006584:	83 ec 1c             	sub    $0x1c,%esp
c0006587:	8b 45 10             	mov    0x10(%ebp),%eax
c000658a:	88 45 ec             	mov    %al,-0x14(%ebp)
c000658d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006590:	8b 40 10             	mov    0x10(%eax),%eax
c0006593:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0006596:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006599:	88 45 fb             	mov    %al,-0x5(%ebp)
c000659c:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00065a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00065a3:	8b 40 10             	mov    0x10(%eax),%eax
c00065a6:	8b 40 08             	mov    0x8(%eax),%eax
c00065a9:	83 c0 03             	add    $0x3,%eax
c00065ac:	0f b7 c0             	movzwl %ax,%eax
c00065af:	89 54 24 04          	mov    %edx,0x4(%esp)
c00065b3:	89 04 24             	mov    %eax,(%esp)
c00065b6:	e8 f7 fd ff ff       	call   c00063b2 <write_port>
c00065bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00065be:	c1 e8 08             	shr    $0x8,%eax
c00065c1:	88 45 fb             	mov    %al,-0x5(%ebp)
c00065c4:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00065c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00065cb:	8b 40 10             	mov    0x10(%eax),%eax
c00065ce:	8b 40 08             	mov    0x8(%eax),%eax
c00065d1:	83 c0 04             	add    $0x4,%eax
c00065d4:	0f b7 c0             	movzwl %ax,%eax
c00065d7:	89 54 24 04          	mov    %edx,0x4(%esp)
c00065db:	89 04 24             	mov    %eax,(%esp)
c00065de:	e8 cf fd ff ff       	call   c00063b2 <write_port>
c00065e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00065e6:	c1 e8 10             	shr    $0x10,%eax
c00065e9:	88 45 fb             	mov    %al,-0x5(%ebp)
c00065ec:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00065f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00065f3:	8b 40 10             	mov    0x10(%eax),%eax
c00065f6:	8b 40 08             	mov    0x8(%eax),%eax
c00065f9:	83 c0 05             	add    $0x5,%eax
c00065fc:	0f b7 c0             	movzwl %ax,%eax
c00065ff:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006603:	89 04 24             	mov    %eax,(%esp)
c0006606:	e8 a7 fd ff ff       	call   c00063b2 <write_port>
c000660b:	8b 45 0c             	mov    0xc(%ebp),%eax
c000660e:	c1 e8 18             	shr    $0x18,%eax
c0006611:	88 45 fb             	mov    %al,-0x5(%ebp)
c0006614:	8b 45 08             	mov    0x8(%ebp),%eax
c0006617:	0f b6 40 14          	movzbl 0x14(%eax),%eax
c000661b:	84 c0                	test   %al,%al
c000661d:	74 07                	je     c0006626 <select_sector+0xa5>
c000661f:	b8 b8 00 00 00       	mov    $0xb8,%eax
c0006624:	eb 05                	jmp    c000662b <select_sector+0xaa>
c0006626:	b8 a8 00 00 00       	mov    $0xa8,%eax
c000662b:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c000662f:	09 d0                	or     %edx,%eax
c0006631:	89 c2                	mov    %eax,%edx
c0006633:	8b 45 08             	mov    0x8(%ebp),%eax
c0006636:	8b 40 10             	mov    0x10(%eax),%eax
c0006639:	8b 40 08             	mov    0x8(%eax),%eax
c000663c:	83 c0 06             	add    $0x6,%eax
c000663f:	0f b7 c0             	movzwl %ax,%eax
c0006642:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006646:	89 04 24             	mov    %eax,(%esp)
c0006649:	e8 64 fd ff ff       	call   c00063b2 <write_port>
c000664e:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
c0006652:	8b 45 08             	mov    0x8(%ebp),%eax
c0006655:	8b 40 10             	mov    0x10(%eax),%eax
c0006658:	8b 40 08             	mov    0x8(%eax),%eax
c000665b:	83 c0 02             	add    $0x2,%eax
c000665e:	0f b7 c0             	movzwl %ax,%eax
c0006661:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006665:	89 04 24             	mov    %eax,(%esp)
c0006668:	e8 45 fd ff ff       	call   c00063b2 <write_port>
c000666d:	c9                   	leave  
c000666e:	c3                   	ret    

c000666f <send_cmd>:
c000666f:	55                   	push   %ebp
c0006670:	89 e5                	mov    %esp,%ebp
c0006672:	83 ec 0c             	sub    $0xc,%esp
c0006675:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006678:	88 45 fc             	mov    %al,-0x4(%ebp)
c000667b:	8b 45 08             	mov    0x8(%ebp),%eax
c000667e:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0006685:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c0006689:	8b 45 08             	mov    0x8(%ebp),%eax
c000668c:	8b 40 08             	mov    0x8(%eax),%eax
c000668f:	83 c0 07             	add    $0x7,%eax
c0006692:	0f b7 c0             	movzwl %ax,%eax
c0006695:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006699:	89 04 24             	mov    %eax,(%esp)
c000669c:	e8 11 fd ff ff       	call   c00063b2 <write_port>
c00066a1:	c9                   	leave  
c00066a2:	c3                   	ret    

c00066a3 <hd_busy>:
c00066a3:	55                   	push   %ebp
c00066a4:	89 e5                	mov    %esp,%ebp
c00066a6:	83 ec 28             	sub    $0x28,%esp
c00066a9:	c7 45 f4 40 9c 00 00 	movl   $0x9c40,-0xc(%ebp)
c00066b0:	eb 42                	jmp    c00066f4 <hd_busy+0x51>
c00066b2:	a1 28 b2 00 c0       	mov    0xc000b228,%eax
c00066b7:	83 c0 07             	add    $0x7,%eax
c00066ba:	0f b7 c0             	movzwl %ax,%eax
c00066bd:	89 04 24             	mov    %eax,(%esp)
c00066c0:	e8 9a fc ff ff       	call   c000635f <read_port>
c00066c5:	84 c0                	test   %al,%al
c00066c7:	78 1b                	js     c00066e4 <hd_busy+0x41>
c00066c9:	a1 28 b2 00 c0       	mov    0xc000b228,%eax
c00066ce:	83 c0 07             	add    $0x7,%eax
c00066d1:	0f b7 c0             	movzwl %ax,%eax
c00066d4:	89 04 24             	mov    %eax,(%esp)
c00066d7:	e8 83 fc ff ff       	call   c000635f <read_port>
c00066dc:	0f b6 c0             	movzbl %al,%eax
c00066df:	83 e0 08             	and    $0x8,%eax
c00066e2:	eb 1b                	jmp    c00066ff <hd_busy+0x5c>
c00066e4:	c7 04 24 32 00 00 00 	movl   $0x32,(%esp)
c00066eb:	e8 5c b2 ff ff       	call   c000194c <mtime_sleep>
c00066f0:	83 6d f4 32          	subl   $0x32,-0xc(%ebp)
c00066f4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00066f8:	75 b8                	jne    c00066b2 <hd_busy+0xf>
c00066fa:	b8 00 00 00 00       	mov    $0x0,%eax
c00066ff:	c9                   	leave  
c0006700:	c3                   	ret    

c0006701 <read_hd>:
c0006701:	55                   	push   %ebp
c0006702:	89 e5                	mov    %esp,%ebp
c0006704:	83 ec 18             	sub    $0x18,%esp
c0006707:	8b 45 08             	mov    0x8(%ebp),%eax
c000670a:	8b 40 10             	mov    0x10(%eax),%eax
c000670d:	83 c0 14             	add    $0x14,%eax
c0006710:	89 04 24             	mov    %eax,(%esp)
c0006713:	e8 eb ea ff ff       	call   c0005203 <lock>
c0006718:	8b 45 08             	mov    0x8(%ebp),%eax
c000671b:	89 04 24             	mov    %eax,(%esp)
c000671e:	e8 0d fe ff ff       	call   c0006530 <select_disk>
c0006723:	8b 45 14             	mov    0x14(%ebp),%eax
c0006726:	0f b6 c0             	movzbl %al,%eax
c0006729:	89 44 24 08          	mov    %eax,0x8(%esp)
c000672d:	8b 45 10             	mov    0x10(%ebp),%eax
c0006730:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006734:	8b 45 08             	mov    0x8(%ebp),%eax
c0006737:	89 04 24             	mov    %eax,(%esp)
c000673a:	e8 42 fe ff ff       	call   c0006581 <select_sector>
c000673f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006742:	8b 40 10             	mov    0x10(%eax),%eax
c0006745:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c000674c:	00 
c000674d:	89 04 24             	mov    %eax,(%esp)
c0006750:	e8 1a ff ff ff       	call   c000666f <send_cmd>
c0006755:	8b 45 08             	mov    0x8(%ebp),%eax
c0006758:	8b 40 10             	mov    0x10(%eax),%eax
c000675b:	83 c0 28             	add    $0x28,%eax
c000675e:	89 04 24             	mov    %eax,(%esp)
c0006761:	e8 5b e9 ff ff       	call   c00050c1 <sema_down>
c0006766:	8b 45 08             	mov    0x8(%ebp),%eax
c0006769:	89 04 24             	mov    %eax,(%esp)
c000676c:	e8 32 ff ff ff       	call   c00066a3 <hd_busy>
c0006771:	85 c0                	test   %eax,%eax
c0006773:	75 33                	jne    c00067a8 <read_hd+0xa7>
c0006775:	8b 45 08             	mov    0x8(%ebp),%eax
c0006778:	8b 40 10             	mov    0x10(%eax),%eax
c000677b:	89 c2                	mov    %eax,%edx
c000677d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006780:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006784:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006788:	c7 04 24 31 77 00 c0 	movl   $0xc0007731,(%esp)
c000678f:	e8 e2 07 00 00       	call   c0006f76 <__printk>
c0006794:	8b 45 10             	mov    0x10(%ebp),%eax
c0006797:	89 44 24 04          	mov    %eax,0x4(%esp)
c000679b:	c7 04 24 49 77 00 c0 	movl   $0xc0007749,(%esp)
c00067a2:	e8 cf 07 00 00       	call   c0006f76 <__printk>
c00067a7:	f4                   	hlt    
c00067a8:	8b 45 14             	mov    0x14(%ebp),%eax
c00067ab:	c1 e0 09             	shl    $0x9,%eax
c00067ae:	c1 e8 03             	shr    $0x3,%eax
c00067b1:	89 c2                	mov    %eax,%edx
c00067b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00067b6:	8b 40 10             	mov    0x10(%eax),%eax
c00067b9:	8b 40 08             	mov    0x8(%eax),%eax
c00067bc:	0f b7 c0             	movzwl %ax,%eax
c00067bf:	89 54 24 08          	mov    %edx,0x8(%esp)
c00067c3:	8b 55 0c             	mov    0xc(%ebp),%edx
c00067c6:	89 54 24 04          	mov    %edx,0x4(%esp)
c00067ca:	89 04 24             	mov    %eax,(%esp)
c00067cd:	e8 ac fb ff ff       	call   c000637e <read_wordstream>
c00067d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00067d5:	8b 40 10             	mov    0x10(%eax),%eax
c00067d8:	83 c0 14             	add    $0x14,%eax
c00067db:	89 04 24             	mov    %eax,(%esp)
c00067de:	e8 76 ea ff ff       	call   c0005259 <unlock>
c00067e3:	c9                   	leave  
c00067e4:	c3                   	ret    

c00067e5 <write_hd>:
c00067e5:	55                   	push   %ebp
c00067e6:	89 e5                	mov    %esp,%ebp
c00067e8:	83 ec 18             	sub    $0x18,%esp
c00067eb:	8b 45 08             	mov    0x8(%ebp),%eax
c00067ee:	8b 40 10             	mov    0x10(%eax),%eax
c00067f1:	83 c0 14             	add    $0x14,%eax
c00067f4:	89 04 24             	mov    %eax,(%esp)
c00067f7:	e8 07 ea ff ff       	call   c0005203 <lock>
c00067fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00067ff:	89 04 24             	mov    %eax,(%esp)
c0006802:	e8 29 fd ff ff       	call   c0006530 <select_disk>
c0006807:	8b 45 14             	mov    0x14(%ebp),%eax
c000680a:	c1 e8 09             	shr    $0x9,%eax
c000680d:	0f b6 c0             	movzbl %al,%eax
c0006810:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006814:	8b 45 10             	mov    0x10(%ebp),%eax
c0006817:	89 44 24 04          	mov    %eax,0x4(%esp)
c000681b:	8b 45 08             	mov    0x8(%ebp),%eax
c000681e:	89 04 24             	mov    %eax,(%esp)
c0006821:	e8 5b fd ff ff       	call   c0006581 <select_sector>
c0006826:	8b 45 08             	mov    0x8(%ebp),%eax
c0006829:	8b 40 10             	mov    0x10(%eax),%eax
c000682c:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%esp)
c0006833:	00 
c0006834:	89 04 24             	mov    %eax,(%esp)
c0006837:	e8 33 fe ff ff       	call   c000666f <send_cmd>
c000683c:	8b 45 08             	mov    0x8(%ebp),%eax
c000683f:	8b 40 10             	mov    0x10(%eax),%eax
c0006842:	83 c0 28             	add    $0x28,%eax
c0006845:	89 04 24             	mov    %eax,(%esp)
c0006848:	e8 74 e8 ff ff       	call   c00050c1 <sema_down>
c000684d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006850:	89 04 24             	mov    %eax,(%esp)
c0006853:	e8 4b fe ff ff       	call   c00066a3 <hd_busy>
c0006858:	85 c0                	test   %eax,%eax
c000685a:	75 33                	jne    c000688f <write_hd+0xaa>
c000685c:	8b 45 08             	mov    0x8(%ebp),%eax
c000685f:	8b 40 10             	mov    0x10(%eax),%eax
c0006862:	89 c2                	mov    %eax,%edx
c0006864:	8b 45 08             	mov    0x8(%ebp),%eax
c0006867:	89 54 24 08          	mov    %edx,0x8(%esp)
c000686b:	89 44 24 04          	mov    %eax,0x4(%esp)
c000686f:	c7 04 24 31 77 00 c0 	movl   $0xc0007731,(%esp)
c0006876:	e8 fb 06 00 00       	call   c0006f76 <__printk>
c000687b:	8b 45 10             	mov    0x10(%ebp),%eax
c000687e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006882:	c7 04 24 61 77 00 c0 	movl   $0xc0007761,(%esp)
c0006889:	e8 e8 06 00 00       	call   c0006f76 <__printk>
c000688e:	f4                   	hlt    
c000688f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006892:	8b 40 10             	mov    0x10(%eax),%eax
c0006895:	8b 40 08             	mov    0x8(%eax),%eax
c0006898:	0f b7 c0             	movzwl %ax,%eax
c000689b:	8b 55 14             	mov    0x14(%ebp),%edx
c000689e:	89 54 24 08          	mov    %edx,0x8(%esp)
c00068a2:	8b 55 0c             	mov    0xc(%ebp),%edx
c00068a5:	89 54 24 04          	mov    %edx,0x4(%esp)
c00068a9:	89 04 24             	mov    %eax,(%esp)
c00068ac:	e8 18 fb ff ff       	call   c00063c9 <write_wordstream>
c00068b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00068b4:	8b 40 10             	mov    0x10(%eax),%eax
c00068b7:	83 c0 14             	add    $0x14,%eax
c00068ba:	89 04 24             	mov    %eax,(%esp)
c00068bd:	e8 97 e9 ff ff       	call   c0005259 <unlock>
c00068c2:	c9                   	leave  
c00068c3:	c3                   	ret    

c00068c4 <word_reverse>:
c00068c4:	55                   	push   %ebp
c00068c5:	89 e5                	mov    %esp,%ebp
c00068c7:	83 ec 10             	sub    $0x10,%esp
c00068ca:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00068d1:	eb 3b                	jmp    c000690e <word_reverse+0x4a>
c00068d3:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00068d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00068d9:	01 d0                	add    %edx,%eax
c00068db:	0f b6 00             	movzbl (%eax),%eax
c00068de:	88 45 fb             	mov    %al,-0x5(%ebp)
c00068e1:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00068e4:	8b 45 08             	mov    0x8(%ebp),%eax
c00068e7:	01 c2                	add    %eax,%edx
c00068e9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00068ec:	8d 48 01             	lea    0x1(%eax),%ecx
c00068ef:	8b 45 08             	mov    0x8(%ebp),%eax
c00068f2:	01 c8                	add    %ecx,%eax
c00068f4:	0f b6 00             	movzbl (%eax),%eax
c00068f7:	88 02                	mov    %al,(%edx)
c00068f9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00068fc:	8d 50 01             	lea    0x1(%eax),%edx
c00068ff:	8b 45 08             	mov    0x8(%ebp),%eax
c0006902:	01 c2                	add    %eax,%edx
c0006904:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c0006908:	88 02                	mov    %al,(%edx)
c000690a:	83 45 fc 02          	addl   $0x2,-0x4(%ebp)
c000690e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006911:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0006914:	7c bd                	jl     c00068d3 <word_reverse+0xf>
c0006916:	c9                   	leave  
c0006917:	c3                   	ret    

c0006918 <hd_intr>:
c0006918:	55                   	push   %ebp
c0006919:	89 e5                	mov    %esp,%ebp
c000691b:	83 ec 28             	sub    $0x28,%esp
c000691e:	66 8b 45 08          	mov    0x8(%ebp),%ax
c0006922:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0006925:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006928:	83 e8 2e             	sub    $0x2e,%eax
c000692b:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c0006931:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c0006936:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0006939:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000693c:	8b 40 10             	mov    0x10(%eax),%eax
c000693f:	85 c0                	test   %eax,%eax
c0006941:	74 18                	je     c000695b <hd_intr+0x43>
c0006943:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006946:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c000694d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006950:	83 c0 28             	add    $0x28,%eax
c0006953:	89 04 24             	mov    %eax,(%esp)
c0006956:	e8 4f e8 ff ff       	call   c00051aa <sema_up>
c000695b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000695e:	8b 40 08             	mov    0x8(%eax),%eax
c0006961:	83 c0 07             	add    $0x7,%eax
c0006964:	0f b7 c0             	movzwl %ax,%eax
c0006967:	89 04 24             	mov    %eax,(%esp)
c000696a:	e8 f0 f9 ff ff       	call   c000635f <read_port>
c000696f:	c9                   	leave  
c0006970:	c3                   	ret    

c0006971 <disk_init>:
c0006971:	55                   	push   %ebp
c0006972:	89 e5                	mov    %esp,%ebp
c0006974:	83 ec 28             	sub    $0x28,%esp
c0006977:	b8 75 04 00 00       	mov    $0x475,%eax
c000697c:	0f b6 00             	movzbl (%eax),%eax
c000697f:	88 45 f6             	mov    %al,-0xa(%ebp)
c0006982:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
c0006986:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
c000698a:	89 44 24 04          	mov    %eax,0x4(%esp)
c000698e:	c7 04 24 78 77 00 c0 	movl   $0xc0007778,(%esp)
c0006995:	e8 dc 05 00 00       	call   c0006f76 <__printk>
c000699a:	e9 dd 00 00 00       	jmp    c0006a7c <disk_init+0x10b>
c000699f:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c00069a3:	89 c2                	mov    %eax,%edx
c00069a5:	c0 ea 07             	shr    $0x7,%dl
c00069a8:	01 d0                	add    %edx,%eax
c00069aa:	d0 f8                	sar    %al
c00069ac:	0f be c0             	movsbl %al,%eax
c00069af:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c00069b5:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c00069ba:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00069bd:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c00069c1:	89 c2                	mov    %eax,%edx
c00069c3:	c0 fa 07             	sar    $0x7,%dl
c00069c6:	c0 ea 07             	shr    $0x7,%dl
c00069c9:	01 d0                	add    %edx,%eax
c00069cb:	83 e0 01             	and    $0x1,%eax
c00069ce:	29 d0                	sub    %edx,%eax
c00069d0:	0f be c0             	movsbl %al,%eax
c00069d3:	69 c0 c8 01 00 00    	imul   $0x1c8,%eax,%eax
c00069d9:	8d 50 30             	lea    0x30(%eax),%edx
c00069dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00069df:	01 d0                	add    %edx,%eax
c00069e1:	83 c0 04             	add    $0x4,%eax
c00069e4:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00069e7:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00069ea:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00069ed:	89 50 10             	mov    %edx,0x10(%eax)
c00069f0:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c00069f4:	89 c2                	mov    %eax,%edx
c00069f6:	c0 fa 07             	sar    $0x7,%dl
c00069f9:	c0 ea 07             	shr    $0x7,%dl
c00069fc:	01 d0                	add    %edx,%eax
c00069fe:	83 e0 01             	and    $0x1,%eax
c0006a01:	29 d0                	sub    %edx,%eax
c0006a03:	89 c2                	mov    %eax,%edx
c0006a05:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a08:	88 50 14             	mov    %dl,0x14(%eax)
c0006a0b:	c7 45 e8 86 77 00 c0 	movl   $0xc0007786,-0x18(%ebp)
c0006a12:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a15:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
c0006a1c:	00 
c0006a1d:	8b 55 e8             	mov    -0x18(%ebp),%edx
c0006a20:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006a24:	89 04 24             	mov    %eax,(%esp)
c0006a27:	e8 3e cd ff ff       	call   c000376a <memcopy>
c0006a2c:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006a30:	83 c0 61             	add    $0x61,%eax
c0006a33:	89 c2                	mov    %eax,%edx
c0006a35:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a38:	88 50 02             	mov    %dl,0x2(%eax)
c0006a3b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a3e:	c6 40 03 00          	movb   $0x0,0x3(%eax)
c0006a42:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a45:	89 04 24             	mov    %eax,(%esp)
c0006a48:	e8 74 00 00 00       	call   c0006ac1 <identify_disk>
c0006a4d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a50:	89 04 24             	mov    %eax,(%esp)
c0006a53:	e8 0d 02 00 00       	call   c0006c65 <read_partition>
c0006a58:	c7 04 24 8c 77 00 c0 	movl   $0xc000778c,(%esp)
c0006a5f:	e8 12 05 00 00       	call   c0006f76 <__printk>
c0006a64:	c7 44 24 04 8b 6a 00 	movl   $0xc0006a8b,0x4(%esp)
c0006a6b:	c0 
c0006a6c:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006a73:	e8 97 e5 ff ff       	call   c000500f <lst_traverse>
c0006a78:	80 45 f7 01          	addb   $0x1,-0x9(%ebp)
c0006a7c:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006a80:	3a 45 f6             	cmp    -0xa(%ebp),%al
c0006a83:	0f 8c 16 ff ff ff    	jl     c000699f <disk_init+0x2e>
c0006a89:	c9                   	leave  
c0006a8a:	c3                   	ret    

c0006a8b <out_partition>:
c0006a8b:	55                   	push   %ebp
c0006a8c:	89 e5                	mov    %esp,%ebp
c0006a8e:	83 ec 28             	sub    $0x28,%esp
c0006a91:	c7 45 f4 f8 ff ff ff 	movl   $0xfffffff8,-0xc(%ebp)
c0006a98:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006a9b:	8b 48 14             	mov    0x14(%eax),%ecx
c0006a9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006aa1:	8b 50 10             	mov    0x10(%eax),%edx
c0006aa4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006aa7:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c0006aab:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006aaf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006ab3:	c7 04 24 b3 77 00 c0 	movl   $0xc00077b3,(%esp)
c0006aba:	e8 b7 04 00 00       	call   c0006f76 <__printk>
c0006abf:	c9                   	leave  
c0006ac0:	c3                   	ret    

c0006ac1 <identify_disk>:
c0006ac1:	55                   	push   %ebp
c0006ac2:	89 e5                	mov    %esp,%ebp
c0006ac4:	81 ec 68 02 00 00    	sub    $0x268,%esp
c0006aca:	c7 04 24 6a 78 00 c0 	movl   $0xc000786a,(%esp)
c0006ad1:	e8 2f ca ff ff       	call   c0003505 <put_str>
c0006ad6:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0006add:	e8 9e c8 ff ff       	call   c0003380 <put_char>
c0006ae2:	8b 45 08             	mov    0x8(%ebp),%eax
c0006ae5:	8b 40 10             	mov    0x10(%eax),%eax
c0006ae8:	83 c0 14             	add    $0x14,%eax
c0006aeb:	89 04 24             	mov    %eax,(%esp)
c0006aee:	e8 10 e7 ff ff       	call   c0005203 <lock>
c0006af3:	8b 45 08             	mov    0x8(%ebp),%eax
c0006af6:	89 04 24             	mov    %eax,(%esp)
c0006af9:	e8 32 fa ff ff       	call   c0006530 <select_disk>
c0006afe:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b01:	8b 40 10             	mov    0x10(%eax),%eax
c0006b04:	c7 44 24 04 ec 00 00 	movl   $0xec,0x4(%esp)
c0006b0b:	00 
c0006b0c:	89 04 24             	mov    %eax,(%esp)
c0006b0f:	e8 5b fb ff ff       	call   c000666f <send_cmd>
c0006b14:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b17:	8b 40 10             	mov    0x10(%eax),%eax
c0006b1a:	83 c0 28             	add    $0x28,%eax
c0006b1d:	89 04 24             	mov    %eax,(%esp)
c0006b20:	e8 9c e5 ff ff       	call   c00050c1 <sema_down>
c0006b25:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b28:	89 04 24             	mov    %eax,(%esp)
c0006b2b:	e8 73 fb ff ff       	call   c00066a3 <hd_busy>
c0006b30:	85 c0                	test   %eax,%eax
c0006b32:	75 20                	jne    c0006b54 <identify_disk+0x93>
c0006b34:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b37:	8b 40 10             	mov    0x10(%eax),%eax
c0006b3a:	89 c2                	mov    %eax,%edx
c0006b3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b3f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006b43:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006b47:	c7 04 24 31 77 00 c0 	movl   $0xc0007731,(%esp)
c0006b4e:	e8 23 04 00 00       	call   c0006f76 <__printk>
c0006b53:	f4                   	hlt    
c0006b54:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b57:	8b 40 10             	mov    0x10(%eax),%eax
c0006b5a:	8b 40 08             	mov    0x8(%eax),%eax
c0006b5d:	0f b7 c0             	movzwl %ax,%eax
c0006b60:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
c0006b67:	00 
c0006b68:	8d 95 f6 fd ff ff    	lea    -0x20a(%ebp),%edx
c0006b6e:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006b72:	89 04 24             	mov    %eax,(%esp)
c0006b75:	e8 04 f8 ff ff       	call   c000637e <read_wordstream>
c0006b7a:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
c0006b81:	00 
c0006b82:	8d 85 f6 fd ff ff    	lea    -0x20a(%ebp),%eax
c0006b88:	89 04 24             	mov    %eax,(%esp)
c0006b8b:	e8 34 fd ff ff       	call   c00068c4 <word_reverse>
c0006b90:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b93:	8b 40 10             	mov    0x10(%eax),%eax
c0006b96:	83 c0 14             	add    $0x14,%eax
c0006b99:	89 04 24             	mov    %eax,(%esp)
c0006b9c:	e8 b8 e6 ff ff       	call   c0005259 <unlock>
c0006ba1:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0006ba8:	00 
c0006ba9:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0006bb0:	00 
c0006bb1:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006bb7:	89 04 24             	mov    %eax,(%esp)
c0006bba:	e8 ee ca ff ff       	call   c00036ad <memset_8>
c0006bbf:	8b 45 08             	mov    0x8(%ebp),%eax
c0006bc2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006bc6:	c7 04 24 c0 77 00 c0 	movl   $0xc00077c0,(%esp)
c0006bcd:	e8 a4 03 00 00       	call   c0006f76 <__printk>
c0006bd2:	c7 44 24 08 14 00 00 	movl   $0x14,0x8(%esp)
c0006bd9:	00 
c0006bda:	8d 85 f6 fd ff ff    	lea    -0x20a(%ebp),%eax
c0006be0:	83 c0 14             	add    $0x14,%eax
c0006be3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006be7:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006bed:	89 04 24             	mov    %eax,(%esp)
c0006bf0:	e8 75 cb ff ff       	call   c000376a <memcopy>
c0006bf5:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006bfb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006bff:	c7 04 24 d0 77 00 c0 	movl   $0xc00077d0,(%esp)
c0006c06:	e8 6b 03 00 00       	call   c0006f76 <__printk>
c0006c0b:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
c0006c12:	00 
c0006c13:	8d 85 f6 fd ff ff    	lea    -0x20a(%ebp),%eax
c0006c19:	83 c0 36             	add    $0x36,%eax
c0006c1c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c20:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006c26:	89 04 24             	mov    %eax,(%esp)
c0006c29:	e8 3c cb ff ff       	call   c000376a <memcopy>
c0006c2e:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006c34:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c38:	c7 04 24 d7 77 00 c0 	movl   $0xc00077d7,(%esp)
c0006c3f:	e8 32 03 00 00       	call   c0006f76 <__printk>
c0006c44:	0f b7 85 6e fe ff ff 	movzwl -0x192(%ebp),%eax
c0006c4b:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c0006c4f:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0006c53:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c57:	c7 04 24 e3 77 00 c0 	movl   $0xc00077e3,(%esp)
c0006c5e:	e8 13 03 00 00       	call   c0006f76 <__printk>
c0006c63:	c9                   	leave  
c0006c64:	c3                   	ret    

c0006c65 <read_partition>:
c0006c65:	55                   	push   %ebp
c0006c66:	89 e5                	mov    %esp,%ebp
c0006c68:	81 ec 38 02 00 00    	sub    $0x238,%esp
c0006c6e:	c7 04 24 78 78 00 c0 	movl   $0xc0007878,(%esp)
c0006c75:	e8 8b c8 ff ff       	call   c0003505 <put_str>
c0006c7a:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0006c81:	e8 fa c6 ff ff       	call   c0003380 <put_char>
c0006c86:	c6 05 00 b2 00 c0 00 	movb   $0x0,0xc000b200
c0006c8d:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0006c94:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0006c9b:	c6 45 eb 00          	movb   $0x0,-0x15(%ebp)
c0006c9f:	c6 45 ea 00          	movb   $0x0,-0x16(%ebp)
c0006ca3:	e9 88 01 00 00       	jmp    c0006e30 <read_partition+0x1cb>
c0006ca8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0006caf:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0006cb6:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
c0006cbd:	00 
c0006cbe:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006cc1:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006cc5:	8d 85 e0 fd ff ff    	lea    -0x220(%ebp),%eax
c0006ccb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006ccf:	8b 45 08             	mov    0x8(%ebp),%eax
c0006cd2:	89 04 24             	mov    %eax,(%esp)
c0006cd5:	e8 27 fa ff ff       	call   c0006701 <read_hd>
c0006cda:	e9 47 01 00 00       	jmp    c0006e26 <read_partition+0x1c1>
c0006cdf:	8d 85 e0 fd ff ff    	lea    -0x220(%ebp),%eax
c0006ce5:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0006ce8:	83 c2 1c             	add    $0x1c,%edx
c0006ceb:	c1 e2 04             	shl    $0x4,%edx
c0006cee:	01 d0                	add    %edx,%eax
c0006cf0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0006cf3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006cf6:	0f b6 40 04          	movzbl 0x4(%eax),%eax
c0006cfa:	3c 05                	cmp    $0x5,%al
c0006cfc:	75 15                	jne    c0006d13 <read_partition+0xae>
c0006cfe:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0006d05:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006d08:	8b 40 08             	mov    0x8(%eax),%eax
c0006d0b:	01 45 ec             	add    %eax,-0x14(%ebp)
c0006d0e:	e9 0f 01 00 00       	jmp    c0006e22 <read_partition+0x1bd>
c0006d13:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006d16:	0f b6 40 04          	movzbl 0x4(%eax),%eax
c0006d1a:	84 c0                	test   %al,%al
c0006d1c:	0f 84 00 01 00 00    	je     c0006e22 <read_partition+0x1bd>
c0006d22:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006d25:	0f b6 40 02          	movzbl 0x2(%eax),%eax
c0006d29:	84 c0                	test   %al,%al
c0006d2b:	75 7a                	jne    c0006da7 <read_partition+0x142>
c0006d2d:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006d31:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0006d34:	89 d0                	mov    %edx,%eax
c0006d36:	c1 e0 03             	shl    $0x3,%eax
c0006d39:	01 d0                	add    %edx,%eax
c0006d3b:	c1 e0 02             	shl    $0x2,%eax
c0006d3e:	01 c8                	add    %ecx,%eax
c0006d40:	83 c0 30             	add    $0x30,%eax
c0006d43:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0006d49:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006d4d:	89 d0                	mov    %edx,%eax
c0006d4f:	c1 e0 03             	shl    $0x3,%eax
c0006d52:	01 d0                	add    %edx,%eax
c0006d54:	c1 e0 02             	shl    $0x2,%eax
c0006d57:	8d 50 10             	lea    0x10(%eax),%edx
c0006d5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d5d:	01 d0                	add    %edx,%eax
c0006d5f:	8d 50 08             	lea    0x8(%eax),%edx
c0006d62:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d65:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006d69:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006d6c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006d70:	89 14 24             	mov    %edx,(%esp)
c0006d73:	e8 ec 00 00 00       	call   c0006e64 <partition_init>
c0006d78:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006d7c:	89 d0                	mov    %edx,%eax
c0006d7e:	c1 e0 03             	shl    $0x3,%eax
c0006d81:	01 d0                	add    %edx,%eax
c0006d83:	c1 e0 02             	shl    $0x2,%eax
c0006d86:	8d 50 10             	lea    0x10(%eax),%edx
c0006d89:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d8c:	01 d0                	add    %edx,%eax
c0006d8e:	83 c0 10             	add    $0x10,%eax
c0006d91:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006d95:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006d9c:	e8 72 de ff ff       	call   c0004c13 <lst_push>
c0006da1:	80 45 eb 01          	addb   $0x1,-0x15(%ebp)
c0006da5:	eb 7b                	jmp    c0006e22 <read_partition+0x1bd>
c0006da7:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006dab:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0006dae:	89 d0                	mov    %edx,%eax
c0006db0:	c1 e0 03             	shl    $0x3,%eax
c0006db3:	01 d0                	add    %edx,%eax
c0006db5:	c1 e0 02             	shl    $0x2,%eax
c0006db8:	01 c8                	add    %ecx,%eax
c0006dba:	83 c0 30             	add    $0x30,%eax
c0006dbd:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0006dc3:	0f b6 55 ea          	movzbl -0x16(%ebp),%edx
c0006dc7:	89 d0                	mov    %edx,%eax
c0006dc9:	c1 e0 03             	shl    $0x3,%eax
c0006dcc:	01 d0                	add    %edx,%eax
c0006dce:	c1 e0 02             	shl    $0x2,%eax
c0006dd1:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
c0006dd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0006dda:	01 d0                	add    %edx,%eax
c0006ddc:	8d 50 08             	lea    0x8(%eax),%edx
c0006ddf:	8b 45 08             	mov    0x8(%ebp),%eax
c0006de2:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006de6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006de9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006ded:	89 14 24             	mov    %edx,(%esp)
c0006df0:	e8 6f 00 00 00       	call   c0006e64 <partition_init>
c0006df5:	0f b6 55 ea          	movzbl -0x16(%ebp),%edx
c0006df9:	89 d0                	mov    %edx,%eax
c0006dfb:	c1 e0 03             	shl    $0x3,%eax
c0006dfe:	01 d0                	add    %edx,%eax
c0006e00:	c1 e0 02             	shl    $0x2,%eax
c0006e03:	8d 50 10             	lea    0x10(%eax),%edx
c0006e06:	8b 45 08             	mov    0x8(%ebp),%eax
c0006e09:	01 d0                	add    %edx,%eax
c0006e0b:	83 c0 10             	add    $0x10,%eax
c0006e0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006e12:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006e19:	e8 f5 dd ff ff       	call   c0004c13 <lst_push>
c0006e1e:	80 45 ea 01          	addb   $0x1,-0x16(%ebp)
c0006e22:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0006e26:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
c0006e2a:	0f 8e af fe ff ff    	jle    c0006cdf <read_partition+0x7a>
c0006e30:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0006e34:	0f 85 6e fe ff ff    	jne    c0006ca8 <read_partition+0x43>
c0006e3a:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0006e3e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006e42:	c7 04 24 ef 77 00 c0 	movl   $0xc00077ef,(%esp)
c0006e49:	e8 28 01 00 00       	call   c0006f76 <__printk>
c0006e4e:	0f b6 45 ea          	movzbl -0x16(%ebp),%eax
c0006e52:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006e56:	c7 04 24 ff 77 00 c0 	movl   $0xc00077ff,(%esp)
c0006e5d:	e8 14 01 00 00       	call   c0006f76 <__printk>
c0006e62:	c9                   	leave  
c0006e63:	c3                   	ret    

c0006e64 <partition_init>:
c0006e64:	55                   	push   %ebp
c0006e65:	89 e5                	mov    %esp,%ebp
c0006e67:	83 ec 28             	sub    $0x28,%esp
c0006e6a:	c7 04 24 87 78 00 c0 	movl   $0xc0007887,(%esp)
c0006e71:	e8 8f c6 ff ff       	call   c0003505 <put_str>
c0006e76:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0006e7d:	e8 fe c4 ff ff       	call   c0003380 <put_char>
c0006e82:	0f b6 05 00 b2 00 c0 	movzbl 0xc000b200,%eax
c0006e89:	8d 50 01             	lea    0x1(%eax),%edx
c0006e8c:	88 15 00 b2 00 c0    	mov    %dl,0xc000b200
c0006e92:	0f be c0             	movsbl %al,%eax
c0006e95:	8d 48 30             	lea    0x30(%eax),%ecx
c0006e98:	8b 55 10             	mov    0x10(%ebp),%edx
c0006e9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0006e9e:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c0006ea2:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006ea6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006eaa:	c7 04 24 0f 78 00 c0 	movl   $0xc000780f,(%esp)
c0006eb1:	e8 00 ca ff ff       	call   c00038b6 <formative_str>
c0006eb6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0006eb9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006ebc:	89 04 24             	mov    %eax,(%esp)
c0006ebf:	e8 66 c9 ff ff       	call   c000382a <strlen>
c0006ec4:	8b 55 08             	mov    0x8(%ebp),%edx
c0006ec7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006ecb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006ece:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006ed2:	89 14 24             	mov    %edx,(%esp)
c0006ed5:	e8 90 c8 ff ff       	call   c000376a <memcopy>
c0006eda:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006edd:	0f b6 40 02          	movzbl 0x2(%eax),%eax
c0006ee1:	0f b6 d0             	movzbl %al,%edx
c0006ee4:	8b 45 08             	mov    0x8(%ebp),%eax
c0006ee7:	89 50 10             	mov    %edx,0x10(%eax)
c0006eea:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006eed:	0f b6 40 06          	movzbl 0x6(%eax),%eax
c0006ef1:	0f b6 d0             	movzbl %al,%edx
c0006ef4:	8b 45 08             	mov    0x8(%ebp),%eax
c0006ef7:	89 50 14             	mov    %edx,0x14(%eax)
c0006efa:	8b 45 08             	mov    0x8(%ebp),%eax
c0006efd:	8b 55 10             	mov    0x10(%ebp),%edx
c0006f00:	89 50 1c             	mov    %edx,0x1c(%eax)
c0006f03:	8b 45 08             	mov    0x8(%ebp),%eax
c0006f06:	83 c0 20             	add    $0x20,%eax
c0006f09:	89 04 24             	mov    %eax,(%esp)
c0006f0c:	e8 d3 c9 ff ff       	call   c00038e4 <init_bit_map>
c0006f11:	c9                   	leave  
c0006f12:	c3                   	ret    

c0006f13 <ide_init>:
c0006f13:	55                   	push   %ebp
c0006f14:	89 e5                	mov    %esp,%ebp
c0006f16:	83 ec 18             	sub    $0x18,%esp
c0006f19:	c7 04 24 14 78 00 c0 	movl   $0xc0007814,(%esp)
c0006f20:	e8 51 00 00 00       	call   c0006f76 <__printk>
c0006f25:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006f2c:	e8 ca dc ff ff       	call   c0004bfb <init_list>
c0006f31:	c7 04 24 24 78 00 c0 	movl   $0xc0007824,(%esp)
c0006f38:	e8 39 00 00 00       	call   c0006f76 <__printk>
c0006f3d:	e8 bb f4 ff ff       	call   c00063fd <channel_init>
c0006f42:	a1 2c b2 00 c0       	mov    0xc000b22c,%eax
c0006f47:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006f4b:	c7 04 24 38 78 00 c0 	movl   $0xc0007838,(%esp)
c0006f52:	e8 1f 00 00 00       	call   c0006f76 <__printk>
c0006f57:	c7 04 24 4a 78 00 c0 	movl   $0xc000784a,(%esp)
c0006f5e:	e8 13 00 00 00       	call   c0006f76 <__printk>
c0006f63:	e8 09 fa ff ff       	call   c0006971 <disk_init>
c0006f68:	c7 04 24 5b 78 00 c0 	movl   $0xc000785b,(%esp)
c0006f6f:	e8 02 00 00 00       	call   c0006f76 <__printk>
c0006f74:	c9                   	leave  
c0006f75:	c3                   	ret    

c0006f76 <__printk>:
c0006f76:	55                   	push   %ebp
c0006f77:	89 e5                	mov    %esp,%ebp
c0006f79:	83 ec 28             	sub    $0x28,%esp
c0006f7c:	8d 45 08             	lea    0x8(%ebp),%eax
c0006f7f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0006f82:	8b 45 08             	mov    0x8(%ebp),%eax
c0006f85:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0006f88:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006f8c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006f90:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0006f97:	e8 a8 ef ff ff       	call   c0005f44 <vsprintf>
c0006f9c:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0006fa3:	e8 1f e4 ff ff       	call   c00053c7 <console_put_str>
c0006fa8:	c9                   	leave  
c0006fa9:	c3                   	ret    
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

00000018 0000001c 0000001c FDE cie=00000000 pc=c0001500..c00015a9
  DW_CFA_advance_loc: 1 to c0001501
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001503
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 165 to c00015a8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000038 0000001c 0000003c FDE cie=00000000 pc=c00015a9..c00015d3
  DW_CFA_advance_loc: 1 to c00015aa
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00015ac
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 38 to c00015d2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000058 0000001c 0000005c FDE cie=00000000 pc=c00015d3..c00015ea
  DW_CFA_advance_loc: 1 to c00015d4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00015d6
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 19 to c00015e9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000078 0000001c 0000007c FDE cie=00000000 pc=c00015ea..c000162a
  DW_CFA_advance_loc: 1 to c00015eb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00015ed
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 60 to c0001629
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000098 0000001c 0000009c FDE cie=00000000 pc=c000162a..c0001693
  DW_CFA_advance_loc: 1 to c000162b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000162d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 101 to c0001692
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000000b8 0000001c 000000bc FDE cie=00000000 pc=c0001693..c0001796
  DW_CFA_advance_loc: 1 to c0001694
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001696
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 255 to c0001795
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000000d8 0000001c 000000dc FDE cie=00000000 pc=c0001796..c00017a8
  DW_CFA_advance_loc: 1 to c0001797
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001799
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 14 to c00017a7
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000000f8 0000001c 000000fc FDE cie=00000000 pc=c00017a8..c00017df
  DW_CFA_advance_loc: 1 to c00017a9
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00017ab
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 51 to c00017de
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000118 0000001c 0000011c FDE cie=00000000 pc=c00017df..c0001820
  DW_CFA_advance_loc: 1 to c00017e0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00017e2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 61 to c000181f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000138 0000001c 0000013c FDE cie=00000000 pc=c0001820..c00018f1
  DW_CFA_advance_loc: 1 to c0001821
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0001823
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 205 to c00018f0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000158 0000001c 0000015c FDE cie=00000000 pc=c00018f1..c000194c
  DW_CFA_advance_loc: 1 to c00018f2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00018f4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 87 to c000194b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000178 0000001c 0000017c FDE cie=00000000 pc=c000194c..c00019b0
  DW_CFA_advance_loc: 1 to c000194d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000194f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 96 to c00019af
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000198 00000024 0000019c FDE cie=00000000 pc=c00019b0..c0001a1b
  DW_CFA_advance_loc: 1 to c00019b1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00019b3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c00019b8
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 96 to c0001a18
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0001a19
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c0001a1a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000001c0 0000001c 000001c4 FDE cie=00000000 pc=c0003505..c000352e
  DW_CFA_advance_loc: 1 to c0003506
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003508
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 37 to c000352d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000001e0 0000001c 000001e4 FDE cie=00000000 pc=c000352e..c0003552
  DW_CFA_advance_loc: 1 to c000352f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003531
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 32 to c0003551
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000200 0000001c 00000204 FDE cie=00000000 pc=c0003552..c0003566
  DW_CFA_advance_loc: 1 to c0003553
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003555
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c0003565
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000220 0000001c 00000224 FDE cie=00000000 pc=c0003566..c000357a
  DW_CFA_advance_loc: 1 to c0003567
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003569
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c0003579
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000240 0000001c 00000244 FDE cie=00000000 pc=c000357a..c00035a0
  DW_CFA_advance_loc: 1 to c000357b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000357d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 34 to c000359f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000260 0000001c 00000264 FDE cie=00000000 pc=c00035a0..c0003660
  DW_CFA_advance_loc: 1 to c00035a1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00035a3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 188 to c000365f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000280 0000001c 00000284 FDE cie=00000000 pc=c0003660..c00036ad
  DW_CFA_advance_loc: 1 to c0003661
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003663
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 73 to c00036ac
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000002a0 0000001c 000002a4 FDE cie=00000000 pc=c00036ad..c000370f
  DW_CFA_advance_loc: 1 to c00036ae
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00036b0
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 94 to c000370e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000002c0 0000001c 000002c4 FDE cie=00000000 pc=c000370f..c000376a
  DW_CFA_advance_loc: 1 to c0003710
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003712
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 87 to c0003769
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000002e0 0000001c 000002e4 FDE cie=00000000 pc=c000376a..c00037da
  DW_CFA_advance_loc: 1 to c000376b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000376d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 108 to c00037d9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000300 0000001c 00000304 FDE cie=00000000 pc=c00037da..c000382a
  DW_CFA_advance_loc: 1 to c00037db
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00037dd
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 76 to c0003829
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000320 0000001c 00000324 FDE cie=00000000 pc=c000382a..c0003852
  DW_CFA_advance_loc: 1 to c000382b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000382d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 36 to c0003851
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000340 0000001c 00000344 FDE cie=00000000 pc=c0003852..c00038b6
  DW_CFA_advance_loc: 1 to c0003853
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003855
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 96 to c00038b5
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000360 0000001c 00000364 FDE cie=00000000 pc=c00038b6..c00038e4
  DW_CFA_advance_loc: 1 to c00038b7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038b9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 42 to c00038e3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000380 0000001c 00000384 FDE cie=00000000 pc=c00038e4..c00038e9
  DW_CFA_advance_loc: 1 to c00038e5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038e7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 1 to c00038e8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000003a0 00000020 000003a4 FDE cie=00000000 pc=c00038e9..c0003963
  DW_CFA_advance_loc: 1 to c00038ea
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038ec
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c00038f0
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 113 to c0003961
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0003962
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000003c4 00000024 000003c8 FDE cie=00000000 pc=c0003963..c0003a06
  DW_CFA_advance_loc: 1 to c0003964
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003966
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c000396b
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 152 to c0003a03
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0003a04
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c0003a05
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000003ec 00000024 000003f0 FDE cie=00000000 pc=c0003a06..c0003af9
  DW_CFA_advance_loc: 1 to c0003a07
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003a09
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0003a0e
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 232 to c0003af6
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0003af7
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c0003af8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000414 0000001c 00000418 FDE cie=00000000 pc=c0003af9..c0003b98
  DW_CFA_advance_loc: 1 to c0003afa
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003afc
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 155 to c0003b97
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000434 0000001c 00000438 FDE cie=00000000 pc=c0003b98..c0003c20
  DW_CFA_advance_loc: 1 to c0003b99
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003b9b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 132 to c0003c1f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000454 0000001c 00000458 FDE cie=00000000 pc=c0003c20..c0003c6f
  DW_CFA_advance_loc: 1 to c0003c21
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003c23
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 75 to c0003c6e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000474 0000001c 00000478 FDE cie=00000000 pc=c0003c6f..c0003d6c
  DW_CFA_advance_loc: 1 to c0003c70
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003c72
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 249 to c0003d6b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000494 0000001c 00000498 FDE cie=00000000 pc=c0003d6c..c0003e3c
  DW_CFA_advance_loc: 1 to c0003d6d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003d6f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 204 to c0003e3b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004b4 0000001c 000004b8 FDE cie=00000000 pc=c0003e3c..c0003f21
  DW_CFA_advance_loc: 1 to c0003e3d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003e3f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 225 to c0003f20
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004d4 0000001c 000004d8 FDE cie=00000000 pc=c0003f21..c0003f68
  DW_CFA_advance_loc: 1 to c0003f22
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003f24
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 67 to c0003f67
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004f4 0000001c 000004f8 FDE cie=00000000 pc=c0003f68..c0004095
  DW_CFA_advance_loc: 1 to c0003f69
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003f6b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 297 to c0004094
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000514 0000001c 00000518 FDE cie=00000000 pc=c0004095..c00040fd
  DW_CFA_advance_loc: 1 to c0004096
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004098
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 100 to c00040fc
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000534 0000001c 00000538 FDE cie=00000000 pc=c00040fd..c000428b
  DW_CFA_advance_loc: 1 to c00040fe
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004100
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 394 to c000428a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000554 0000001c 00000558 FDE cie=00000000 pc=c000428b..c00042f4
  DW_CFA_advance_loc: 1 to c000428c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000428e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 101 to c00042f3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000574 0000001c 00000578 FDE cie=00000000 pc=c00042f4..c00043a7
  DW_CFA_advance_loc: 1 to c00042f5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00042f7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 175 to c00043a6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000594 0000001c 00000598 FDE cie=00000000 pc=c00043a7..c000447b
  DW_CFA_advance_loc: 1 to c00043a8
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00043aa
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 208 to c000447a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000005b4 0000001c 000005b8 FDE cie=00000000 pc=c000447b..c000448e
  DW_CFA_advance_loc: 1 to c000447c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000447e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c000448d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000005d4 0000001c 000005d8 FDE cie=00000000 pc=c000448e..c00044a1
  DW_CFA_advance_loc: 1 to c000448f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004491
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c00044a0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000005f4 0000001c 000005f8 FDE cie=00000000 pc=c00044a1..c0004575
  DW_CFA_advance_loc: 1 to c00044a2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00044a4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 208 to c0004574
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000614 0000001c 00000618 FDE cie=00000000 pc=c0004575..c0004595
  DW_CFA_advance_loc: 1 to c0004576
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004578
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 28 to c0004594
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000634 0000001c 00000638 FDE cie=00000000 pc=c0004595..c0004608
  DW_CFA_advance_loc: 1 to c0004596
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004598
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 111 to c0004607
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000654 0000001c 00000658 FDE cie=00000000 pc=c0004608..c000461d
  DW_CFA_advance_loc: 1 to c0004609
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000460b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 17 to c000461c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000674 0000001c 00000678 FDE cie=00000000 pc=c000461d..c00047ea
  DW_CFA_advance_loc: 1 to c000461e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004620
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 457 to c00047e9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000694 0000001c 00000698 FDE cie=00000000 pc=c00047ea..c00047ef
  DW_CFA_advance_loc: 1 to c00047eb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00047ed
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 1 to c00047ee
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006b4 0000001c 000006b8 FDE cie=00000000 pc=c00047ef..c0004822
  DW_CFA_advance_loc: 1 to c00047f0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00047f2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 47 to c0004821
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006d4 0000001c 000006d8 FDE cie=00000000 pc=c0004822..c0004845
  DW_CFA_advance_loc: 1 to c0004823
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004825
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 31 to c0004844
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006f4 0000001c 000006f8 FDE cie=00000000 pc=c0004845..c0004879
  DW_CFA_advance_loc: 1 to c0004846
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004848
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c0004878
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000714 0000001c 00000718 FDE cie=00000000 pc=c0004879..c0004927
  DW_CFA_advance_loc: 1 to c000487a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000487c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 170 to c0004926
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000734 0000001c 00000738 FDE cie=00000000 pc=c0004927..c00049ba
  DW_CFA_advance_loc: 1 to c0004928
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000492a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 143 to c00049b9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000754 0000001c 00000758 FDE cie=00000000 pc=c00049ba..c0004a80
  DW_CFA_advance_loc: 1 to c00049bb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00049bd
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 194 to c0004a7f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000774 0000001c 00000778 FDE cie=00000000 pc=c0004a80..c0004ae4
  DW_CFA_advance_loc: 1 to c0004a81
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004a83
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 96 to c0004ae3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000794 00000018 00000798 FDE cie=00000000 pc=c0004ae4..c0004b13
  DW_CFA_advance_loc: 1 to c0004ae5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004ae7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000007b0 0000001c 000007b4 FDE cie=00000000 pc=c0004b13..c0004bb4
  DW_CFA_advance_loc: 1 to c0004b14
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004b16
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 157 to c0004bb3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000007d0 0000001c 000007d4 FDE cie=00000000 pc=c0004bb4..c0004bfb
  DW_CFA_advance_loc: 1 to c0004bb5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004bb7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 67 to c0004bfa
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000007f0 0000001c 000007f4 FDE cie=00000000 pc=c0004bfb..c0004c13
  DW_CFA_advance_loc: 1 to c0004bfc
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004bfe
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 20 to c0004c12
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000810 0000001c 00000814 FDE cie=00000000 pc=c0004c13..c0004d2c
  DW_CFA_advance_loc: 1 to c0004c14
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004c16
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 277 to c0004d2b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000830 0000001c 00000834 FDE cie=00000000 pc=c0004d2c..c0004dca
  DW_CFA_advance_loc: 1 to c0004d2d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004d2f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 154 to c0004dc9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000850 0000001c 00000854 FDE cie=00000000 pc=c0004dca..c0004e2f
  DW_CFA_advance_loc: 1 to c0004dcb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004dcd
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 97 to c0004e2e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000870 0000001c 00000874 FDE cie=00000000 pc=c0004e2f..c0004f05
  DW_CFA_advance_loc: 1 to c0004e30
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004e32
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 210 to c0004f04
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000890 0000001c 00000894 FDE cie=00000000 pc=c0004f05..c0004ffc
  DW_CFA_advance_loc: 1 to c0004f06
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004f08
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 243 to c0004ffb
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000008b0 0000001c 000008b4 FDE cie=00000000 pc=c0004ffc..c000500f
  DW_CFA_advance_loc: 1 to c0004ffd
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004fff
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c000500e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008d0 0000001c 000008d4 FDE cie=00000000 pc=c000500f..c000503b
  DW_CFA_advance_loc: 1 to c0005010
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005012
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 40 to c000503a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008f0 0000001c 000008f4 FDE cie=00000000 pc=c0005055..c0005092
  DW_CFA_advance_loc: 1 to c0005056
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005058
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 57 to c0005091
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000910 0000001c 00000914 FDE cie=00000000 pc=c0005092..c00050b4
  DW_CFA_advance_loc: 1 to c0005093
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005095
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 30 to c00050b3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000930 0000001c 00000934 FDE cie=00000000 pc=c00050b4..c00050c1
  DW_CFA_advance_loc: 1 to c00050b5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00050b7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 9 to c00050c0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000950 0000001c 00000954 FDE cie=00000000 pc=c00050c1..c00051aa
  DW_CFA_advance_loc: 1 to c00050c2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00050c4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 229 to c00051a9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000970 0000001c 00000974 FDE cie=00000000 pc=c00051aa..c0005203
  DW_CFA_advance_loc: 1 to c00051ab
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00051ad
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 85 to c0005202
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000990 0000001c 00000994 FDE cie=00000000 pc=c0005203..c0005259
  DW_CFA_advance_loc: 1 to c0005204
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005206
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 82 to c0005258
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000009b0 0000001c 000009b4 FDE cie=00000000 pc=c0005259..c00052a4
  DW_CFA_advance_loc: 1 to c000525a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000525c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 71 to c00052a3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000009d0 0000001c 000009d4 FDE cie=00000000 pc=c00052a4..c0005330
  DW_CFA_advance_loc: 1 to c00052a5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00052a7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 136 to c000532f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000009f0 0000001c 000009f4 FDE cie=00000000 pc=c0005330..c00053b3
  DW_CFA_advance_loc: 1 to c0005331
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005333
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 127 to c00053b2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000a10 0000001c 00000a14 FDE cie=00000000 pc=c00053b3..c00053c7
  DW_CFA_advance_loc: 1 to c00053b4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00053b6
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c00053c6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a30 0000001c 00000a34 FDE cie=00000000 pc=c00053c7..c00053f2
  DW_CFA_advance_loc: 1 to c00053c8
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00053ca
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 39 to c00053f1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a50 0000001c 00000a54 FDE cie=00000000 pc=c00053f2..c0005424
  DW_CFA_advance_loc: 1 to c00053f3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00053f5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 46 to c0005423
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a70 0000001c 00000a74 FDE cie=00000000 pc=c0005424..c000544f
  DW_CFA_advance_loc: 1 to c0005425
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005427
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 39 to c000544e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a90 0000001c 00000a94 FDE cie=00000000 pc=c000544f..c000546e
  DW_CFA_advance_loc: 1 to c0005450
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005452
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 27 to c000546d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000ab0 0000001c 00000ab4 FDE cie=00000000 pc=c000546e..c000553b
  DW_CFA_advance_loc: 1 to c000546f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005471
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 201 to c000553a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000ad0 0000001c 00000ad4 FDE cie=00000000 pc=c000553b..c0005779
  DW_CFA_advance_loc: 1 to c000553c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000553e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 570 to c0005778
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000af0 0000001c 00000af4 FDE cie=00000000 pc=c0005779..c00057cb
  DW_CFA_advance_loc: 1 to c000577a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000577c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 78 to c00057ca
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b10 00000018 00000b14 FDE cie=00000000 pc=c00057cb..c000581a
  DW_CFA_advance_loc: 1 to c00057cc
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00057ce
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000b2c 0000001c 00000b30 FDE cie=00000000 pc=c000581a..c0005841
  DW_CFA_advance_loc: 1 to c000581b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000581d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 35 to c0005840
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000b4c 0000001c 00000b50 FDE cie=00000000 pc=c0005841..c00058a2
  DW_CFA_advance_loc: 1 to c0005842
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005844
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 93 to c00058a1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b6c 0000001c 00000b70 FDE cie=00000000 pc=c00058a2..c00058ee
  DW_CFA_advance_loc: 1 to c00058a3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00058a5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 72 to c00058ed
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b8c 0000001c 00000b90 FDE cie=00000000 pc=c00058ee..c000592a
  DW_CFA_advance_loc: 1 to c00058ef
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00058f1
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 54 to c0005927
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000bac 0000001c 00000bb0 FDE cie=00000000 pc=c000592a..c0005989
  DW_CFA_advance_loc: 1 to c000592b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000592d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 91 to c0005988
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000bcc 0000001c 00000bd0 FDE cie=00000000 pc=c0005989..c00059e6
  DW_CFA_advance_loc: 1 to c000598a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000598c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 89 to c00059e5
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000bec 0000001c 00000bf0 FDE cie=00000000 pc=c00059e6..c0005a31
  DW_CFA_advance_loc: 1 to c00059e7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00059e9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 71 to c0005a30
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000c0c 0000001c 00000c10 FDE cie=00000000 pc=c0005a31..c0005a52
  DW_CFA_advance_loc: 1 to c0005a32
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005a34
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 29 to c0005a51
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000c2c 0000001c 00000c30 FDE cie=00000000 pc=c0005a52..c0005a64
  DW_CFA_advance_loc: 1 to c0005a53
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005a55
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 14 to c0005a63
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000c4c 00000020 00000c50 FDE cie=00000000 pc=c0005a64..c0005b71
  DW_CFA_advance_loc: 1 to c0005a65
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005a67
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005a6b
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc2: 261 to c0005b70
  DW_CFA_restore: r5 (ebp)
  DW_CFA_restore: r3 (ebx)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000c70 0000001c 00000c74 FDE cie=00000000 pc=c0005b71..c0005bd0
  DW_CFA_advance_loc: 1 to c0005b72
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005b74
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 89 to c0005bcd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000c90 00000020 00000c94 FDE cie=00000000 pc=c0005bd0..c0005c19
  DW_CFA_advance_loc: 1 to c0005bd1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005bd3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005bd7
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 64 to c0005c17
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0005c18
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000cb4 0000001c 00000cb8 FDE cie=00000000 pc=c0005c19..c0005c68
  DW_CFA_advance_loc: 1 to c0005c1a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005c1c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 75 to c0005c67
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000cd4 0000001c 00000cd8 FDE cie=00000000 pc=c0005c68..c0005d9f
  DW_CFA_advance_loc: 1 to c0005c69
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005c6b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 307 to c0005d9e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000cf4 00000018 00000cf8 FDE cie=00000000 pc=c0005d9f..c0005e27
  DW_CFA_advance_loc: 1 to c0005da0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005da2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000d10 0000001c 00000d14 FDE cie=00000000 pc=c0005e27..c0005eb2
  DW_CFA_advance_loc: 1 to c0005e28
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005e2a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 135 to c0005eb1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000d30 0000001c 00000d34 FDE cie=00000000 pc=c0005eb2..c0005edf
  DW_CFA_advance_loc: 1 to c0005eb3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005eb5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 41 to c0005ede
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d50 0000001c 00000d54 FDE cie=00000000 pc=c0005edf..c0005eef
  DW_CFA_advance_loc: 1 to c0005ee0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005ee2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 12 to c0005eee
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d70 0000001c 00000d74 FDE cie=00000000 pc=c0005eef..c0005f0d
  DW_CFA_advance_loc: 1 to c0005ef0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005ef2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 26 to c0005f0c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d90 0000001c 00000d94 FDE cie=00000000 pc=c0005f0d..c0005f44
  DW_CFA_advance_loc: 1 to c0005f0e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005f10
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 51 to c0005f43
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000db0 0000001c 00000db4 FDE cie=00000000 pc=c0005f44..c000606e
  DW_CFA_advance_loc: 1 to c0005f45
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005f47
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 294 to c000606d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000dd0 00000020 00000dd4 FDE cie=00000000 pc=c000606e..c0006161
  DW_CFA_advance_loc: 1 to c000606f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006071
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0006075
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 234 to c000615f
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0006160
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000df4 0000001c 00000df8 FDE cie=00000000 pc=c0006161..c000621c
  DW_CFA_advance_loc: 1 to c0006162
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006164
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 183 to c000621b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000e14 00000020 00000e18 FDE cie=00000000 pc=c000621c..c000631c
  DW_CFA_advance_loc: 1 to c000621d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000621f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0006223
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 247 to c000631a
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c000631b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000e38 0000001c 00000e3c FDE cie=00000000 pc=c000631c..c0006331
  DW_CFA_advance_loc: 1 to c000631d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000631f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 17 to c0006330
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e58 0000001c 00000e5c FDE cie=00000000 pc=c0006331..c0006349
  DW_CFA_advance_loc: 1 to c0006332
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006334
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 20 to c0006348
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e78 0000001c 00000e7c FDE cie=00000000 pc=c0006349..c000635f
  DW_CFA_advance_loc: 1 to c000634a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000634c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 18 to c000635e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e98 0000001c 00000e9c FDE cie=00000000 pc=c000635f..c000637e
  DW_CFA_advance_loc: 1 to c0006360
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006362
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 27 to c000637d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000eb8 00000024 00000ebc FDE cie=00000000 pc=c000637e..c00063b2
  DW_CFA_advance_loc: 1 to c000637f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006381
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0006386
  DW_CFA_offset: r7 (edi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc: 41 to c00063af
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00063b0
  DW_CFA_restore: r7 (edi)
  DW_CFA_advance_loc: 1 to c00063b1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000ee0 0000001c 00000ee4 FDE cie=00000000 pc=c00063b2..c00063c9
  DW_CFA_advance_loc: 1 to c00063b3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00063b5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 19 to c00063c8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000f00 00000024 00000f04 FDE cie=00000000 pc=c00063c9..c00063fd
  DW_CFA_advance_loc: 1 to c00063ca
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00063cc
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c00063d1
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc: 41 to c00063fa
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00063fb
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c00063fc
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f28 0000001c 00000f2c FDE cie=00000000 pc=c00063fd..c0006530
  DW_CFA_advance_loc: 1 to c00063fe
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006400
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 303 to c000652f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000f48 0000001c 00000f4c FDE cie=00000000 pc=c0006530..c0006581
  DW_CFA_advance_loc: 1 to c0006531
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006533
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 77 to c0006580
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f68 0000001c 00000f6c FDE cie=00000000 pc=c0006581..c000666f
  DW_CFA_advance_loc: 1 to c0006582
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006584
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 234 to c000666e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f88 0000001c 00000f8c FDE cie=00000000 pc=c000666f..c00066a3
  DW_CFA_advance_loc: 1 to c0006670
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006672
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c00066a2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000fa8 0000001c 00000fac FDE cie=00000000 pc=c00066a3..c0006701
  DW_CFA_advance_loc: 1 to c00066a4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00066a6
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 90 to c0006700
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000fc8 0000001c 00000fcc FDE cie=00000000 pc=c0006701..c00067e5
  DW_CFA_advance_loc: 1 to c0006702
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006704
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 224 to c00067e4
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000fe8 0000001c 00000fec FDE cie=00000000 pc=c00067e5..c00068c4
  DW_CFA_advance_loc: 1 to c00067e6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00067e8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 219 to c00068c3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001008 0000001c 0000100c FDE cie=00000000 pc=c00068c4..c0006918
  DW_CFA_advance_loc: 1 to c00068c5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00068c7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 80 to c0006917
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001028 0000001c 0000102c FDE cie=00000000 pc=c0006918..c0006971
  DW_CFA_advance_loc: 1 to c0006919
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000691b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 85 to c0006970
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001048 0000001c 0000104c FDE cie=00000000 pc=c0006971..c0006a8b
  DW_CFA_advance_loc: 1 to c0006972
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006974
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 278 to c0006a8a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00001068 0000001c 0000106c FDE cie=00000000 pc=c0006a8b..c0006ac1
  DW_CFA_advance_loc: 1 to c0006a8c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006a8e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 50 to c0006ac0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00001088 0000001c 0000108c FDE cie=00000000 pc=c0006ac1..c0006c65
  DW_CFA_advance_loc: 1 to c0006ac2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006ac4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 416 to c0006c64
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000010a8 0000001c 000010ac FDE cie=00000000 pc=c0006c65..c0006e64
  DW_CFA_advance_loc: 1 to c0006c66
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006c68
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 507 to c0006e63
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000010c8 0000001c 000010cc FDE cie=00000000 pc=c0006e64..c0006f13
  DW_CFA_advance_loc: 1 to c0006e65
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006e67
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 171 to c0006f12
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000010e8 0000001c 000010ec FDE cie=00000000 pc=c0006f13..c0006f76
  DW_CFA_advance_loc: 1 to c0006f14
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006f16
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 95 to c0006f75
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001108 0000001c 0000110c FDE cie=00000000 pc=c0006f76..c0006faa
  DW_CFA_advance_loc: 1 to c0006f77
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006f79
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c0006fa9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

