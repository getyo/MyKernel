
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
c000151f:	c7 04 24 d4 6f 00 c0 	movl   $0xc0006fd4,(%esp)
c0001526:	e8 da 1f 00 00       	call   c0003505 <put_str>
c000152b:	e8 73 2e 00 00       	call   c00043a3 <init_pool>
c0001530:	c7 04 24 e0 6f 00 c0 	movl   $0xc0006fe0,(%esp)
c0001537:	e8 c9 1f 00 00       	call   c0003505 <put_str>
c000153c:	e8 3b 35 00 00       	call   c0004a7c <init_thread_list>
c0001541:	c7 04 24 ec 6f 00 c0 	movl   $0xc0006fec,(%esp)
c0001548:	e8 b8 1f 00 00       	call   c0003505 <put_str>
c000154d:	e8 71 3e 00 00       	call   c00053c3 <init_console>
c0001552:	c7 04 24 fa 6f 00 c0 	movl   $0xc0006ffa,(%esp)
c0001559:	e8 a7 1f 00 00       	call   c0003505 <put_str>
c000155e:	e8 1b 3f 00 00       	call   c000547e <init_keyboard>
c0001563:	c7 04 24 09 70 00 c0 	movl   $0xc0007009,(%esp)
c000156a:	e8 96 1f 00 00       	call   c0003505 <put_str>
c000156f:	e8 00 45 00 00       	call   c0005a74 <init_proc_data>
c0001574:	c7 04 24 19 70 00 c0 	movl   $0xc0007019,(%esp)
c000157b:	e8 57 3e 00 00       	call   c00053d7 <console_put_str>
c0001580:	c7 04 24 20 a7 00 c0 	movl   $0xc000a720,(%esp)
c0001587:	e8 05 2b 00 00       	call   c0004091 <mem_decs_init>
c000158c:	c7 04 24 25 70 00 c0 	movl   $0xc0007025,(%esp)
c0001593:	e8 3f 3e 00 00       	call   c00053d7 <console_put_str>
c0001598:	e8 9d 59 00 00       	call   c0006f3a <ide_init>
c000159d:	e8 b0 1f 00 00       	call   c0003552 <int_enable>
c00015a2:	b8 00 00 00 00       	mov    $0x0,%eax
c00015a7:	c9                   	leave  
c00015a8:	c3                   	ret    

c00015a9 <print>:
c00015a9:	55                   	push   %ebp
c00015aa:	89 e5                	mov    %esp,%ebp
c00015ac:	83 ec 28             	sub    $0x28,%esp
c00015af:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c00015b6:	e8 86 4d 00 00       	call   c0006341 <malloc>
c00015bb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00015be:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00015c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00015c5:	c7 04 24 30 70 00 c0 	movl   $0xc0007030,(%esp)
c00015cc:	e8 4c 49 00 00       	call   c0005f1d <printf>
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
c0001638:	e8 c7 2f 00 00       	call   c0004604 <get_running>
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
c0001674:	e8 a0 2f 00 00       	call   c0004619 <schedule>
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
c00016b3:	c7 04 85 e0 a7 00 c0 	movl   $0xc0007044,-0x3fff5820(,%eax,4)
c00016ba:	44 70 00 c0 
c00016be:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c00016c2:	81 7d fc 81 00 00 00 	cmpl   $0x81,-0x4(%ebp)
c00016c9:	7e d7                	jle    c00016a2 <idt_table_init+0xf>
c00016cb:	c7 05 a0 ae 00 c0 2a 	movl   $0xc000162a,0xc000aea0
c00016d2:	16 00 c0 
c00016d5:	c7 05 a4 ae 00 c0 4b 	movl   $0xc000554b,0xc000aea4
c00016dc:	55 00 c0 
c00016df:	c7 05 e0 a7 00 c0 4f 	movl   $0xc000704f,0xc000a7e0
c00016e6:	70 00 c0 
c00016e9:	c7 05 e4 a7 00 c0 60 	movl   $0xc0007060,0xc000a7e4
c00016f0:	70 00 c0 
c00016f3:	c7 05 ec a7 00 c0 6a 	movl   $0xc000706a,0xc000a7ec
c00016fa:	70 00 c0 
c00016fd:	c7 05 f0 a7 00 c0 7a 	movl   $0xc000707a,0xc000a7f0
c0001704:	70 00 c0 
c0001707:	c7 05 f4 a7 00 c0 87 	movl   $0xc0007087,0xc000a7f4
c000170e:	70 00 c0 
c0001711:	c7 05 f8 a7 00 c0 a0 	movl   $0xc00070a0,0xc000a7f8
c0001718:	70 00 c0 
c000171b:	c7 05 fc a7 00 c0 b3 	movl   $0xc00070b3,0xc000a7fc
c0001722:	70 00 c0 
c0001725:	c7 05 00 a8 00 c0 cc 	movl   $0xc00070cc,0xc000a800
c000172c:	70 00 c0 
c000172f:	c7 05 08 a8 00 c0 dd 	movl   $0xc00070dd,0xc000a808
c0001736:	70 00 c0 
c0001739:	c7 05 0c a8 00 c0 ed 	movl   $0xc00070ed,0xc000a80c
c0001740:	70 00 c0 
c0001743:	c7 05 10 a8 00 c0 05 	movl   $0xc0007105,0xc000a810
c000174a:	71 00 c0 
c000174d:	c7 05 14 a8 00 c0 1d 	movl   $0xc000711d,0xc000a814
c0001754:	71 00 c0 
c0001757:	c7 05 18 a8 00 c0 34 	movl   $0xc0007134,0xc000a818
c000175e:	71 00 c0 
c0001761:	c7 05 20 a8 00 c0 44 	movl   $0xc0007144,0xc000a820
c0001768:	71 00 c0 
c000176b:	c7 05 24 a8 00 c0 72 	movl   $0xc0007172,0xc000a824
c0001772:	71 00 c0 
c0001775:	c7 05 28 a8 00 c0 86 	movl   $0xc0007186,0xc000a828
c000177c:	71 00 c0 
c000177f:	c7 05 2c a8 00 c0 98 	movl   $0xc0007198,0xc000a82c
c0001786:	71 00 c0 
c0001789:	c7 05 30 a8 00 c0 ba 	movl   $0xc00071ba,0xc000a830
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
c000197f:	c7 04 24 d7 71 00 c0 	movl   $0xc00071d7,(%esp)
c0001986:	e8 12 56 00 00       	call   c0006f9d <__printk>
c000198b:	8b 55 f0             	mov    -0x10(%ebp),%edx
c000198e:	89 d0                	mov    %edx,%eax
c0001990:	c1 e0 02             	shl    $0x2,%eax
c0001993:	01 d0                	add    %edx,%eax
c0001995:	01 c0                	add    %eax,%eax
c0001997:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000199a:	eb 05                	jmp    c00019a1 <mtime_sleep+0x55>
c000199c:	e8 6e 31 00 00       	call   c0004b0f <thread_yield>
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
c00019cc:	e8 f1 44 00 00       	call   c0005ec2 <syscall_table_init>
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
c00035ae:	c7 04 24 e8 71 00 c0 	movl   $0xc00071e8,(%esp)
c00035b5:	e8 4b ff ff ff       	call   c0003505 <put_str>
c00035ba:	c7 04 24 f4 71 00 c0 	movl   $0xc00071f4,(%esp)
c00035c1:	e8 3f ff ff ff       	call   c0003505 <put_str>
c00035c6:	c7 04 24 f6 71 00 c0 	movl   $0xc00071f6,(%esp)
c00035cd:	e8 33 ff ff ff       	call   c0003505 <put_str>
c00035d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00035d5:	89 04 24             	mov    %eax,(%esp)
c00035d8:	e8 28 ff ff ff       	call   c0003505 <put_str>
c00035dd:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c00035e4:	e8 97 fd ff ff       	call   c0003380 <put_char>
c00035e9:	c7 04 24 00 72 00 c0 	movl   $0xc0007200,(%esp)
c00035f0:	e8 10 ff ff ff       	call   c0003505 <put_str>
c00035f5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00035f8:	89 04 24             	mov    %eax,(%esp)
c00035fb:	e8 63 fe ff ff       	call   c0003463 <put_int>
c0003600:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0003607:	e8 74 fd ff ff       	call   c0003380 <put_char>
c000360c:	c7 04 24 06 72 00 c0 	movl   $0xc0007206,(%esp)
c0003613:	e8 ed fe ff ff       	call   c0003505 <put_str>
c0003618:	8b 45 10             	mov    0x10(%ebp),%eax
c000361b:	89 04 24             	mov    %eax,(%esp)
c000361e:	e8 e2 fe ff ff       	call   c0003505 <put_str>
c0003623:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c000362a:	e8 51 fd ff ff       	call   c0003380 <put_char>
c000362f:	c7 04 24 10 72 00 c0 	movl   $0xc0007210,(%esp)
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
c0003666:	c7 04 24 06 72 00 c0 	movl   $0xc0007206,(%esp)
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
c00036bf:	c7 44 24 0c 1c 72 00 	movl   $0xc000721c,0xc(%esp)
c00036c6:	c0 
c00036c7:	c7 44 24 08 6d 72 00 	movl   $0xc000726d,0x8(%esp)
c00036ce:	c0 
c00036cf:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c00036d6:	00 
c00036d7:	c7 04 24 2f 72 00 c0 	movl   $0xc000722f,(%esp)
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
c000371b:	c7 44 24 0c 1c 72 00 	movl   $0xc000721c,0xc(%esp)
c0003722:	c0 
c0003723:	c7 44 24 08 76 72 00 	movl   $0xc0007276,0x8(%esp)
c000372a:	c0 
c000372b:	c7 44 24 04 12 00 00 	movl   $0x12,0x4(%esp)
c0003732:	00 
c0003733:	c7 04 24 2f 72 00 c0 	movl   $0xc000722f,(%esp)
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
c000377c:	c7 44 24 0c 4c 72 00 	movl   $0xc000724c,0xc(%esp)
c0003783:	c0 
c0003784:	c7 44 24 08 80 72 00 	movl   $0xc0007280,0x8(%esp)
c000378b:	c0 
c000378c:	c7 44 24 04 1c 00 00 	movl   $0x1c,0x4(%esp)
c0003793:	00 
c0003794:	c7 04 24 2f 72 00 c0 	movl   $0xc000722f,(%esp)
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
c00038bc:	8d 45 0c             	lea    0xc(%ebp),%eax
c00038bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00038c2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00038c5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00038c8:	89 54 24 08          	mov    %edx,0x8(%esp)
c00038cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00038d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00038d3:	89 04 24             	mov    %eax,(%esp)
c00038d6:	e8 79 26 00 00       	call   c0005f54 <vsprintf>
c00038db:	8b 45 08             	mov    0x8(%ebp),%eax
c00038de:	c9                   	leave  
c00038df:	c3                   	ret    

c00038e0 <init_bit_map>:
c00038e0:	55                   	push   %ebp
c00038e1:	89 e5                	mov    %esp,%ebp
c00038e3:	5d                   	pop    %ebp
c00038e4:	c3                   	ret    

c00038e5 <bit_test>:
c00038e5:	55                   	push   %ebp
c00038e6:	89 e5                	mov    %esp,%ebp
c00038e8:	53                   	push   %ebx
c00038e9:	83 ec 24             	sub    $0x24,%esp
c00038ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00038ef:	8b 00                	mov    (%eax),%eax
c00038f1:	3b 45 0c             	cmp    0xc(%ebp),%eax
c00038f4:	73 24                	jae    c000391a <bit_test+0x35>
c00038f6:	c7 44 24 0c 88 72 00 	movl   $0xc0007288,0xc(%esp)
c00038fd:	c0 
c00038fe:	c7 44 24 08 d5 72 00 	movl   $0xc00072d5,0x8(%esp)
c0003905:	c0 
c0003906:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
c000390d:	00 
c000390e:	c7 04 24 a0 72 00 c0 	movl   $0xc00072a0,(%esp)
c0003915:	e8 86 fc ff ff       	call   c00035a0 <panic_spin>
c000391a:	8b 45 0c             	mov    0xc(%ebp),%eax
c000391d:	c1 e8 03             	shr    $0x3,%eax
c0003920:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003923:	8b 45 08             	mov    0x8(%ebp),%eax
c0003926:	8b 50 04             	mov    0x4(%eax),%edx
c0003929:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000392c:	01 d0                	add    %edx,%eax
c000392e:	0f b6 00             	movzbl (%eax),%eax
c0003931:	88 45 f3             	mov    %al,-0xd(%ebp)
c0003934:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003937:	83 e0 07             	and    $0x7,%eax
c000393a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000393d:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
c0003941:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003944:	bb 80 00 00 00       	mov    $0x80,%ebx
c0003949:	89 c1                	mov    %eax,%ecx
c000394b:	d3 fb                	sar    %cl,%ebx
c000394d:	89 d8                	mov    %ebx,%eax
c000394f:	21 d0                	and    %edx,%eax
c0003951:	85 c0                	test   %eax,%eax
c0003953:	0f 95 c0             	setne  %al
c0003956:	0f b6 c0             	movzbl %al,%eax
c0003959:	83 c4 24             	add    $0x24,%esp
c000395c:	5b                   	pop    %ebx
c000395d:	5d                   	pop    %ebp
c000395e:	c3                   	ret    

c000395f <bit_set>:
c000395f:	55                   	push   %ebp
c0003960:	89 e5                	mov    %esp,%ebp
c0003962:	56                   	push   %esi
c0003963:	53                   	push   %ebx
c0003964:	83 ec 20             	sub    $0x20,%esp
c0003967:	8b 45 08             	mov    0x8(%ebp),%eax
c000396a:	8b 00                	mov    (%eax),%eax
c000396c:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000396f:	73 24                	jae    c0003995 <bit_set+0x36>
c0003971:	c7 44 24 0c c3 72 00 	movl   $0xc00072c3,0xc(%esp)
c0003978:	c0 
c0003979:	c7 44 24 08 de 72 00 	movl   $0xc00072de,0x8(%esp)
c0003980:	c0 
c0003981:	c7 44 24 04 19 00 00 	movl   $0x19,0x4(%esp)
c0003988:	00 
c0003989:	c7 04 24 a0 72 00 c0 	movl   $0xc00072a0,(%esp)
c0003990:	e8 0b fc ff ff       	call   c00035a0 <panic_spin>
c0003995:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003998:	89 44 24 04          	mov    %eax,0x4(%esp)
c000399c:	8b 45 08             	mov    0x8(%ebp),%eax
c000399f:	89 04 24             	mov    %eax,(%esp)
c00039a2:	e8 3e ff ff ff       	call   c00038e5 <bit_test>
c00039a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00039aa:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
c00039ae:	75 07                	jne    c00039b7 <bit_set+0x58>
c00039b0:	b8 01 00 00 00       	mov    $0x1,%eax
c00039b5:	eb 44                	jmp    c00039fb <bit_set+0x9c>
c00039b7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00039ba:	83 e0 07             	and    $0x7,%eax
c00039bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00039c0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00039c3:	c1 e8 03             	shr    $0x3,%eax
c00039c6:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00039c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00039cc:	8b 50 04             	mov    0x4(%eax),%edx
c00039cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00039d2:	01 c2                	add    %eax,%edx
c00039d4:	8b 45 08             	mov    0x8(%ebp),%eax
c00039d7:	8b 48 04             	mov    0x4(%eax),%ecx
c00039da:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00039dd:	01 c8                	add    %ecx,%eax
c00039df:	0f b6 00             	movzbl (%eax),%eax
c00039e2:	89 c3                	mov    %eax,%ebx
c00039e4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00039e7:	be 80 00 00 00       	mov    $0x80,%esi
c00039ec:	89 c1                	mov    %eax,%ecx
c00039ee:	d3 fe                	sar    %cl,%esi
c00039f0:	89 f0                	mov    %esi,%eax
c00039f2:	31 d8                	xor    %ebx,%eax
c00039f4:	88 02                	mov    %al,(%edx)
c00039f6:	b8 00 00 00 00       	mov    $0x0,%eax
c00039fb:	83 c4 20             	add    $0x20,%esp
c00039fe:	5b                   	pop    %ebx
c00039ff:	5e                   	pop    %esi
c0003a00:	5d                   	pop    %ebp
c0003a01:	c3                   	ret    

c0003a02 <bit_reset>:
c0003a02:	55                   	push   %ebp
c0003a03:	89 e5                	mov    %esp,%ebp
c0003a05:	56                   	push   %esi
c0003a06:	53                   	push   %ebx
c0003a07:	83 ec 20             	sub    $0x20,%esp
c0003a0a:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a0d:	8b 00                	mov    (%eax),%eax
c0003a0f:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003a12:	73 24                	jae    c0003a38 <bit_reset+0x36>
c0003a14:	c7 44 24 0c c3 72 00 	movl   $0xc00072c3,0xc(%esp)
c0003a1b:	c0 
c0003a1c:	c7 44 24 08 e6 72 00 	movl   $0xc00072e6,0x8(%esp)
c0003a23:	c0 
c0003a24:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c0003a2b:	00 
c0003a2c:	c7 04 24 a0 72 00 c0 	movl   $0xc00072a0,(%esp)
c0003a33:	e8 68 fb ff ff       	call   c00035a0 <panic_spin>
c0003a38:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a3b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003a3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a42:	89 04 24             	mov    %eax,(%esp)
c0003a45:	e8 9b fe ff ff       	call   c00038e5 <bit_test>
c0003a4a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003a4d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0003a51:	75 0a                	jne    c0003a5d <bit_reset+0x5b>
c0003a53:	b8 00 00 00 00       	mov    $0x0,%eax
c0003a58:	e9 91 00 00 00       	jmp    c0003aee <bit_reset+0xec>
c0003a5d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a60:	83 e0 07             	and    $0x7,%eax
c0003a63:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003a66:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003a69:	c1 e8 03             	shr    $0x3,%eax
c0003a6c:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003a6f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003a73:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a76:	8b 50 04             	mov    0x4(%eax),%edx
c0003a79:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003a7c:	01 d0                	add    %edx,%eax
c0003a7e:	0f b6 00             	movzbl (%eax),%eax
c0003a81:	0f b6 d0             	movzbl %al,%edx
c0003a84:	b8 09 00 00 00       	mov    $0x9,%eax
c0003a89:	2b 45 f0             	sub    -0x10(%ebp),%eax
c0003a8c:	bb ff 00 00 00       	mov    $0xff,%ebx
c0003a91:	89 c1                	mov    %eax,%ecx
c0003a93:	d3 e3                	shl    %cl,%ebx
c0003a95:	89 d8                	mov    %ebx,%eax
c0003a97:	21 d0                	and    %edx,%eax
c0003a99:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0003a9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0003a9f:	8b 50 04             	mov    0x4(%eax),%edx
c0003aa2:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003aa5:	01 c2                	add    %eax,%edx
c0003aa7:	8b 45 08             	mov    0x8(%ebp),%eax
c0003aaa:	8b 48 04             	mov    0x4(%eax),%ecx
c0003aad:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003ab0:	01 c8                	add    %ecx,%eax
c0003ab2:	0f b6 00             	movzbl (%eax),%eax
c0003ab5:	89 c3                	mov    %eax,%ebx
c0003ab7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003aba:	be ff 00 00 00       	mov    $0xff,%esi
c0003abf:	89 c1                	mov    %eax,%ecx
c0003ac1:	d3 fe                	sar    %cl,%esi
c0003ac3:	89 f0                	mov    %esi,%eax
c0003ac5:	21 d8                	and    %ebx,%eax
c0003ac7:	88 02                	mov    %al,(%edx)
c0003ac9:	8b 45 08             	mov    0x8(%ebp),%eax
c0003acc:	8b 50 04             	mov    0x4(%eax),%edx
c0003acf:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003ad2:	01 c2                	add    %eax,%edx
c0003ad4:	8b 45 08             	mov    0x8(%ebp),%eax
c0003ad7:	8b 48 04             	mov    0x4(%eax),%ecx
c0003ada:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003add:	01 c8                	add    %ecx,%eax
c0003adf:	0f b6 08             	movzbl (%eax),%ecx
c0003ae2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0003ae5:	31 c8                	xor    %ecx,%eax
c0003ae7:	88 02                	mov    %al,(%edx)
c0003ae9:	b8 01 00 00 00       	mov    $0x1,%eax
c0003aee:	83 c4 20             	add    $0x20,%esp
c0003af1:	5b                   	pop    %ebx
c0003af2:	5e                   	pop    %esi
c0003af3:	5d                   	pop    %ebp
c0003af4:	c3                   	ret    

c0003af5 <bit_alloc>:
c0003af5:	55                   	push   %ebp
c0003af6:	89 e5                	mov    %esp,%ebp
c0003af8:	83 ec 28             	sub    $0x28,%esp
c0003afb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003b02:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0003b09:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003b0c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003b10:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b13:	89 04 24             	mov    %eax,(%esp)
c0003b16:	e8 ca fd ff ff       	call   c00038e5 <bit_test>
c0003b1b:	85 c0                	test   %eax,%eax
c0003b1d:	75 0a                	jne    c0003b29 <bit_alloc+0x34>
c0003b1f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003b23:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003b27:	eb 0b                	jmp    c0003b34 <bit_alloc+0x3f>
c0003b29:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003b30:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0003b34:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b37:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b3a:	73 0e                	jae    c0003b4a <bit_alloc+0x55>
c0003b3c:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003b3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b42:	8b 00                	mov    (%eax),%eax
c0003b44:	39 c2                	cmp    %eax,%edx
c0003b46:	73 02                	jae    c0003b4a <bit_alloc+0x55>
c0003b48:	eb bf                	jmp    c0003b09 <bit_alloc+0x14>
c0003b4a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b4d:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b50:	72 3b                	jb     c0003b8d <bit_alloc+0x98>
c0003b52:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0003b59:	eb 1e                	jmp    c0003b79 <bit_alloc+0x84>
c0003b5b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003b5e:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003b61:	01 d0                	add    %edx,%eax
c0003b63:	2b 45 f4             	sub    -0xc(%ebp),%eax
c0003b66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003b6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0003b6d:	89 04 24             	mov    %eax,(%esp)
c0003b70:	e8 ea fd ff ff       	call   c000395f <bit_set>
c0003b75:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
c0003b79:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003b7c:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003b7f:	72 da                	jb     c0003b5b <bit_alloc+0x66>
c0003b81:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003b84:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003b87:	29 c2                	sub    %eax,%edx
c0003b89:	89 d0                	mov    %edx,%eax
c0003b8b:	eb 05                	jmp    c0003b92 <bit_alloc+0x9d>
c0003b8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0003b92:	c9                   	leave  
c0003b93:	c3                   	ret    

c0003b94 <alloc_vaddr>:
c0003b94:	55                   	push   %ebp
c0003b95:	89 e5                	mov    %esp,%ebp
c0003b97:	83 ec 28             	sub    $0x28,%esp
c0003b9a:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003b9e:	75 09                	jne    c0003ba9 <alloc_vaddr+0x15>
c0003ba0:	c7 45 f4 a0 a7 00 c0 	movl   $0xc000a7a0,-0xc(%ebp)
c0003ba7:	eb 11                	jmp    c0003bba <alloc_vaddr+0x26>
c0003ba9:	e8 56 0a 00 00       	call   c0004604 <get_running>
c0003bae:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003bb1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003bb4:	83 c0 04             	add    $0x4,%eax
c0003bb7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003bba:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003bbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003bc0:	8b 00                	mov    (%eax),%eax
c0003bc2:	39 c2                	cmp    %eax,%edx
c0003bc4:	76 24                	jbe    c0003bea <alloc_vaddr+0x56>
c0003bc6:	c7 44 24 0c f0 72 00 	movl   $0xc00072f0,0xc(%esp)
c0003bcd:	c0 
c0003bce:	c7 44 24 08 79 73 00 	movl   $0xc0007379,0x8(%esp)
c0003bd5:	c0 
c0003bd6:	c7 44 24 04 17 00 00 	movl   $0x17,0x4(%esp)
c0003bdd:	00 
c0003bde:	c7 04 24 0f 73 00 c0 	movl   $0xc000730f,(%esp)
c0003be5:	e8 b6 f9 ff ff       	call   c00035a0 <panic_spin>
c0003bea:	8b 55 0c             	mov    0xc(%ebp),%edx
c0003bed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003bf0:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003bf4:	89 04 24             	mov    %eax,(%esp)
c0003bf7:	e8 f9 fe ff ff       	call   c0003af5 <bit_alloc>
c0003bfc:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003bff:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
c0003c03:	74 10                	je     c0003c15 <alloc_vaddr+0x81>
c0003c05:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c08:	8b 50 08             	mov    0x8(%eax),%edx
c0003c0b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003c0e:	c1 e0 0c             	shl    $0xc,%eax
c0003c11:	01 d0                	add    %edx,%eax
c0003c13:	eb 05                	jmp    c0003c1a <alloc_vaddr+0x86>
c0003c15:	b8 00 00 00 00       	mov    $0x0,%eax
c0003c1a:	c9                   	leave  
c0003c1b:	c3                   	ret    

c0003c1c <alloc_mem>:
c0003c1c:	55                   	push   %ebp
c0003c1d:	89 e5                	mov    %esp,%ebp
c0003c1f:	83 ec 28             	sub    $0x28,%esp
c0003c22:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003c26:	75 09                	jne    c0003c31 <alloc_mem+0x15>
c0003c28:	c7 45 f4 b0 a7 00 c0 	movl   $0xc000a7b0,-0xc(%ebp)
c0003c2f:	eb 07                	jmp    c0003c38 <alloc_mem+0x1c>
c0003c31:	c7 45 f4 90 a7 00 c0 	movl   $0xc000a790,-0xc(%ebp)
c0003c38:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c3b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0003c42:	00 
c0003c43:	89 04 24             	mov    %eax,(%esp)
c0003c46:	e8 aa fe ff ff       	call   c0003af5 <bit_alloc>
c0003c4b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003c4e:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
c0003c52:	74 10                	je     c0003c64 <alloc_mem+0x48>
c0003c54:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003c57:	8b 50 08             	mov    0x8(%eax),%edx
c0003c5a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0003c5d:	c1 e0 0c             	shl    $0xc,%eax
c0003c60:	01 d0                	add    %edx,%eax
c0003c62:	eb 05                	jmp    c0003c69 <alloc_mem+0x4d>
c0003c64:	b8 00 00 00 00       	mov    $0x0,%eax
c0003c69:	c9                   	leave  
c0003c6a:	c3                   	ret    

c0003c6b <malloc_page>:
c0003c6b:	55                   	push   %ebp
c0003c6c:	89 e5                	mov    %esp,%ebp
c0003c6e:	83 ec 28             	sub    $0x28,%esp
c0003c71:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003c78:	e8 96 15 00 00       	call   c0005213 <lock>
c0003c7d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003c80:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003c84:	8b 45 08             	mov    0x8(%ebp),%eax
c0003c87:	89 04 24             	mov    %eax,(%esp)
c0003c8a:	e8 05 ff ff ff       	call   c0003b94 <alloc_vaddr>
c0003c8f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003c92:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0003c96:	75 0a                	jne    c0003ca2 <malloc_page+0x37>
c0003c98:	b8 00 00 00 00       	mov    $0x0,%eax
c0003c9d:	e9 c4 00 00 00       	jmp    c0003d66 <malloc_page+0xfb>
c0003ca2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003ca9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0003cb0:	e9 96 00 00 00       	jmp    c0003d4b <malloc_page+0xe0>
c0003cb5:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003cb9:	75 32                	jne    c0003ced <malloc_page+0x82>
c0003cbb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0003cc2:	e8 55 ff ff ff       	call   c0003c1c <alloc_mem>
c0003cc7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003cca:	89 d1                	mov    %edx,%ecx
c0003ccc:	c1 e1 0c             	shl    $0xc,%ecx
c0003ccf:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003cd2:	01 ca                	add    %ecx,%edx
c0003cd4:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003cdb:	00 
c0003cdc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003ce0:	89 14 24             	mov    %edx,(%esp)
c0003ce3:	e8 b5 07 00 00       	call   c000449d <add_pte>
c0003ce8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003ceb:	eb 30                	jmp    c0003d1d <malloc_page+0xb2>
c0003ced:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0003cf4:	e8 23 ff ff ff       	call   c0003c1c <alloc_mem>
c0003cf9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003cfc:	89 d1                	mov    %edx,%ecx
c0003cfe:	c1 e1 0c             	shl    $0xc,%ecx
c0003d01:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0003d04:	01 ca                	add    %ecx,%edx
c0003d06:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003d0d:	00 
c0003d0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003d12:	89 14 24             	mov    %edx,(%esp)
c0003d15:	e8 83 07 00 00       	call   c000449d <add_pte>
c0003d1a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003d1d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0003d21:	75 24                	jne    c0003d47 <malloc_page+0xdc>
c0003d23:	c7 44 24 0c 2b 73 00 	movl   $0xc000732b,0xc(%esp)
c0003d2a:	c0 
c0003d2b:	c7 44 24 08 85 73 00 	movl   $0xc0007385,0x8(%esp)
c0003d32:	c0 
c0003d33:	c7 44 24 04 38 00 00 	movl   $0x38,0x4(%esp)
c0003d3a:	00 
c0003d3b:	c7 04 24 0f 73 00 c0 	movl   $0xc000730f,(%esp)
c0003d42:	e8 59 f8 ff ff       	call   c00035a0 <panic_spin>
c0003d47:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003d4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003d4e:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003d51:	0f 82 5e ff ff ff    	jb     c0003cb5 <malloc_page+0x4a>
c0003d57:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003d5e:	e8 06 15 00 00       	call   c0005269 <unlock>
c0003d63:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003d66:	c9                   	leave  
c0003d67:	c3                   	ret    

c0003d68 <create_vaddr>:
c0003d68:	55                   	push   %ebp
c0003d69:	89 e5                	mov    %esp,%ebp
c0003d6b:	83 ec 28             	sub    $0x28,%esp
c0003d6e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003d72:	75 17                	jne    c0003d8b <create_vaddr+0x23>
c0003d74:	c7 45 f4 a0 a7 00 c0 	movl   $0xc000a7a0,-0xc(%ebp)
c0003d7b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003d7e:	05 00 f0 df 3f       	add    $0x3fdff000,%eax
c0003d83:	c1 e8 0c             	shr    $0xc,%eax
c0003d86:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003d89:	eb 1a                	jmp    c0003da5 <create_vaddr+0x3d>
c0003d8b:	e8 74 08 00 00       	call   c0004604 <get_running>
c0003d90:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003d93:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003d96:	83 c0 04             	add    $0x4,%eax
c0003d99:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003d9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003d9f:	c1 e8 0c             	shr    $0xc,%eax
c0003da2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0003da5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003da8:	8b 40 0c             	mov    0xc(%eax),%eax
c0003dab:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0003dae:	77 24                	ja     c0003dd4 <create_vaddr+0x6c>
c0003db0:	c7 44 24 0c 3d 73 00 	movl   $0xc000733d,0xc(%esp)
c0003db7:	c0 
c0003db8:	c7 44 24 08 91 73 00 	movl   $0xc0007391,0x8(%esp)
c0003dbf:	c0 
c0003dc0:	c7 44 24 04 4e 00 00 	movl   $0x4e,0x4(%esp)
c0003dc7:	00 
c0003dc8:	c7 04 24 0f 73 00 c0 	movl   $0xc000730f,(%esp)
c0003dcf:	e8 cc f7 ff ff       	call   c00035a0 <panic_spin>
c0003dd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003dd7:	8b 00                	mov    (%eax),%eax
c0003dd9:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c0003ddc:	77 24                	ja     c0003e02 <create_vaddr+0x9a>
c0003dde:	c7 44 24 0c 50 73 00 	movl   $0xc0007350,0xc(%esp)
c0003de5:	c0 
c0003de6:	c7 44 24 08 91 73 00 	movl   $0xc0007391,0x8(%esp)
c0003ded:	c0 
c0003dee:	c7 44 24 04 4f 00 00 	movl   $0x4f,0x4(%esp)
c0003df5:	00 
c0003df6:	c7 04 24 0f 73 00 c0 	movl   $0xc000730f,(%esp)
c0003dfd:	e8 9e f7 ff ff       	call   c00035a0 <panic_spin>
c0003e02:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003e05:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003e08:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003e0c:	89 04 24             	mov    %eax,(%esp)
c0003e0f:	e8 d1 fa ff ff       	call   c00038e5 <bit_test>
c0003e14:	85 c0                	test   %eax,%eax
c0003e16:	74 07                	je     c0003e1f <create_vaddr+0xb7>
c0003e18:	b8 00 00 00 00       	mov    $0x0,%eax
c0003e1d:	eb 17                	jmp    c0003e36 <create_vaddr+0xce>
c0003e1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003e22:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0003e25:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003e29:	89 04 24             	mov    %eax,(%esp)
c0003e2c:	e8 2e fb ff ff       	call   c000395f <bit_set>
c0003e31:	b8 01 00 00 00       	mov    $0x1,%eax
c0003e36:	c9                   	leave  
c0003e37:	c3                   	ret    

c0003e38 <create_page>:
c0003e38:	55                   	push   %ebp
c0003e39:	89 e5                	mov    %esp,%ebp
c0003e3b:	83 ec 28             	sub    $0x28,%esp
c0003e3e:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003e45:	e8 c9 13 00 00       	call   c0005213 <lock>
c0003e4a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e4d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0003e52:	89 45 0c             	mov    %eax,0xc(%ebp)
c0003e55:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e58:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003e5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0003e5f:	89 04 24             	mov    %eax,(%esp)
c0003e62:	e8 01 ff ff ff       	call   c0003d68 <create_vaddr>
c0003e67:	85 c0                	test   %eax,%eax
c0003e69:	75 16                	jne    c0003e81 <create_page+0x49>
c0003e6b:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003e72:	e8 f2 13 00 00       	call   c0005269 <unlock>
c0003e77:	b8 00 00 00 00       	mov    $0x0,%eax
c0003e7c:	e9 9a 00 00 00       	jmp    c0003f1b <create_page+0xe3>
c0003e81:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003e88:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
c0003e8c:	75 2a                	jne    c0003eb8 <create_page+0x80>
c0003e8e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0003e95:	e8 82 fd ff ff       	call   c0003c1c <alloc_mem>
c0003e9a:	89 c2                	mov    %eax,%edx
c0003e9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003e9f:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003ea6:	00 
c0003ea7:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003eab:	89 04 24             	mov    %eax,(%esp)
c0003eae:	e8 ea 05 00 00       	call   c000449d <add_pte>
c0003eb3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003eb6:	eb 28                	jmp    c0003ee0 <create_page+0xa8>
c0003eb8:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0003ebf:	e8 58 fd ff ff       	call   c0003c1c <alloc_mem>
c0003ec4:	89 c2                	mov    %eax,%edx
c0003ec6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003ec9:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
c0003ed0:	00 
c0003ed1:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003ed5:	89 04 24             	mov    %eax,(%esp)
c0003ed8:	e8 c0 05 00 00       	call   c000449d <add_pte>
c0003edd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0003ee0:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0003ee4:	75 24                	jne    c0003f0a <create_page+0xd2>
c0003ee6:	c7 44 24 0c 2b 73 00 	movl   $0xc000732b,0xc(%esp)
c0003eed:	c0 
c0003eee:	c7 44 24 08 9e 73 00 	movl   $0xc000739e,0x8(%esp)
c0003ef5:	c0 
c0003ef6:	c7 44 24 04 66 00 00 	movl   $0x66,0x4(%esp)
c0003efd:	00 
c0003efe:	c7 04 24 0f 73 00 c0 	movl   $0xc000730f,(%esp)
c0003f05:	e8 96 f6 ff ff       	call   c00035a0 <panic_spin>
c0003f0a:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003f11:	e8 53 13 00 00       	call   c0005269 <unlock>
c0003f16:	b8 01 00 00 00       	mov    $0x1,%eax
c0003f1b:	c9                   	leave  
c0003f1c:	c3                   	ret    

c0003f1d <free_pool>:
c0003f1d:	55                   	push   %ebp
c0003f1e:	89 e5                	mov    %esp,%ebp
c0003f20:	83 ec 28             	sub    $0x28,%esp
c0003f23:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003f2a:	eb 29                	jmp    c0003f55 <free_pool+0x38>
c0003f2c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003f2f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003f32:	01 c2                	add    %eax,%edx
c0003f34:	8b 45 08             	mov    0x8(%ebp),%eax
c0003f37:	89 54 24 04          	mov    %edx,0x4(%esp)
c0003f3b:	89 04 24             	mov    %eax,(%esp)
c0003f3e:	e8 bf fa ff ff       	call   c0003a02 <bit_reset>
c0003f43:	85 c0                	test   %eax,%eax
c0003f45:	75 0a                	jne    c0003f51 <free_pool+0x34>
c0003f47:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0003f4a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003f4d:	01 d0                	add    %edx,%eax
c0003f4f:	eb 11                	jmp    c0003f62 <free_pool+0x45>
c0003f51:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0003f55:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003f58:	3b 45 10             	cmp    0x10(%ebp),%eax
c0003f5b:	72 cf                	jb     c0003f2c <free_pool+0xf>
c0003f5d:	b8 00 00 00 00       	mov    $0x0,%eax
c0003f62:	c9                   	leave  
c0003f63:	c3                   	ret    

c0003f64 <free_page>:
c0003f64:	55                   	push   %ebp
c0003f65:	89 e5                	mov    %esp,%ebp
c0003f67:	83 ec 38             	sub    $0x38,%esp
c0003f6a:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0003f71:	e8 9d 12 00 00       	call   c0005213 <lock>
c0003f76:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0003f7a:	75 24                	jne    c0003fa0 <free_page+0x3c>
c0003f7c:	c7 44 24 0c 6b 73 00 	movl   $0xc000736b,0xc(%esp)
c0003f83:	c0 
c0003f84:	c7 44 24 08 aa 73 00 	movl   $0xc00073aa,0x8(%esp)
c0003f8b:	c0 
c0003f8c:	c7 44 24 04 7a 00 00 	movl   $0x7a,0x4(%esp)
c0003f93:	00 
c0003f94:	c7 04 24 0f 73 00 c0 	movl   $0xc000730f,(%esp)
c0003f9b:	e8 00 f6 ff ff       	call   c00035a0 <panic_spin>
c0003fa0:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
c0003fa7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003faa:	05 00 f0 df 3f       	add    $0x3fdff000,%eax
c0003faf:	c1 e8 0c             	shr    $0xc,%eax
c0003fb2:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0003fb5:	8b 45 10             	mov    0x10(%ebp),%eax
c0003fb8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0003fbc:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0003fbf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0003fc3:	c7 04 24 a0 a7 00 c0 	movl   $0xc000a7a0,(%esp)
c0003fca:	e8 4e ff ff ff       	call   c0003f1d <free_pool>
c0003fcf:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0003fd2:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
c0003fd6:	74 05                	je     c0003fdd <free_page+0x79>
c0003fd8:	e9 a1 00 00 00       	jmp    c000407e <free_page+0x11a>
c0003fdd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0003fe4:	eb 79                	jmp    c000405f <free_page+0xfb>
c0003fe6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0003fe9:	c1 e0 0c             	shl    $0xc,%eax
c0003fec:	89 c2                	mov    %eax,%edx
c0003fee:	8b 45 0c             	mov    0xc(%ebp),%eax
c0003ff1:	01 d0                	add    %edx,%eax
c0003ff3:	89 04 24             	mov    %eax,(%esp)
c0003ff6:	e8 76 05 00 00       	call   c0004571 <get_paddr>
c0003ffb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0003ffe:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0004001:	2d 00 10 20 00       	sub    $0x201000,%eax
c0004006:	c1 e8 0c             	shr    $0xc,%eax
c0004009:	89 45 e0             	mov    %eax,-0x20(%ebp)
c000400c:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0004013:	00 
c0004014:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0004017:	89 44 24 04          	mov    %eax,0x4(%esp)
c000401b:	c7 04 24 b0 a7 00 c0 	movl   $0xc000a7b0,(%esp)
c0004022:	e8 f6 fe ff ff       	call   c0003f1d <free_pool>
c0004027:	85 c0                	test   %eax,%eax
c0004029:	75 19                	jne    c0004044 <free_page+0xe0>
c000402b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000402e:	c1 e0 0c             	shl    $0xc,%eax
c0004031:	89 c2                	mov    %eax,%edx
c0004033:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004036:	01 d0                	add    %edx,%eax
c0004038:	89 04 24             	mov    %eax,(%esp)
c000403b:	e8 51 05 00 00       	call   c0004591 <reset_pte>
c0004040:	85 c0                	test   %eax,%eax
c0004042:	75 07                	jne    c000404b <free_page+0xe7>
c0004044:	b8 01 00 00 00       	mov    $0x1,%eax
c0004049:	eb 05                	jmp    c0004050 <free_page+0xec>
c000404b:	b8 00 00 00 00       	mov    $0x0,%eax
c0004050:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0004053:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
c0004057:	74 02                	je     c000405b <free_page+0xf7>
c0004059:	eb 23                	jmp    c000407e <free_page+0x11a>
c000405b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c000405f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004062:	3b 45 10             	cmp    0x10(%ebp),%eax
c0004065:	0f 82 7b ff ff ff    	jb     c0003fe6 <free_page+0x82>
c000406b:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004072:	e8 f2 11 00 00       	call   c0005269 <unlock>
c0004077:	b8 01 00 00 00       	mov    $0x1,%eax
c000407c:	eb 11                	jmp    c000408f <free_page+0x12b>
c000407e:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004085:	e8 df 11 00 00       	call   c0005269 <unlock>
c000408a:	b8 00 00 00 00       	mov    $0x0,%eax
c000408f:	c9                   	leave  
c0004090:	c3                   	ret    

c0004091 <mem_decs_init>:
c0004091:	55                   	push   %ebp
c0004092:	89 e5                	mov    %esp,%ebp
c0004094:	83 ec 28             	sub    $0x28,%esp
c0004097:	c7 45 f4 00 04 00 00 	movl   $0x400,-0xc(%ebp)
c000409e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00040a5:	eb 4a                	jmp    c00040f1 <mem_decs_init+0x60>
c00040a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00040aa:	c1 e0 04             	shl    $0x4,%eax
c00040ad:	89 c2                	mov    %eax,%edx
c00040af:	8b 45 08             	mov    0x8(%ebp),%eax
c00040b2:	01 c2                	add    %eax,%edx
c00040b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00040b7:	89 02                	mov    %eax,(%edx)
c00040b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00040bc:	c1 e0 04             	shl    $0x4,%eax
c00040bf:	89 c2                	mov    %eax,%edx
c00040c1:	8b 45 08             	mov    0x8(%ebp),%eax
c00040c4:	01 d0                	add    %edx,%eax
c00040c6:	c7 40 04 f0 0f 00 00 	movl   $0xff0,0x4(%eax)
c00040cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00040d0:	c1 e0 04             	shl    $0x4,%eax
c00040d3:	89 c2                	mov    %eax,%edx
c00040d5:	8b 45 08             	mov    0x8(%ebp),%eax
c00040d8:	01 d0                	add    %edx,%eax
c00040da:	83 c0 08             	add    $0x8,%eax
c00040dd:	89 04 24             	mov    %eax,(%esp)
c00040e0:	e8 12 0b 00 00       	call   c0004bf7 <init_list>
c00040e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00040e8:	d1 e8                	shr    %eax
c00040ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00040ed:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00040f1:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
c00040f5:	76 b0                	jbe    c00040a7 <mem_decs_init+0x16>
c00040f7:	c9                   	leave  
c00040f8:	c3                   	ret    

c00040f9 <sys_malloc>:
c00040f9:	55                   	push   %ebp
c00040fa:	89 e5                	mov    %esp,%ebp
c00040fc:	83 ec 38             	sub    $0x38,%esp
c00040ff:	e8 00 05 00 00       	call   c0004604 <get_running>
c0004104:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0004107:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c000410a:	8b 40 48             	mov    0x48(%eax),%eax
c000410d:	3d 00 00 10 00       	cmp    $0x100000,%eax
c0004112:	75 10                	jne    c0004124 <sys_malloc+0x2b>
c0004114:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
c000411b:	c7 45 f4 b0 a7 00 c0 	movl   $0xc000a7b0,-0xc(%ebp)
c0004122:	eb 0e                	jmp    c0004132 <sys_malloc+0x39>
c0004124:	c7 45 f0 02 00 00 00 	movl   $0x2,-0x10(%ebp)
c000412b:	c7 45 f4 90 a7 00 c0 	movl   $0xc000a790,-0xc(%ebp)
c0004132:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004135:	8b 40 0c             	mov    0xc(%eax),%eax
c0004138:	3b 45 08             	cmp    0x8(%ebp),%eax
c000413b:	73 0a                	jae    c0004147 <sys_malloc+0x4e>
c000413d:	b8 00 00 00 00       	mov    $0x0,%eax
c0004142:	e9 3e 01 00 00       	jmp    c0004285 <sys_malloc+0x18c>
c0004147:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c000414e:	e8 c0 10 00 00       	call   c0005213 <lock>
c0004153:	81 7d 08 00 04 00 00 	cmpl   $0x400,0x8(%ebp)
c000415a:	76 5a                	jbe    c00041b6 <sys_malloc+0xbd>
c000415c:	8b 45 08             	mov    0x8(%ebp),%eax
c000415f:	83 e8 01             	sub    $0x1,%eax
c0004162:	c1 e8 0a             	shr    $0xa,%eax
c0004165:	83 c0 01             	add    $0x1,%eax
c0004168:	89 44 24 04          	mov    %eax,0x4(%esp)
c000416c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000416f:	89 04 24             	mov    %eax,(%esp)
c0004172:	e8 f4 fa ff ff       	call   c0003c6b <malloc_page>
c0004177:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000417a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000417d:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
c0004184:	8b 45 08             	mov    0x8(%ebp),%eax
c0004187:	83 e8 01             	sub    $0x1,%eax
c000418a:	c1 e8 0a             	shr    $0xa,%eax
c000418d:	8d 50 01             	lea    0x1(%eax),%edx
c0004190:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004193:	89 50 04             	mov    %edx,0x4(%eax)
c0004196:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004199:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c000419f:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c00041a6:	e8 be 10 00 00       	call   c0005269 <unlock>
c00041ab:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00041ae:	83 c0 0c             	add    $0xc,%eax
c00041b1:	e9 cf 00 00 00       	jmp    c0004285 <sys_malloc+0x18c>
c00041b6:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00041bd:	eb 18                	jmp    c00041d7 <sys_malloc+0xde>
c00041bf:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00041c2:	c1 e0 04             	shl    $0x4,%eax
c00041c5:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c00041ca:	8b 00                	mov    (%eax),%eax
c00041cc:	3b 45 08             	cmp    0x8(%ebp),%eax
c00041cf:	76 02                	jbe    c00041d3 <sys_malloc+0xda>
c00041d1:	eb 0a                	jmp    c00041dd <sys_malloc+0xe4>
c00041d3:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
c00041d7:	83 7d e8 06          	cmpl   $0x6,-0x18(%ebp)
c00041db:	7e e2                	jle    c00041bf <sys_malloc+0xc6>
c00041dd:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00041e0:	c1 e0 04             	shl    $0x4,%eax
c00041e3:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c00041e8:	83 c0 08             	add    $0x8,%eax
c00041eb:	89 04 24             	mov    %eax,(%esp)
c00041ee:	e8 05 0e 00 00       	call   c0004ff8 <lst_empty>
c00041f3:	85 c0                	test   %eax,%eax
c00041f5:	74 57                	je     c000424e <sys_malloc+0x155>
c00041f7:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00041fe:	00 
c00041ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004202:	89 04 24             	mov    %eax,(%esp)
c0004205:	e8 61 fa ff ff       	call   c0003c6b <malloc_page>
c000420a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c000420d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004210:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0004217:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000421a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004221:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004224:	c1 e0 04             	shl    $0x4,%eax
c0004227:	8d 90 20 a7 00 c0    	lea    -0x3fff58e0(%eax),%edx
c000422d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004230:	89 10                	mov    %edx,(%eax)
c0004232:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004235:	c1 e0 04             	shl    $0x4,%eax
c0004238:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c000423d:	8b 00                	mov    (%eax),%eax
c000423f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004243:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004246:	89 04 24             	mov    %eax,(%esp)
c0004249:	e8 39 00 00 00       	call   c0004287 <mblock_cut>
c000424e:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004255:	e8 0f 10 00 00       	call   c0005269 <unlock>
c000425a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000425d:	c1 e0 04             	shl    $0x4,%eax
c0004260:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c0004265:	83 c0 08             	add    $0x8,%eax
c0004268:	89 04 24             	mov    %eax,(%esp)
c000426b:	e8 b8 0a 00 00       	call   c0004d28 <lst_pop>
c0004270:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0004273:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004276:	8b 40 04             	mov    0x4(%eax),%eax
c0004279:	8d 50 01             	lea    0x1(%eax),%edx
c000427c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000427f:	89 50 04             	mov    %edx,0x4(%eax)
c0004282:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0004285:	c9                   	leave  
c0004286:	c3                   	ret    

c0004287 <mblock_cut>:
c0004287:	55                   	push   %ebp
c0004288:	89 e5                	mov    %esp,%ebp
c000428a:	83 ec 28             	sub    $0x28,%esp
c000428d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004290:	83 c0 0c             	add    $0xc,%eax
c0004293:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004296:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c000429d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00042a0:	c1 e0 04             	shl    $0x4,%eax
c00042a3:	05 20 a7 00 c0       	add    $0xc000a720,%eax
c00042a8:	8b 08                	mov    (%eax),%ecx
c00042aa:	b8 f4 0f 00 00       	mov    $0xff4,%eax
c00042af:	ba 00 00 00 00       	mov    $0x0,%edx
c00042b4:	f7 f1                	div    %ecx
c00042b6:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00042b9:	eb 2b                	jmp    c00042e6 <mblock_cut+0x5f>
c00042bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00042be:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00042c1:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00042c4:	8b 55 08             	mov    0x8(%ebp),%edx
c00042c7:	8b 12                	mov    (%edx),%edx
c00042c9:	83 c2 08             	add    $0x8,%edx
c00042cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00042d0:	89 14 24             	mov    %edx,(%esp)
c00042d3:	e8 37 09 00 00       	call   c0004c0f <lst_push>
c00042d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00042db:	8b 00                	mov    (%eax),%eax
c00042dd:	8b 00                	mov    (%eax),%eax
c00042df:	01 45 f4             	add    %eax,-0xc(%ebp)
c00042e2:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c00042e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00042e9:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c00042ec:	7c cd                	jl     c00042bb <mblock_cut+0x34>
c00042ee:	c9                   	leave  
c00042ef:	c3                   	ret    

c00042f0 <sys_free>:
c00042f0:	55                   	push   %ebp
c00042f1:	89 e5                	mov    %esp,%ebp
c00042f3:	83 ec 28             	sub    $0x28,%esp
c00042f6:	e8 09 03 00 00       	call   c0004604 <get_running>
c00042fb:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00042fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0004301:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0004304:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004307:	8b 40 48             	mov    0x48(%eax),%eax
c000430a:	3d 00 00 10 00       	cmp    $0x100000,%eax
c000430f:	75 09                	jne    c000431a <sys_free+0x2a>
c0004311:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0004318:	eb 07                	jmp    c0004321 <sys_free+0x31>
c000431a:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
c0004321:	8b 45 08             	mov    0x8(%ebp),%eax
c0004324:	25 00 10 00 00       	and    $0x1000,%eax
c0004329:	89 45 e8             	mov    %eax,-0x18(%ebp)
c000432c:	8b 45 e8             	mov    -0x18(%ebp),%eax
c000432f:	8b 40 08             	mov    0x8(%eax),%eax
c0004332:	85 c0                	test   %eax,%eax
c0004334:	74 1e                	je     c0004354 <sys_free+0x64>
c0004336:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004339:	8b 40 04             	mov    0x4(%eax),%eax
c000433c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004340:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004343:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004347:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000434a:	89 04 24             	mov    %eax,(%esp)
c000434d:	e8 12 fc ff ff       	call   c0003f64 <free_page>
c0004352:	eb 4c                	jmp    c00043a0 <sys_free+0xb0>
c0004354:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004357:	8b 40 04             	mov    0x4(%eax),%eax
c000435a:	8d 50 ff             	lea    -0x1(%eax),%edx
c000435d:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004360:	89 50 04             	mov    %edx,0x4(%eax)
c0004363:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004366:	8b 40 04             	mov    0x4(%eax),%eax
c0004369:	85 c0                	test   %eax,%eax
c000436b:	75 1c                	jne    c0004389 <sys_free+0x99>
c000436d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0004374:	00 
c0004375:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0004378:	89 44 24 04          	mov    %eax,0x4(%esp)
c000437c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000437f:	89 04 24             	mov    %eax,(%esp)
c0004382:	e8 dd fb ff ff       	call   c0003f64 <free_page>
c0004387:	eb 17                	jmp    c00043a0 <sys_free+0xb0>
c0004389:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000438c:	8b 55 e8             	mov    -0x18(%ebp),%edx
c000438f:	8b 12                	mov    (%edx),%edx
c0004391:	83 c2 08             	add    $0x8,%edx
c0004394:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004398:	89 14 24             	mov    %edx,(%esp)
c000439b:	e8 6f 08 00 00       	call   c0004c0f <lst_push>
c00043a0:	90                   	nop
c00043a1:	c9                   	leave  
c00043a2:	c3                   	ret    

c00043a3 <init_pool>:
c00043a3:	55                   	push   %ebp
c00043a4:	89 e5                	mov    %esp,%ebp
c00043a6:	83 ec 28             	sub    $0x28,%esp
c00043a9:	b8 09 0b 00 c0       	mov    $0xc0000b09,%eax
c00043ae:	8b 00                	mov    (%eax),%eax
c00043b0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00043b3:	c7 05 b8 a7 00 c0 00 	movl   $0x201000,0xc000a7b8
c00043ba:	10 20 00 
c00043bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00043c0:	2d 00 10 20 00       	sub    $0x201000,%eax
c00043c5:	d1 e8                	shr    %eax
c00043c7:	a3 bc a7 00 c0       	mov    %eax,0xc000a7bc
c00043cc:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043d1:	05 00 10 20 00       	add    $0x201000,%eax
c00043d6:	a3 98 a7 00 c0       	mov    %eax,0xc000a798
c00043db:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043e0:	a3 9c a7 00 c0       	mov    %eax,0xc000a79c
c00043e5:	c7 05 b4 a7 00 c0 00 	movl   $0xc009a000,0xc000a7b4
c00043ec:	a0 09 c0 
c00043ef:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c00043f4:	a3 b0 a7 00 c0       	mov    %eax,0xc000a7b0
c00043f9:	c7 04 24 b0 a7 00 c0 	movl   $0xc000a7b0,(%esp)
c0004400:	e8 db f4 ff ff       	call   c00038e0 <init_bit_map>
c0004405:	a1 bc a7 00 c0       	mov    0xc000a7bc,%eax
c000440a:	c1 e8 0c             	shr    $0xc,%eax
c000440d:	2d 00 60 f6 3f       	sub    $0x3ff66000,%eax
c0004412:	a3 94 a7 00 c0       	mov    %eax,0xc000a794
c0004417:	a1 9c a7 00 c0       	mov    0xc000a79c,%eax
c000441c:	a3 90 a7 00 c0       	mov    %eax,0xc000a790
c0004421:	c7 04 24 90 a7 00 c0 	movl   $0xc000a790,(%esp)
c0004428:	e8 b3 f4 ff ff       	call   c00038e0 <init_bit_map>
c000442d:	c7 05 ac a7 00 c0 00 	movl   $0x40000000,0xc000a7ac
c0004434:	00 00 40 
c0004437:	c7 05 a8 a7 00 c0 00 	movl   $0xc0201000,0xc000a7a8
c000443e:	10 20 c0 
c0004441:	c7 05 a4 a7 00 c0 00 	movl   $0x92000,0xc000a7a4
c0004448:	20 09 00 
c000444b:	a1 ac a7 00 c0       	mov    0xc000a7ac,%eax
c0004450:	2d 00 10 20 00       	sub    $0x201000,%eax
c0004455:	c1 e8 0c             	shr    $0xc,%eax
c0004458:	a3 a0 a7 00 c0       	mov    %eax,0xc000a7a0
c000445d:	c7 04 24 a0 a7 00 c0 	movl   $0xc000a7a0,(%esp)
c0004464:	e8 77 f4 ff ff       	call   c00038e0 <init_bit_map>
c0004469:	c7 04 24 24 b0 00 c0 	movl   $0xc000b024,(%esp)
c0004470:	e8 f0 0b 00 00       	call   c0005065 <init_mutex>
c0004475:	c9                   	leave  
c0004476:	c3                   	ret    

c0004477 <get_pde_ptr>:
c0004477:	55                   	push   %ebp
c0004478:	89 e5                	mov    %esp,%ebp
c000447a:	8b 45 08             	mov    0x8(%ebp),%eax
c000447d:	c1 e8 14             	shr    $0x14,%eax
c0004480:	35 00 f0 ff ff       	xor    $0xfffff000,%eax
c0004485:	83 e0 fc             	and    $0xfffffffc,%eax
c0004488:	5d                   	pop    %ebp
c0004489:	c3                   	ret    

c000448a <get_pte_ptr>:
c000448a:	55                   	push   %ebp
c000448b:	89 e5                	mov    %esp,%ebp
c000448d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004490:	c1 e8 0a             	shr    $0xa,%eax
c0004493:	35 00 00 c0 ff       	xor    $0xffc00000,%eax
c0004498:	83 e0 fc             	and    $0xfffffffc,%eax
c000449b:	5d                   	pop    %ebp
c000449c:	c3                   	ret    

c000449d <add_pte>:
c000449d:	55                   	push   %ebp
c000449e:	89 e5                	mov    %esp,%ebp
c00044a0:	83 ec 28             	sub    $0x28,%esp
c00044a3:	8b 45 10             	mov    0x10(%ebp),%eax
c00044a6:	88 45 e4             	mov    %al,-0x1c(%ebp)
c00044a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00044ac:	89 04 24             	mov    %eax,(%esp)
c00044af:	e8 c3 ff ff ff       	call   c0004477 <get_pde_ptr>
c00044b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00044b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00044ba:	8b 00                	mov    (%eax),%eax
c00044bc:	83 e0 01             	and    $0x1,%eax
c00044bf:	85 c0                	test   %eax,%eax
c00044c1:	75 61                	jne    c0004524 <add_pte+0x87>
c00044c3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00044ca:	00 
c00044cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c00044d2:	e8 94 f7 ff ff       	call   c0003c6b <malloc_page>
c00044d7:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00044da:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00044dd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00044e4:	00 
c00044e5:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
c00044ec:	00 
c00044ed:	89 04 24             	mov    %eax,(%esp)
c00044f0:	e8 b8 f1 ff ff       	call   c00036ad <memset_8>
c00044f5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00044f8:	89 04 24             	mov    %eax,(%esp)
c00044fb:	e8 71 00 00 00       	call   c0004571 <get_paddr>
c0004500:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004505:	89 c2                	mov    %eax,%edx
c0004507:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c000450b:	01 d0                	add    %edx,%eax
c000450d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004511:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0004518:	00 
c0004519:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000451c:	89 04 24             	mov    %eax,(%esp)
c000451f:	e8 eb f1 ff ff       	call   c000370f <memset_32>
c0004524:	8b 45 08             	mov    0x8(%ebp),%eax
c0004527:	89 04 24             	mov    %eax,(%esp)
c000452a:	e8 5b ff ff ff       	call   c000448a <get_pte_ptr>
c000452f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0004532:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0004535:	8b 00                	mov    (%eax),%eax
c0004537:	83 e0 01             	and    $0x1,%eax
c000453a:	85 c0                	test   %eax,%eax
c000453c:	75 2c                	jne    c000456a <add_pte+0xcd>
c000453e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004541:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004546:	89 c2                	mov    %eax,%edx
c0004548:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
c000454c:	01 d0                	add    %edx,%eax
c000454e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004552:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0004559:	00 
c000455a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000455d:	89 04 24             	mov    %eax,(%esp)
c0004560:	e8 aa f1 ff ff       	call   c000370f <memset_32>
c0004565:	8b 45 08             	mov    0x8(%ebp),%eax
c0004568:	eb 05                	jmp    c000456f <add_pte+0xd2>
c000456a:	b8 00 00 00 00       	mov    $0x0,%eax
c000456f:	c9                   	leave  
c0004570:	c3                   	ret    

c0004571 <get_paddr>:
c0004571:	55                   	push   %ebp
c0004572:	89 e5                	mov    %esp,%ebp
c0004574:	83 ec 14             	sub    $0x14,%esp
c0004577:	8b 45 08             	mov    0x8(%ebp),%eax
c000457a:	89 04 24             	mov    %eax,(%esp)
c000457d:	e8 08 ff ff ff       	call   c000448a <get_pte_ptr>
c0004582:	8b 00                	mov    (%eax),%eax
c0004584:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0004587:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000458a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c000458f:	c9                   	leave  
c0004590:	c3                   	ret    

c0004591 <reset_pte>:
c0004591:	55                   	push   %ebp
c0004592:	89 e5                	mov    %esp,%ebp
c0004594:	83 ec 28             	sub    $0x28,%esp
c0004597:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c000459b:	75 24                	jne    c00045c1 <reset_pte+0x30>
c000459d:	c7 44 24 0c b4 73 00 	movl   $0xc00073b4,0xc(%esp)
c00045a4:	c0 
c00045a5:	c7 44 24 08 d8 73 00 	movl   $0xc00073d8,0x8(%esp)
c00045ac:	c0 
c00045ad:	c7 44 24 04 53 00 00 	movl   $0x53,0x4(%esp)
c00045b4:	00 
c00045b5:	c7 04 24 bf 73 00 c0 	movl   $0xc00073bf,(%esp)
c00045bc:	e8 df ef ff ff       	call   c00035a0 <panic_spin>
c00045c1:	8b 45 08             	mov    0x8(%ebp),%eax
c00045c4:	89 04 24             	mov    %eax,(%esp)
c00045c7:	e8 be fe ff ff       	call   c000448a <get_pte_ptr>
c00045cc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00045cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00045d2:	8b 00                	mov    (%eax),%eax
c00045d4:	83 e0 01             	and    $0x1,%eax
c00045d7:	85 c0                	test   %eax,%eax
c00045d9:	75 07                	jne    c00045e2 <reset_pte+0x51>
c00045db:	b8 00 00 00 00       	mov    $0x0,%eax
c00045e0:	eb 20                	jmp    c0004602 <reset_pte+0x71>
c00045e2:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00045e9:	00 
c00045ea:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00045f1:	00 
c00045f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00045f5:	89 04 24             	mov    %eax,(%esp)
c00045f8:	e8 12 f1 ff ff       	call   c000370f <memset_32>
c00045fd:	b8 01 00 00 00       	mov    $0x1,%eax
c0004602:	c9                   	leave  
c0004603:	c3                   	ret    

c0004604 <get_running>:
c0004604:	55                   	push   %ebp
c0004605:	89 e5                	mov    %esp,%ebp
c0004607:	83 ec 10             	sub    $0x10,%esp
c000460a:	89 e0                	mov    %esp,%eax
c000460c:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000460f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0004612:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0004617:	c9                   	leave  
c0004618:	c3                   	ret    

c0004619 <schedule>:
c0004619:	55                   	push   %ebp
c000461a:	89 e5                	mov    %esp,%ebp
c000461c:	83 ec 28             	sub    $0x28,%esp
c000461f:	e8 0a ef ff ff       	call   c000352e <get_int_status>
c0004624:	85 c0                	test   %eax,%eax
c0004626:	74 24                	je     c000464c <schedule+0x33>
c0004628:	c7 44 24 0c e4 73 00 	movl   $0xc00073e4,0xc(%esp)
c000462f:	c0 
c0004630:	c7 44 24 08 a6 74 00 	movl   $0xc00074a6,0x8(%esp)
c0004637:	c0 
c0004638:	c7 44 24 04 15 00 00 	movl   $0x15,0x4(%esp)
c000463f:	00 
c0004640:	c7 04 24 00 74 00 c0 	movl   $0xc0007400,(%esp)
c0004647:	e8 54 ef ff ff       	call   c00035a0 <panic_spin>
c000464c:	e8 b3 ff ff ff       	call   c0004604 <get_running>
c0004651:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004654:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c000465b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000465e:	8b 40 28             	mov    0x28(%eax),%eax
c0004661:	83 f8 03             	cmp    $0x3,%eax
c0004664:	75 40                	jne    c00046a6 <schedule+0x8d>
c0004666:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004669:	83 c0 40             	add    $0x40,%eax
c000466c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004670:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c0004677:	e8 af 07 00 00       	call   c0004e2b <lst_remove>
c000467c:	81 7d f4 00 e0 09 00 	cmpl   $0x9e000,-0xc(%ebp)
c0004683:	0f 84 92 00 00 00    	je     c000471b <schedule+0x102>
c0004689:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0004690:	00 
c0004691:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004694:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004698:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c000469f:	e8 c0 f8 ff ff       	call   c0003f64 <free_page>
c00046a4:	eb 75                	jmp    c000471b <schedule+0x102>
c00046a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046a9:	8b 40 28             	mov    0x28(%eax),%eax
c00046ac:	83 f8 01             	cmp    $0x1,%eax
c00046af:	75 22                	jne    c00046d3 <schedule+0xba>
c00046b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046b4:	83 c0 38             	add    $0x38,%eax
c00046b7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00046bb:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c00046c2:	e8 48 05 00 00       	call   c0004c0f <lst_push>
c00046c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046ca:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c00046d1:	eb 48                	jmp    c000471b <schedule+0x102>
c00046d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046d6:	8b 40 28             	mov    0x28(%eax),%eax
c00046d9:	85 c0                	test   %eax,%eax
c00046db:	75 3e                	jne    c000471b <schedule+0x102>
c00046dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00046e0:	83 c0 38             	add    $0x38,%eax
c00046e3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00046e7:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c00046ee:	e8 d3 06 00 00       	call   c0004dc6 <lst_find>
c00046f3:	85 c0                	test   %eax,%eax
c00046f5:	74 24                	je     c000471b <schedule+0x102>
c00046f7:	c7 44 24 0c 18 74 00 	movl   $0xc0007418,0xc(%esp)
c00046fe:	c0 
c00046ff:	c7 44 24 08 a6 74 00 	movl   $0xc00074a6,0x8(%esp)
c0004706:	c0 
c0004707:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
c000470e:	00 
c000470f:	c7 04 24 00 74 00 c0 	movl   $0xc0007400,(%esp)
c0004716:	e8 85 ee ff ff       	call   c00035a0 <panic_spin>
c000471b:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004722:	e8 d1 08 00 00       	call   c0004ff8 <lst_empty>
c0004727:	85 c0                	test   %eax,%eax
c0004729:	74 0d                	je     c0004738 <schedule+0x11f>
c000472b:	a1 38 b0 00 c0       	mov    0xc000b038,%eax
c0004730:	89 04 24             	mov    %eax,(%esp)
c0004733:	e8 08 0c 00 00       	call   c0005340 <thread_unblock>
c0004738:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c000473f:	e8 e4 05 00 00       	call   c0004d28 <lst_pop>
c0004744:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004747:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000474a:	83 e8 38             	sub    $0x38,%eax
c000474d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004750:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004753:	25 ff 0f 00 00       	and    $0xfff,%eax
c0004758:	85 c0                	test   %eax,%eax
c000475a:	74 24                	je     c0004780 <schedule+0x167>
c000475c:	c7 44 24 0c 40 74 00 	movl   $0xc0007440,0xc(%esp)
c0004763:	c0 
c0004764:	c7 44 24 08 a6 74 00 	movl   $0xc00074a6,0x8(%esp)
c000476b:	c0 
c000476c:	c7 44 24 04 2b 00 00 	movl   $0x2b,0x4(%esp)
c0004773:	00 
c0004774:	c7 04 24 00 74 00 c0 	movl   $0xc0007400,(%esp)
c000477b:	e8 20 ee ff ff       	call   c00035a0 <panic_spin>
c0004780:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0004784:	75 24                	jne    c00047aa <schedule+0x191>
c0004786:	c7 44 24 0c 5a 74 00 	movl   $0xc000745a,0xc(%esp)
c000478d:	c0 
c000478e:	c7 44 24 08 a6 74 00 	movl   $0xc00074a6,0x8(%esp)
c0004795:	c0 
c0004796:	c7 44 24 04 2c 00 00 	movl   $0x2c,0x4(%esp)
c000479d:	00 
c000479e:	c7 04 24 00 74 00 c0 	movl   $0xc0007400,(%esp)
c00047a5:	e8 f6 ed ff ff       	call   c00035a0 <panic_spin>
c00047aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047ad:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c00047b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047b7:	8b 40 48             	mov    0x48(%eax),%eax
c00047ba:	85 c0                	test   %eax,%eax
c00047bc:	74 09                	je     c00047c7 <schedule+0x1ae>
c00047be:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047c1:	8b 40 48             	mov    0x48(%eax),%eax
c00047c4:	0f 22 d8             	mov    %eax,%cr3
c00047c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047ca:	89 04 24             	mov    %eax,(%esp)
c00047cd:	e8 90 12 00 00       	call   c0005a62 <exchange_esp0>
c00047d2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00047d5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00047d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00047dc:	89 04 24             	mov    %eax,(%esp)
c00047df:	e8 6c 08 00 00       	call   c0005050 <switch_on>
c00047e4:	c9                   	leave  
c00047e5:	c3                   	ret    

c00047e6 <print_thread>:
c00047e6:	55                   	push   %ebp
c00047e7:	89 e5                	mov    %esp,%ebp
c00047e9:	5d                   	pop    %ebp
c00047ea:	c3                   	ret    

c00047eb <thread_fun_exc>:
c00047eb:	55                   	push   %ebp
c00047ec:	89 e5                	mov    %esp,%ebp
c00047ee:	83 ec 18             	sub    $0x18,%esp
c00047f1:	e8 5c ed ff ff       	call   c0003552 <int_enable>
c00047f6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00047f9:	89 04 24             	mov    %eax,(%esp)
c00047fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00047ff:	ff d0                	call   *%eax
c0004801:	e8 60 ed ff ff       	call   c0003566 <int_disable>
c0004806:	e8 f9 fd ff ff       	call   c0004604 <get_running>
c000480b:	c7 40 28 03 00 00 00 	movl   $0x3,0x28(%eax)
c0004812:	e8 02 fe ff ff       	call   c0004619 <schedule>
c0004817:	e8 36 ed ff ff       	call   c0003552 <int_enable>
c000481c:	c9                   	leave  
c000481d:	c3                   	ret    

c000481e <thread_finished>:
c000481e:	55                   	push   %ebp
c000481f:	89 e5                	mov    %esp,%ebp
c0004821:	83 ec 08             	sub    $0x8,%esp
c0004824:	e8 3d ed ff ff       	call   c0003566 <int_disable>
c0004829:	e8 d6 fd ff ff       	call   c0004604 <get_running>
c000482e:	c7 40 28 03 00 00 00 	movl   $0x3,0x28(%eax)
c0004835:	e8 df fd ff ff       	call   c0004619 <schedule>
c000483a:	e8 13 ed ff ff       	call   c0003552 <int_enable>
c000483f:	c9                   	leave  
c0004840:	c3                   	ret    

c0004841 <acquire_id>:
c0004841:	55                   	push   %ebp
c0004842:	89 e5                	mov    %esp,%ebp
c0004844:	83 ec 28             	sub    $0x28,%esp
c0004847:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c000484e:	e8 c0 09 00 00       	call   c0005213 <lock>
c0004853:	a1 3c b0 00 c0       	mov    0xc000b03c,%eax
c0004858:	8d 50 01             	lea    0x1(%eax),%edx
c000485b:	89 15 3c b0 00 c0    	mov    %edx,0xc000b03c
c0004861:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004864:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c000486b:	e8 f9 09 00 00       	call   c0005269 <unlock>
c0004870:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004873:	c9                   	leave  
c0004874:	c3                   	ret    

c0004875 <create_thread>:
c0004875:	55                   	push   %ebp
c0004876:	89 e5                	mov    %esp,%ebp
c0004878:	83 ec 28             	sub    $0x28,%esp
c000487b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c000487f:	75 24                	jne    c00048a5 <create_thread+0x30>
c0004881:	c7 44 24 0c 67 74 00 	movl   $0xc0007467,0xc(%esp)
c0004888:	c0 
c0004889:	c7 44 24 08 af 74 00 	movl   $0xc00074af,0x8(%esp)
c0004890:	c0 
c0004891:	c7 44 24 04 58 00 00 	movl   $0x58,0x4(%esp)
c0004898:	00 
c0004899:	c7 04 24 00 74 00 c0 	movl   $0xc0007400,(%esp)
c00048a0:	e8 fb ec ff ff       	call   c00035a0 <panic_spin>
c00048a5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00048ac:	00 
c00048ad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c00048b4:	e8 b2 f3 ff ff       	call   c0003c6b <malloc_page>
c00048b9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00048bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048bf:	8d 50 14             	lea    0x14(%eax),%edx
c00048c2:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
c00048c9:	00 
c00048ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00048cd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00048d1:	89 14 24             	mov    %edx,(%esp)
c00048d4:	e8 91 ee ff ff       	call   c000376a <memcopy>
c00048d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048dc:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c00048e3:	e8 59 ff ff ff       	call   c0004841 <acquire_id>
c00048e8:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00048eb:	89 42 24             	mov    %eax,0x24(%edx)
c00048ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048f1:	8b 55 0c             	mov    0xc(%ebp),%edx
c00048f4:	89 50 2c             	mov    %edx,0x2c(%eax)
c00048f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00048fa:	8b 55 0c             	mov    0xc(%ebp),%edx
c00048fd:	89 50 30             	mov    %edx,0x30(%eax)
c0004900:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004903:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
c000490a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000490d:	c7 40 4c 09 ad ff 78 	movl   $0x78ffad09,0x4c(%eax)
c0004914:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004917:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%eax)
c000491e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004921:	c9                   	leave  
c0004922:	c3                   	ret    

c0004923 <init_thread>:
c0004923:	55                   	push   %ebp
c0004924:	89 e5                	mov    %esp,%ebp
c0004926:	83 ec 28             	sub    $0x28,%esp
c0004929:	8b 45 08             	mov    0x8(%ebp),%eax
c000492c:	05 e0 0f 00 00       	add    $0xfe0,%eax
c0004931:	89 c2                	mov    %eax,%edx
c0004933:	8b 45 08             	mov    0x8(%ebp),%eax
c0004936:	89 10                	mov    %edx,(%eax)
c0004938:	8b 45 08             	mov    0x8(%ebp),%eax
c000493b:	8b 00                	mov    (%eax),%eax
c000493d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004940:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004943:	c7 40 10 eb 47 00 c0 	movl   $0xc00047eb,0x10(%eax)
c000494a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000494d:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004950:	89 50 18             	mov    %edx,0x18(%eax)
c0004953:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004956:	8b 55 10             	mov    0x10(%ebp),%edx
c0004959:	89 50 1c             	mov    %edx,0x1c(%eax)
c000495c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000495f:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0004966:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004969:	8b 50 0c             	mov    0xc(%eax),%edx
c000496c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000496f:	89 50 08             	mov    %edx,0x8(%eax)
c0004972:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004975:	8b 50 08             	mov    0x8(%eax),%edx
c0004978:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000497b:	89 10                	mov    %edx,(%eax)
c000497d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004980:	8b 10                	mov    (%eax),%edx
c0004982:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004985:	89 50 04             	mov    %edx,0x4(%eax)
c0004988:	8b 45 08             	mov    0x8(%ebp),%eax
c000498b:	83 c0 38             	add    $0x38,%eax
c000498e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004992:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004999:	e8 71 02 00 00       	call   c0004c0f <lst_push>
c000499e:	8b 45 08             	mov    0x8(%ebp),%eax
c00049a1:	83 c0 40             	add    $0x40,%eax
c00049a4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00049a8:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c00049af:	e8 5b 02 00 00       	call   c0004c0f <lst_push>
c00049b4:	c9                   	leave  
c00049b5:	c3                   	ret    

c00049b6 <init_main>:
c00049b6:	55                   	push   %ebp
c00049b7:	89 e5                	mov    %esp,%ebp
c00049b9:	83 ec 28             	sub    $0x28,%esp
c00049bc:	c7 45 f4 00 e0 09 00 	movl   $0x9e000,-0xc(%ebp)
c00049c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049c6:	c7 00 e0 ef 09 00    	movl   $0x9efe0,(%eax)
c00049cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049cf:	83 c0 14             	add    $0x14,%eax
c00049d2:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c00049d9:	00 
c00049da:	c7 44 24 04 74 74 00 	movl   $0xc0007474,0x4(%esp)
c00049e1:	c0 
c00049e2:	89 04 24             	mov    %eax,(%esp)
c00049e5:	e8 80 ed ff ff       	call   c000376a <memcopy>
c00049ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00049ed:	83 c0 64             	add    $0x64,%eax
c00049f0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c00049f7:	00 
c00049f8:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c00049ff:	00 
c0004a00:	89 04 24             	mov    %eax,(%esp)
c0004a03:	e8 a5 ec ff ff       	call   c00036ad <memset_8>
c0004a08:	a1 3c b0 00 c0       	mov    0xc000b03c,%eax
c0004a0d:	8d 50 01             	lea    0x1(%eax),%edx
c0004a10:	89 15 3c b0 00 c0    	mov    %edx,0xc000b03c
c0004a16:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0004a19:	89 42 24             	mov    %eax,0x24(%edx)
c0004a1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a1f:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
c0004a26:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a29:	c7 40 30 14 00 00 00 	movl   $0x14,0x30(%eax)
c0004a30:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a33:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
c0004a3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a3d:	c7 40 2c 14 00 00 00 	movl   $0x14,0x2c(%eax)
c0004a44:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a47:	c7 40 4c 09 ad ff 78 	movl   $0x78ffad09,0x4c(%eax)
c0004a4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a51:	83 c0 40             	add    $0x40,%eax
c0004a54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004a58:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c0004a5f:	e8 ab 01 00 00       	call   c0004c0f <lst_push>
c0004a64:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004a67:	c7 40 48 00 00 10 00 	movl   $0x100000,0x48(%eax)
c0004a6e:	b8 fc ef 09 00       	mov    $0x9effc,%eax
c0004a73:	ba 1e 48 00 c0       	mov    $0xc000481e,%edx
c0004a78:	89 10                	mov    %edx,(%eax)
c0004a7a:	c9                   	leave  
c0004a7b:	c3                   	ret    

c0004a7c <init_thread_list>:
c0004a7c:	55                   	push   %ebp
c0004a7d:	89 e5                	mov    %esp,%ebp
c0004a7f:	83 ec 18             	sub    $0x18,%esp
c0004a82:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004a89:	e8 69 01 00 00       	call   c0004bf7 <init_list>
c0004a8e:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c0004a95:	e8 5d 01 00 00       	call   c0004bf7 <init_list>
c0004a9a:	e8 17 ff ff ff       	call   c00049b6 <init_main>
c0004a9f:	c7 04 24 40 b0 00 c0 	movl   $0xc000b040,(%esp)
c0004aa6:	e8 ba 05 00 00       	call   c0005065 <init_mutex>
c0004aab:	c7 05 3c b0 00 c0 00 	movl   $0x0,0xc000b03c
c0004ab2:	00 00 00 
c0004ab5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0004abc:	00 
c0004abd:	c7 44 24 08 e0 4a 00 	movl   $0xc0004ae0,0x8(%esp)
c0004ac4:	c0 
c0004ac5:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
c0004acc:	00 
c0004acd:	c7 04 24 79 74 00 c0 	movl   $0xc0007479,(%esp)
c0004ad4:	e8 d7 00 00 00       	call   c0004bb0 <thread_start>
c0004ad9:	a3 38 b0 00 c0       	mov    %eax,0xc000b038
c0004ade:	c9                   	leave  
c0004adf:	c3                   	ret    

c0004ae0 <deamon_fun>:
c0004ae0:	55                   	push   %ebp
c0004ae1:	89 e5                	mov    %esp,%ebp
c0004ae3:	83 ec 28             	sub    $0x28,%esp
c0004ae6:	e8 7b ea ff ff       	call   c0003566 <int_disable>
c0004aeb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004aee:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004af5:	e8 fe 04 00 00       	call   c0004ff8 <lst_empty>
c0004afa:	85 c0                	test   %eax,%eax
c0004afc:	75 0d                	jne    c0004b0b <deamon_fun+0x2b>
c0004afe:	a1 38 b0 00 c0       	mov    0xc000b038,%eax
c0004b03:	89 04 24             	mov    %eax,(%esp)
c0004b06:	e8 a9 07 00 00       	call   c00052b4 <thread_block>
c0004b0b:	fb                   	sti    
c0004b0c:	f4                   	hlt    
c0004b0d:	eb d7                	jmp    c0004ae6 <deamon_fun+0x6>

c0004b0f <thread_yield>:
c0004b0f:	55                   	push   %ebp
c0004b10:	89 e5                	mov    %esp,%ebp
c0004b12:	83 ec 28             	sub    $0x28,%esp
c0004b15:	e8 4c ea ff ff       	call   c0003566 <int_disable>
c0004b1a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004b1d:	e8 e2 fa ff ff       	call   c0004604 <get_running>
c0004b22:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004b25:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b28:	83 c0 38             	add    $0x38,%eax
c0004b2b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004b2f:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004b36:	e8 8b 02 00 00       	call   c0004dc6 <lst_find>
c0004b3b:	85 c0                	test   %eax,%eax
c0004b3d:	74 24                	je     c0004b63 <thread_yield+0x54>
c0004b3f:	c7 44 24 0c 80 74 00 	movl   $0xc0007480,0xc(%esp)
c0004b46:	c0 
c0004b47:	c7 44 24 08 bd 74 00 	movl   $0xc00074bd,0x8(%esp)
c0004b4e:	c0 
c0004b4f:	c7 44 24 04 a4 00 00 	movl   $0xa4,0x4(%esp)
c0004b56:	00 
c0004b57:	c7 04 24 00 74 00 c0 	movl   $0xc0007400,(%esp)
c0004b5e:	e8 3d ea ff ff       	call   c00035a0 <panic_spin>
c0004b63:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b66:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c0004b6d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b70:	83 c0 38             	add    $0x38,%eax
c0004b73:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004b77:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0004b7e:	e8 8c 00 00 00       	call   c0004c0f <lst_push>
c0004b83:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b86:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
c0004b8d:	e8 c0 e9 ff ff       	call   c0003552 <int_enable>
c0004b92:	90                   	nop
c0004b93:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004b96:	8b 40 2c             	mov    0x2c(%eax),%eax
c0004b99:	83 f8 01             	cmp    $0x1,%eax
c0004b9c:	74 f5                	je     c0004b93 <thread_yield+0x84>
c0004b9e:	e8 c3 e9 ff ff       	call   c0003566 <int_disable>
c0004ba3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004ba6:	89 04 24             	mov    %eax,(%esp)
c0004ba9:	e8 cc e9 ff ff       	call   c000357a <set_int_status>
c0004bae:	c9                   	leave  
c0004baf:	c3                   	ret    

c0004bb0 <thread_start>:
c0004bb0:	55                   	push   %ebp
c0004bb1:	89 e5                	mov    %esp,%ebp
c0004bb3:	83 ec 28             	sub    $0x28,%esp
c0004bb6:	8b 45 14             	mov    0x14(%ebp),%eax
c0004bb9:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0004bbd:	8b 45 10             	mov    0x10(%ebp),%eax
c0004bc0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004bc4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004bc7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004bcb:	8b 45 08             	mov    0x8(%ebp),%eax
c0004bce:	89 04 24             	mov    %eax,(%esp)
c0004bd1:	e8 9f fc ff ff       	call   c0004875 <create_thread>
c0004bd6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004bd9:	8b 45 14             	mov    0x14(%ebp),%eax
c0004bdc:	89 44 24 08          	mov    %eax,0x8(%esp)
c0004be0:	8b 45 10             	mov    0x10(%ebp),%eax
c0004be3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004be7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004bea:	89 04 24             	mov    %eax,(%esp)
c0004bed:	e8 31 fd ff ff       	call   c0004923 <init_thread>
c0004bf2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004bf5:	c9                   	leave  
c0004bf6:	c3                   	ret    

c0004bf7 <init_list>:
c0004bf7:	55                   	push   %ebp
c0004bf8:	89 e5                	mov    %esp,%ebp
c0004bfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0004bfd:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004c04:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c07:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004c0d:	5d                   	pop    %ebp
c0004c0e:	c3                   	ret    

c0004c0f <lst_push>:
c0004c0f:	55                   	push   %ebp
c0004c10:	89 e5                	mov    %esp,%ebp
c0004c12:	83 ec 28             	sub    $0x28,%esp
c0004c15:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004c19:	75 24                	jne    c0004c3f <lst_push+0x30>
c0004c1b:	c7 44 24 0c cc 74 00 	movl   $0xc00074cc,0xc(%esp)
c0004c22:	c0 
c0004c23:	c7 44 24 08 d3 75 00 	movl   $0xc00075d3,0x8(%esp)
c0004c2a:	c0 
c0004c2b:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
c0004c32:	00 
c0004c33:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004c3a:	e8 61 e9 ff ff       	call   c00035a0 <panic_spin>
c0004c3f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004c42:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004c46:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c49:	89 04 24             	mov    %eax,(%esp)
c0004c4c:	e8 75 01 00 00       	call   c0004dc6 <lst_find>
c0004c51:	85 c0                	test   %eax,%eax
c0004c53:	74 24                	je     c0004c79 <lst_push+0x6a>
c0004c55:	c7 44 24 0c fd 74 00 	movl   $0xc00074fd,0xc(%esp)
c0004c5c:	c0 
c0004c5d:	c7 44 24 08 d3 75 00 	movl   $0xc00075d3,0x8(%esp)
c0004c64:	c0 
c0004c65:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
c0004c6c:	00 
c0004c6d:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004c74:	e8 27 e9 ff ff       	call   c00035a0 <panic_spin>
c0004c79:	e8 e8 e8 ff ff       	call   c0003566 <int_disable>
c0004c7e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004c81:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c84:	8b 40 04             	mov    0x4(%eax),%eax
c0004c87:	85 c0                	test   %eax,%eax
c0004c89:	75 26                	jne    c0004cb1 <lst_push+0xa2>
c0004c8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c8e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c91:	89 50 04             	mov    %edx,0x4(%eax)
c0004c94:	8b 45 08             	mov    0x8(%ebp),%eax
c0004c97:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004c9a:	89 10                	mov    %edx,(%eax)
c0004c9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004c9f:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004ca6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ca9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004caf:	eb 26                	jmp    c0004cd7 <lst_push+0xc8>
c0004cb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cb4:	8b 10                	mov    (%eax),%edx
c0004cb6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004cb9:	89 50 04             	mov    %edx,0x4(%eax)
c0004cbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cbf:	8b 00                	mov    (%eax),%eax
c0004cc1:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004cc4:	89 10                	mov    %edx,(%eax)
c0004cc6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004cc9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004ccf:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cd2:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004cd5:	89 10                	mov    %edx,(%eax)
c0004cd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0004cda:	8b 00                	mov    (%eax),%eax
c0004cdc:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004cdf:	75 3a                	jne    c0004d1b <lst_push+0x10c>
c0004ce1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ce4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004ce8:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ceb:	89 04 24             	mov    %eax,(%esp)
c0004cee:	e8 d3 00 00 00       	call   c0004dc6 <lst_find>
c0004cf3:	85 c0                	test   %eax,%eax
c0004cf5:	75 24                	jne    c0004d1b <lst_push+0x10c>
c0004cf7:	c7 44 24 0c 14 75 00 	movl   $0xc0007514,0xc(%esp)
c0004cfe:	c0 
c0004cff:	c7 44 24 08 d3 75 00 	movl   $0xc00075d3,0x8(%esp)
c0004d06:	c0 
c0004d07:	c7 44 24 04 1b 00 00 	movl   $0x1b,0x4(%esp)
c0004d0e:	00 
c0004d0f:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004d16:	e8 85 e8 ff ff       	call   c00035a0 <panic_spin>
c0004d1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004d1e:	89 04 24             	mov    %eax,(%esp)
c0004d21:	e8 54 e8 ff ff       	call   c000357a <set_int_status>
c0004d26:	c9                   	leave  
c0004d27:	c3                   	ret    

c0004d28 <lst_pop>:
c0004d28:	55                   	push   %ebp
c0004d29:	89 e5                	mov    %esp,%ebp
c0004d2b:	83 ec 28             	sub    $0x28,%esp
c0004d2e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d31:	8b 40 04             	mov    0x4(%eax),%eax
c0004d34:	85 c0                	test   %eax,%eax
c0004d36:	75 24                	jne    c0004d5c <lst_pop+0x34>
c0004d38:	c7 44 24 0c 40 75 00 	movl   $0xc0007540,0xc(%esp)
c0004d3f:	c0 
c0004d40:	c7 44 24 08 dc 75 00 	movl   $0xc00075dc,0x8(%esp)
c0004d47:	c0 
c0004d48:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c0004d4f:	00 
c0004d50:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004d57:	e8 44 e8 ff ff       	call   c00035a0 <panic_spin>
c0004d5c:	e8 05 e8 ff ff       	call   c0003566 <int_disable>
c0004d61:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004d64:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d67:	8b 40 04             	mov    0x4(%eax),%eax
c0004d6a:	85 c0                	test   %eax,%eax
c0004d6c:	75 07                	jne    c0004d75 <lst_pop+0x4d>
c0004d6e:	b8 00 00 00 00       	mov    $0x0,%eax
c0004d73:	eb 4f                	jmp    c0004dc4 <lst_pop+0x9c>
c0004d75:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d78:	8b 40 04             	mov    0x4(%eax),%eax
c0004d7b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004d7e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d81:	8b 40 04             	mov    0x4(%eax),%eax
c0004d84:	8b 10                	mov    (%eax),%edx
c0004d86:	8b 45 08             	mov    0x8(%ebp),%eax
c0004d89:	89 50 04             	mov    %edx,0x4(%eax)
c0004d8c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004d8f:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004d96:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004d99:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004d9f:	8b 45 08             	mov    0x8(%ebp),%eax
c0004da2:	8b 40 04             	mov    0x4(%eax),%eax
c0004da5:	85 c0                	test   %eax,%eax
c0004da7:	74 0d                	je     c0004db6 <lst_pop+0x8e>
c0004da9:	8b 45 08             	mov    0x8(%ebp),%eax
c0004dac:	8b 40 04             	mov    0x4(%eax),%eax
c0004daf:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004db6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004db9:	89 04 24             	mov    %eax,(%esp)
c0004dbc:	e8 b9 e7 ff ff       	call   c000357a <set_int_status>
c0004dc1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0004dc4:	c9                   	leave  
c0004dc5:	c3                   	ret    

c0004dc6 <lst_find>:
c0004dc6:	55                   	push   %ebp
c0004dc7:	89 e5                	mov    %esp,%ebp
c0004dc9:	83 ec 28             	sub    $0x28,%esp
c0004dcc:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004dd0:	75 24                	jne    c0004df6 <lst_find+0x30>
c0004dd2:	c7 44 24 0c cc 74 00 	movl   $0xc00074cc,0xc(%esp)
c0004dd9:	c0 
c0004dda:	c7 44 24 08 e4 75 00 	movl   $0xc00075e4,0x8(%esp)
c0004de1:	c0 
c0004de2:	c7 44 24 04 2f 00 00 	movl   $0x2f,0x4(%esp)
c0004de9:	00 
c0004dea:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004df1:	e8 aa e7 ff ff       	call   c00035a0 <panic_spin>
c0004df6:	8b 45 08             	mov    0x8(%ebp),%eax
c0004df9:	8b 40 04             	mov    0x4(%eax),%eax
c0004dfc:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004dff:	eb 08                	jmp    c0004e09 <lst_find+0x43>
c0004e01:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004e04:	8b 00                	mov    (%eax),%eax
c0004e06:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004e09:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004e0c:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004e0f:	74 06                	je     c0004e17 <lst_find+0x51>
c0004e11:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004e15:	75 ea                	jne    c0004e01 <lst_find+0x3b>
c0004e17:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004e1b:	75 07                	jne    c0004e24 <lst_find+0x5e>
c0004e1d:	b8 00 00 00 00       	mov    $0x0,%eax
c0004e22:	eb 05                	jmp    c0004e29 <lst_find+0x63>
c0004e24:	b8 01 00 00 00       	mov    $0x1,%eax
c0004e29:	c9                   	leave  
c0004e2a:	c3                   	ret    

c0004e2b <lst_remove>:
c0004e2b:	55                   	push   %ebp
c0004e2c:	89 e5                	mov    %esp,%ebp
c0004e2e:	83 ec 28             	sub    $0x28,%esp
c0004e31:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e34:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004e38:	8b 45 08             	mov    0x8(%ebp),%eax
c0004e3b:	89 04 24             	mov    %eax,(%esp)
c0004e3e:	e8 83 ff ff ff       	call   c0004dc6 <lst_find>
c0004e43:	85 c0                	test   %eax,%eax
c0004e45:	75 24                	jne    c0004e6b <lst_remove+0x40>
c0004e47:	c7 44 24 0c 54 75 00 	movl   $0xc0007554,0xc(%esp)
c0004e4e:	c0 
c0004e4f:	c7 44 24 08 ed 75 00 	movl   $0xc00075ed,0x8(%esp)
c0004e56:	c0 
c0004e57:	c7 44 24 04 3a 00 00 	movl   $0x3a,0x4(%esp)
c0004e5e:	00 
c0004e5f:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004e66:	e8 35 e7 ff ff       	call   c00035a0 <panic_spin>
c0004e6b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004e6f:	74 47                	je     c0004eb8 <lst_remove+0x8d>
c0004e71:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e74:	8b 40 04             	mov    0x4(%eax),%eax
c0004e77:	85 c0                	test   %eax,%eax
c0004e79:	75 09                	jne    c0004e84 <lst_remove+0x59>
c0004e7b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004e7e:	8b 00                	mov    (%eax),%eax
c0004e80:	85 c0                	test   %eax,%eax
c0004e82:	74 07                	je     c0004e8b <lst_remove+0x60>
c0004e84:	b8 01 00 00 00       	mov    $0x1,%eax
c0004e89:	eb 05                	jmp    c0004e90 <lst_remove+0x65>
c0004e8b:	b8 00 00 00 00       	mov    $0x0,%eax
c0004e90:	85 c0                	test   %eax,%eax
c0004e92:	75 24                	jne    c0004eb8 <lst_remove+0x8d>
c0004e94:	c7 44 24 0c 68 75 00 	movl   $0xc0007568,0xc(%esp)
c0004e9b:	c0 
c0004e9c:	c7 44 24 08 ed 75 00 	movl   $0xc00075ed,0x8(%esp)
c0004ea3:	c0 
c0004ea4:	c7 44 24 04 3b 00 00 	movl   $0x3b,0x4(%esp)
c0004eab:	00 
c0004eac:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004eb3:	e8 e8 e6 ff ff       	call   c00035a0 <panic_spin>
c0004eb8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ebb:	8b 40 04             	mov    0x4(%eax),%eax
c0004ebe:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0004ec1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ec4:	8b 00                	mov    (%eax),%eax
c0004ec6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0004ec9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0004ecd:	75 15                	jne    c0004ee4 <lst_remove+0xb9>
c0004ecf:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ed2:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004ed9:	8b 45 08             	mov    0x8(%ebp),%eax
c0004edc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004ee2:	eb 1b                	jmp    c0004eff <lst_remove+0xd4>
c0004ee4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0004ee7:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0004eea:	89 10                	mov    %edx,(%eax)
c0004eec:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004eef:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004ef6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004ef9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004eff:	c9                   	leave  
c0004f00:	c3                   	ret    

c0004f01 <lst_head_insert>:
c0004f01:	55                   	push   %ebp
c0004f02:	89 e5                	mov    %esp,%ebp
c0004f04:	83 ec 18             	sub    $0x18,%esp
c0004f07:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004f0a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0004f0e:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f11:	89 04 24             	mov    %eax,(%esp)
c0004f14:	e8 ad fe ff ff       	call   c0004dc6 <lst_find>
c0004f19:	85 c0                	test   %eax,%eax
c0004f1b:	74 24                	je     c0004f41 <lst_head_insert+0x40>
c0004f1d:	c7 44 24 0c a2 75 00 	movl   $0xc00075a2,0xc(%esp)
c0004f24:	c0 
c0004f25:	c7 44 24 08 f8 75 00 	movl   $0xc00075f8,0x8(%esp)
c0004f2c:	c0 
c0004f2d:	c7 44 24 04 4a 00 00 	movl   $0x4a,0x4(%esp)
c0004f34:	00 
c0004f35:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004f3c:	e8 5f e6 ff ff       	call   c00035a0 <panic_spin>
c0004f41:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0004f45:	75 24                	jne    c0004f6b <lst_head_insert+0x6a>
c0004f47:	c7 44 24 0c cc 74 00 	movl   $0xc00074cc,0xc(%esp)
c0004f4e:	c0 
c0004f4f:	c7 44 24 08 f8 75 00 	movl   $0xc00075f8,0x8(%esp)
c0004f56:	c0 
c0004f57:	c7 44 24 04 4b 00 00 	movl   $0x4b,0x4(%esp)
c0004f5e:	00 
c0004f5f:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004f66:	e8 35 e6 ff ff       	call   c00035a0 <panic_spin>
c0004f6b:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f6e:	8b 40 04             	mov    0x4(%eax),%eax
c0004f71:	85 c0                	test   %eax,%eax
c0004f73:	75 28                	jne    c0004f9d <lst_head_insert+0x9c>
c0004f75:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f78:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004f7b:	89 10                	mov    %edx,(%eax)
c0004f7d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f80:	8b 10                	mov    (%eax),%edx
c0004f82:	8b 45 08             	mov    0x8(%ebp),%eax
c0004f85:	89 50 04             	mov    %edx,0x4(%eax)
c0004f88:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004f8b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004f92:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004f95:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0004f9b:	eb 2a                	jmp    c0004fc7 <lst_head_insert+0xc6>
c0004f9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fa0:	8b 40 04             	mov    0x4(%eax),%eax
c0004fa3:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004fa6:	89 50 04             	mov    %edx,0x4(%eax)
c0004fa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fac:	8b 50 04             	mov    0x4(%eax),%edx
c0004faf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004fb2:	89 10                	mov    %edx,(%eax)
c0004fb4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0004fb7:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0004fbe:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fc1:	8b 55 0c             	mov    0xc(%ebp),%edx
c0004fc4:	89 50 04             	mov    %edx,0x4(%eax)
c0004fc7:	8b 45 08             	mov    0x8(%ebp),%eax
c0004fca:	8b 40 04             	mov    0x4(%eax),%eax
c0004fcd:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0004fd0:	74 24                	je     c0004ff6 <lst_head_insert+0xf5>
c0004fd2:	c7 44 24 0c b4 75 00 	movl   $0xc00075b4,0xc(%esp)
c0004fd9:	c0 
c0004fda:	c7 44 24 08 f8 75 00 	movl   $0xc00075f8,0x8(%esp)
c0004fe1:	c0 
c0004fe2:	c7 44 24 04 57 00 00 	movl   $0x57,0x4(%esp)
c0004fe9:	00 
c0004fea:	c7 04 24 dc 74 00 c0 	movl   $0xc00074dc,(%esp)
c0004ff1:	e8 aa e5 ff ff       	call   c00035a0 <panic_spin>
c0004ff6:	c9                   	leave  
c0004ff7:	c3                   	ret    

c0004ff8 <lst_empty>:
c0004ff8:	55                   	push   %ebp
c0004ff9:	89 e5                	mov    %esp,%ebp
c0004ffb:	8b 45 08             	mov    0x8(%ebp),%eax
c0004ffe:	8b 40 04             	mov    0x4(%eax),%eax
c0005001:	85 c0                	test   %eax,%eax
c0005003:	0f 94 c0             	sete   %al
c0005006:	0f b6 c0             	movzbl %al,%eax
c0005009:	5d                   	pop    %ebp
c000500a:	c3                   	ret    

c000500b <lst_traverse>:
c000500b:	55                   	push   %ebp
c000500c:	89 e5                	mov    %esp,%ebp
c000500e:	83 ec 28             	sub    $0x28,%esp
c0005011:	8b 45 08             	mov    0x8(%ebp),%eax
c0005014:	8b 40 04             	mov    0x4(%eax),%eax
c0005017:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000501a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c000501e:	75 0e                	jne    c000502e <lst_traverse+0x23>
c0005020:	c7 04 24 c4 75 00 c0 	movl   $0xc00075c4,(%esp)
c0005027:	e8 71 1f 00 00       	call   c0006f9d <__printk>
c000502c:	eb 15                	jmp    c0005043 <lst_traverse+0x38>
c000502e:	eb 13                	jmp    c0005043 <lst_traverse+0x38>
c0005030:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005033:	89 04 24             	mov    %eax,(%esp)
c0005036:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005039:	ff d0                	call   *%eax
c000503b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000503e:	8b 00                	mov    (%eax),%eax
c0005040:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005043:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0005047:	75 e7                	jne    c0005030 <lst_traverse+0x25>
c0005049:	c9                   	leave  
c000504a:	c3                   	ret    
c000504b:	66 90                	xchg   %ax,%ax
c000504d:	66 90                	xchg   %ax,%ax
c000504f:	90                   	nop

c0005050 <switch_on>:
c0005050:	57                   	push   %edi
c0005051:	56                   	push   %esi
c0005052:	55                   	push   %ebp
c0005053:	53                   	push   %ebx
c0005054:	89 e5                	mov    %esp,%ebp
c0005056:	8b 45 14             	mov    0x14(%ebp),%eax
c0005059:	89 20                	mov    %esp,(%eax)
c000505b:	8b 45 18             	mov    0x18(%ebp),%eax
c000505e:	8b 20                	mov    (%eax),%esp
c0005060:	5b                   	pop    %ebx
c0005061:	5d                   	pop    %ebp
c0005062:	5e                   	pop    %esi
c0005063:	5f                   	pop    %edi
c0005064:	c3                   	ret    

c0005065 <init_mutex>:
c0005065:	55                   	push   %ebp
c0005066:	89 e5                	mov    %esp,%ebp
c0005068:	83 ec 18             	sub    $0x18,%esp
c000506b:	8b 45 08             	mov    0x8(%ebp),%eax
c000506e:	89 04 24             	mov    %eax,(%esp)
c0005071:	e8 2c 00 00 00       	call   c00050a2 <sema_init>
c0005076:	8b 45 08             	mov    0x8(%ebp),%eax
c0005079:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0005080:	00 
c0005081:	89 04 24             	mov    %eax,(%esp)
c0005084:	e8 3b 00 00 00       	call   c00050c4 <set_sema_sgcnt>
c0005089:	8b 45 08             	mov    0x8(%ebp),%eax
c000508c:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0005093:	8b 45 08             	mov    0x8(%ebp),%eax
c0005096:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c000509d:	8b 45 08             	mov    0x8(%ebp),%eax
c00050a0:	c9                   	leave  
c00050a1:	c3                   	ret    

c00050a2 <sema_init>:
c00050a2:	55                   	push   %ebp
c00050a3:	89 e5                	mov    %esp,%ebp
c00050a5:	83 ec 18             	sub    $0x18,%esp
c00050a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00050ab:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00050b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00050b4:	83 c0 04             	add    $0x4,%eax
c00050b7:	89 04 24             	mov    %eax,(%esp)
c00050ba:	e8 38 fb ff ff       	call   c0004bf7 <init_list>
c00050bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00050c2:	c9                   	leave  
c00050c3:	c3                   	ret    

c00050c4 <set_sema_sgcnt>:
c00050c4:	55                   	push   %ebp
c00050c5:	89 e5                	mov    %esp,%ebp
c00050c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00050ca:	8b 55 0c             	mov    0xc(%ebp),%edx
c00050cd:	89 10                	mov    %edx,(%eax)
c00050cf:	5d                   	pop    %ebp
c00050d0:	c3                   	ret    

c00050d1 <sema_down>:
c00050d1:	55                   	push   %ebp
c00050d2:	89 e5                	mov    %esp,%ebp
c00050d4:	83 ec 28             	sub    $0x28,%esp
c00050d7:	e8 8a e4 ff ff       	call   c0003566 <int_disable>
c00050dc:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00050df:	e8 20 f5 ff ff       	call   c0004604 <get_running>
c00050e4:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00050e7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00050ee:	e9 9d 00 00 00       	jmp    c0005190 <sema_down+0xbf>
c00050f3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00050f7:	75 5f                	jne    c0005158 <sema_down+0x87>
c00050f9:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00050fc:	8d 50 38             	lea    0x38(%eax),%edx
c00050ff:	8b 45 08             	mov    0x8(%ebp),%eax
c0005102:	83 c0 04             	add    $0x4,%eax
c0005105:	89 54 24 04          	mov    %edx,0x4(%esp)
c0005109:	89 04 24             	mov    %eax,(%esp)
c000510c:	e8 b5 fc ff ff       	call   c0004dc6 <lst_find>
c0005111:	85 c0                	test   %eax,%eax
c0005113:	74 24                	je     c0005139 <sema_down+0x68>
c0005115:	c7 44 24 0c 08 76 00 	movl   $0xc0007608,0xc(%esp)
c000511c:	c0 
c000511d:	c7 44 24 08 a7 76 00 	movl   $0xc00076a7,0x8(%esp)
c0005124:	c0 
c0005125:	c7 44 24 04 21 00 00 	movl   $0x21,0x4(%esp)
c000512c:	00 
c000512d:	c7 04 24 2e 76 00 c0 	movl   $0xc000762e,(%esp)
c0005134:	e8 67 e4 ff ff       	call   c00035a0 <panic_spin>
c0005139:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000513c:	8d 50 38             	lea    0x38(%eax),%edx
c000513f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005142:	83 c0 04             	add    $0x4,%eax
c0005145:	89 54 24 04          	mov    %edx,0x4(%esp)
c0005149:	89 04 24             	mov    %eax,(%esp)
c000514c:	e8 be fa ff ff       	call   c0004c0f <lst_push>
c0005151:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0005158:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000515b:	89 04 24             	mov    %eax,(%esp)
c000515e:	e8 51 01 00 00       	call   c00052b4 <thread_block>
c0005163:	e8 c6 e3 ff ff       	call   c000352e <get_int_status>
c0005168:	85 c0                	test   %eax,%eax
c000516a:	74 24                	je     c0005190 <sema_down+0xbf>
c000516c:	c7 44 24 0c 49 76 00 	movl   $0xc0007649,0xc(%esp)
c0005173:	c0 
c0005174:	c7 44 24 08 a7 76 00 	movl   $0xc00076a7,0x8(%esp)
c000517b:	c0 
c000517c:	c7 44 24 04 26 00 00 	movl   $0x26,0x4(%esp)
c0005183:	00 
c0005184:	c7 04 24 2e 76 00 c0 	movl   $0xc000762e,(%esp)
c000518b:	e8 10 e4 ff ff       	call   c00035a0 <panic_spin>
c0005190:	8b 45 08             	mov    0x8(%ebp),%eax
c0005193:	8b 00                	mov    (%eax),%eax
c0005195:	85 c0                	test   %eax,%eax
c0005197:	0f 8e 56 ff ff ff    	jle    c00050f3 <sema_down+0x22>
c000519d:	8b 45 08             	mov    0x8(%ebp),%eax
c00051a0:	8b 00                	mov    (%eax),%eax
c00051a2:	8d 50 ff             	lea    -0x1(%eax),%edx
c00051a5:	8b 45 08             	mov    0x8(%ebp),%eax
c00051a8:	89 10                	mov    %edx,(%eax)
c00051aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00051ad:	89 04 24             	mov    %eax,(%esp)
c00051b0:	e8 c5 e3 ff ff       	call   c000357a <set_int_status>
c00051b5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00051b8:	c9                   	leave  
c00051b9:	c3                   	ret    

c00051ba <sema_up>:
c00051ba:	55                   	push   %ebp
c00051bb:	89 e5                	mov    %esp,%ebp
c00051bd:	83 ec 28             	sub    $0x28,%esp
c00051c0:	e8 a1 e3 ff ff       	call   c0003566 <int_disable>
c00051c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00051c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00051cb:	83 c0 04             	add    $0x4,%eax
c00051ce:	89 04 24             	mov    %eax,(%esp)
c00051d1:	e8 22 fe ff ff       	call   c0004ff8 <lst_empty>
c00051d6:	85 c0                	test   %eax,%eax
c00051d8:	75 1f                	jne    c00051f9 <sema_up+0x3f>
c00051da:	8b 45 08             	mov    0x8(%ebp),%eax
c00051dd:	83 c0 04             	add    $0x4,%eax
c00051e0:	89 04 24             	mov    %eax,(%esp)
c00051e3:	e8 40 fb ff ff       	call   c0004d28 <lst_pop>
c00051e8:	83 e8 38             	sub    $0x38,%eax
c00051eb:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00051ee:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00051f1:	89 04 24             	mov    %eax,(%esp)
c00051f4:	e8 47 01 00 00       	call   c0005340 <thread_unblock>
c00051f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00051fc:	8b 00                	mov    (%eax),%eax
c00051fe:	8d 50 01             	lea    0x1(%eax),%edx
c0005201:	8b 45 08             	mov    0x8(%ebp),%eax
c0005204:	89 10                	mov    %edx,(%eax)
c0005206:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005209:	89 04 24             	mov    %eax,(%esp)
c000520c:	e8 69 e3 ff ff       	call   c000357a <set_int_status>
c0005211:	c9                   	leave  
c0005212:	c3                   	ret    

c0005213 <lock>:
c0005213:	55                   	push   %ebp
c0005214:	89 e5                	mov    %esp,%ebp
c0005216:	83 ec 28             	sub    $0x28,%esp
c0005219:	e8 48 e3 ff ff       	call   c0003566 <int_disable>
c000521e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005221:	8b 45 08             	mov    0x8(%ebp),%eax
c0005224:	8b 40 0c             	mov    0xc(%eax),%eax
c0005227:	85 c0                	test   %eax,%eax
c0005229:	74 20                	je     c000524b <lock+0x38>
c000522b:	e8 d4 f3 ff ff       	call   c0004604 <get_running>
c0005230:	8b 55 08             	mov    0x8(%ebp),%edx
c0005233:	8b 52 0c             	mov    0xc(%edx),%edx
c0005236:	39 d0                	cmp    %edx,%eax
c0005238:	75 11                	jne    c000524b <lock+0x38>
c000523a:	8b 45 08             	mov    0x8(%ebp),%eax
c000523d:	8b 40 10             	mov    0x10(%eax),%eax
c0005240:	8d 50 01             	lea    0x1(%eax),%edx
c0005243:	8b 45 08             	mov    0x8(%ebp),%eax
c0005246:	89 50 10             	mov    %edx,0x10(%eax)
c0005249:	eb 11                	jmp    c000525c <lock+0x49>
c000524b:	8b 45 08             	mov    0x8(%ebp),%eax
c000524e:	89 04 24             	mov    %eax,(%esp)
c0005251:	e8 7b fe ff ff       	call   c00050d1 <sema_down>
c0005256:	8b 55 08             	mov    0x8(%ebp),%edx
c0005259:	89 42 0c             	mov    %eax,0xc(%edx)
c000525c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000525f:	89 04 24             	mov    %eax,(%esp)
c0005262:	e8 13 e3 ff ff       	call   c000357a <set_int_status>
c0005267:	c9                   	leave  
c0005268:	c3                   	ret    

c0005269 <unlock>:
c0005269:	55                   	push   %ebp
c000526a:	89 e5                	mov    %esp,%ebp
c000526c:	83 ec 28             	sub    $0x28,%esp
c000526f:	e8 f2 e2 ff ff       	call   c0003566 <int_disable>
c0005274:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005277:	8b 45 08             	mov    0x8(%ebp),%eax
c000527a:	8b 40 10             	mov    0x10(%eax),%eax
c000527d:	85 c0                	test   %eax,%eax
c000527f:	7e 11                	jle    c0005292 <unlock+0x29>
c0005281:	8b 45 08             	mov    0x8(%ebp),%eax
c0005284:	8b 40 10             	mov    0x10(%eax),%eax
c0005287:	8d 50 ff             	lea    -0x1(%eax),%edx
c000528a:	8b 45 08             	mov    0x8(%ebp),%eax
c000528d:	89 50 10             	mov    %edx,0x10(%eax)
c0005290:	eb 15                	jmp    c00052a7 <unlock+0x3e>
c0005292:	8b 45 08             	mov    0x8(%ebp),%eax
c0005295:	89 04 24             	mov    %eax,(%esp)
c0005298:	e8 1d ff ff ff       	call   c00051ba <sema_up>
c000529d:	8b 45 08             	mov    0x8(%ebp),%eax
c00052a0:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c00052a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00052aa:	89 04 24             	mov    %eax,(%esp)
c00052ad:	e8 c8 e2 ff ff       	call   c000357a <set_int_status>
c00052b2:	c9                   	leave  
c00052b3:	c3                   	ret    

c00052b4 <thread_block>:
c00052b4:	55                   	push   %ebp
c00052b5:	89 e5                	mov    %esp,%ebp
c00052b7:	83 ec 18             	sub    $0x18,%esp
c00052ba:	e8 6f e2 ff ff       	call   c000352e <get_int_status>
c00052bf:	85 c0                	test   %eax,%eax
c00052c1:	74 24                	je     c00052e7 <thread_block+0x33>
c00052c3:	c7 44 24 0c 49 76 00 	movl   $0xc0007649,0xc(%esp)
c00052ca:	c0 
c00052cb:	c7 44 24 08 b1 76 00 	movl   $0xc00076b1,0x8(%esp)
c00052d2:	c0 
c00052d3:	c7 44 24 04 52 00 00 	movl   $0x52,0x4(%esp)
c00052da:	00 
c00052db:	c7 04 24 2e 76 00 c0 	movl   $0xc000762e,(%esp)
c00052e2:	e8 b9 e2 ff ff       	call   c00035a0 <panic_spin>
c00052e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00052ea:	8b 40 28             	mov    0x28(%eax),%eax
c00052ed:	85 c0                	test   %eax,%eax
c00052ef:	74 2f                	je     c0005320 <thread_block+0x6c>
c00052f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00052f4:	8b 40 28             	mov    0x28(%eax),%eax
c00052f7:	83 f8 03             	cmp    $0x3,%eax
c00052fa:	75 24                	jne    c0005320 <thread_block+0x6c>
c00052fc:	c7 44 24 0c 68 76 00 	movl   $0xc0007668,0xc(%esp)
c0005303:	c0 
c0005304:	c7 44 24 08 b1 76 00 	movl   $0xc00076b1,0x8(%esp)
c000530b:	c0 
c000530c:	c7 44 24 04 53 00 00 	movl   $0x53,0x4(%esp)
c0005313:	00 
c0005314:	c7 04 24 2e 76 00 c0 	movl   $0xc000762e,(%esp)
c000531b:	e8 80 e2 ff ff       	call   c00035a0 <panic_spin>
c0005320:	8b 45 08             	mov    0x8(%ebp),%eax
c0005323:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
c000532a:	8b 45 08             	mov    0x8(%ebp),%eax
c000532d:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
c0005334:	e8 f1 c2 ff ff       	call   c000162a <handle_clock_intr>
c0005339:	e8 28 e2 ff ff       	call   c0003566 <int_disable>
c000533e:	c9                   	leave  
c000533f:	c3                   	ret    

c0005340 <thread_unblock>:
c0005340:	55                   	push   %ebp
c0005341:	89 e5                	mov    %esp,%ebp
c0005343:	83 ec 18             	sub    $0x18,%esp
c0005346:	e8 e3 e1 ff ff       	call   c000352e <get_int_status>
c000534b:	85 c0                	test   %eax,%eax
c000534d:	74 24                	je     c0005373 <thread_unblock+0x33>
c000534f:	c7 44 24 0c 49 76 00 	movl   $0xc0007649,0xc(%esp)
c0005356:	c0 
c0005357:	c7 44 24 08 be 76 00 	movl   $0xc00076be,0x8(%esp)
c000535e:	c0 
c000535f:	c7 44 24 04 5b 00 00 	movl   $0x5b,0x4(%esp)
c0005366:	00 
c0005367:	c7 04 24 2e 76 00 c0 	movl   $0xc000762e,(%esp)
c000536e:	e8 2d e2 ff ff       	call   c00035a0 <panic_spin>
c0005373:	8b 45 08             	mov    0x8(%ebp),%eax
c0005376:	8b 40 28             	mov    0x28(%eax),%eax
c0005379:	85 c0                	test   %eax,%eax
c000537b:	74 24                	je     c00053a1 <thread_unblock+0x61>
c000537d:	c7 44 24 0c 94 76 00 	movl   $0xc0007694,0xc(%esp)
c0005384:	c0 
c0005385:	c7 44 24 08 be 76 00 	movl   $0xc00076be,0x8(%esp)
c000538c:	c0 
c000538d:	c7 44 24 04 5c 00 00 	movl   $0x5c,0x4(%esp)
c0005394:	00 
c0005395:	c7 04 24 2e 76 00 c0 	movl   $0xc000762e,(%esp)
c000539c:	e8 ff e1 ff ff       	call   c00035a0 <panic_spin>
c00053a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00053a4:	c7 40 28 02 00 00 00 	movl   $0x2,0x28(%eax)
c00053ab:	8b 45 08             	mov    0x8(%ebp),%eax
c00053ae:	83 c0 38             	add    $0x38,%eax
c00053b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00053b5:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c00053bc:	e8 40 fb ff ff       	call   c0004f01 <lst_head_insert>
c00053c1:	c9                   	leave  
c00053c2:	c3                   	ret    

c00053c3 <init_console>:
c00053c3:	55                   	push   %ebp
c00053c4:	89 e5                	mov    %esp,%ebp
c00053c6:	83 ec 18             	sub    $0x18,%esp
c00053c9:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c00053d0:	e8 90 fc ff ff       	call   c0005065 <init_mutex>
c00053d5:	c9                   	leave  
c00053d6:	c3                   	ret    

c00053d7 <console_put_str>:
c00053d7:	55                   	push   %ebp
c00053d8:	89 e5                	mov    %esp,%ebp
c00053da:	83 ec 18             	sub    $0x18,%esp
c00053dd:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c00053e4:	e8 2a fe ff ff       	call   c0005213 <lock>
c00053e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00053ec:	89 04 24             	mov    %eax,(%esp)
c00053ef:	e8 11 e1 ff ff       	call   c0003505 <put_str>
c00053f4:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c00053fb:	e8 69 fe ff ff       	call   c0005269 <unlock>
c0005400:	c9                   	leave  
c0005401:	c3                   	ret    

c0005402 <console_put_char>:
c0005402:	55                   	push   %ebp
c0005403:	89 e5                	mov    %esp,%ebp
c0005405:	83 ec 18             	sub    $0x18,%esp
c0005408:	8b 45 08             	mov    0x8(%ebp),%eax
c000540b:	88 45 f4             	mov    %al,-0xc(%ebp)
c000540e:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005415:	e8 f9 fd ff ff       	call   c0005213 <lock>
c000541a:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c000541e:	89 04 24             	mov    %eax,(%esp)
c0005421:	e8 5a df ff ff       	call   c0003380 <put_char>
c0005426:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c000542d:	e8 37 fe ff ff       	call   c0005269 <unlock>
c0005432:	c9                   	leave  
c0005433:	c3                   	ret    

c0005434 <console_put_int>:
c0005434:	55                   	push   %ebp
c0005435:	89 e5                	mov    %esp,%ebp
c0005437:	83 ec 18             	sub    $0x18,%esp
c000543a:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005441:	e8 cd fd ff ff       	call   c0005213 <lock>
c0005446:	8b 45 08             	mov    0x8(%ebp),%eax
c0005449:	89 04 24             	mov    %eax,(%esp)
c000544c:	e8 12 e0 ff ff       	call   c0003463 <put_int>
c0005451:	c7 04 24 e0 a2 00 c0 	movl   $0xc000a2e0,(%esp)
c0005458:	e8 0c fe ff ff       	call   c0005269 <unlock>
c000545d:	c9                   	leave  
c000545e:	c3                   	ret    

c000545f <read_port>:
c000545f:	55                   	push   %ebp
c0005460:	89 e5                	mov    %esp,%ebp
c0005462:	83 ec 14             	sub    $0x14,%esp
c0005465:	8b 45 08             	mov    0x8(%ebp),%eax
c0005468:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c000546c:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
c0005470:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c0005474:	ec                   	in     (%dx),%al
c0005475:	88 45 ff             	mov    %al,-0x1(%ebp)
c0005478:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c000547c:	c9                   	leave  
c000547d:	c3                   	ret    

c000547e <init_keyboard>:
c000547e:	55                   	push   %ebp
c000547f:	89 e5                	mov    %esp,%ebp
c0005481:	81 ec d8 00 00 00    	sub    $0xd8,%esp
c0005487:	c7 05 24 b1 00 c0 00 	movl   $0x0,0xc000b124
c000548e:	00 00 00 
c0005491:	c7 05 3c b1 00 c0 00 	movl   $0x0,0xc000b13c
c0005498:	00 00 00 
c000549b:	c7 05 38 b1 00 c0 00 	movl   $0x0,0xc000b138
c00054a2:	00 00 00 
c00054a5:	c7 05 74 b0 00 c0 00 	movl   $0x0,0xc000b074
c00054ac:	00 00 00 
c00054af:	c7 05 70 b0 00 c0 00 	movl   $0x0,0xc000b070
c00054b6:	00 00 00 
c00054b9:	8d 85 38 ff ff ff    	lea    -0xc8(%ebp),%eax
c00054bf:	c7 44 24 04 80 b0 00 	movl   $0xc000b080,0x4(%esp)
c00054c6:	c0 
c00054c7:	89 04 24             	mov    %eax,(%esp)
c00054ca:	e8 2f 04 00 00       	call   c00058fe <init_cq>
c00054cf:	83 ec 04             	sub    $0x4,%esp
c00054d2:	c7 44 24 08 80 b0 00 	movl   $0xc000b080,0x8(%esp)
c00054d9:	c0 
c00054da:	c7 44 24 04 f6 59 00 	movl   $0xc00059f6,0x4(%esp)
c00054e1:	c0 
c00054e2:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c00054e9:	e8 3c 03 00 00       	call   c000582a <init_condition_var>
c00054ee:	c7 44 24 08 80 b0 00 	movl   $0xc000b080,0x8(%esp)
c00054f5:	c0 
c00054f6:	c7 44 24 04 41 5a 00 	movl   $0xc0005a41,0x4(%esp)
c00054fd:	c0 
c00054fe:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c0005505:	e8 20 03 00 00       	call   c000582a <init_condition_var>
c000550a:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c0005511:	e8 4f fb ff ff       	call   c0005065 <init_mutex>
c0005516:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c000551d:	e8 43 fb ff ff       	call   c0005065 <init_mutex>
c0005522:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0005529:	00 
c000552a:	c7 44 24 08 db 57 00 	movl   $0xc00057db,0x8(%esp)
c0005531:	c0 
c0005532:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c0005539:	00 
c000553a:	c7 04 24 cd 76 00 c0 	movl   $0xc00076cd,(%esp)
c0005541:	e8 6a f6 ff ff       	call   c0004bb0 <thread_start>
c0005546:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005549:	c9                   	leave  
c000554a:	c3                   	ret    

c000554b <keyboard_int_handle>:
c000554b:	55                   	push   %ebp
c000554c:	89 e5                	mov    %esp,%ebp
c000554e:	83 ec 28             	sub    $0x28,%esp
c0005551:	c7 04 24 60 00 00 00 	movl   $0x60,(%esp)
c0005558:	e8 02 ff ff ff       	call   c000545f <read_port>
c000555d:	0f b6 c0             	movzbl %al,%eax
c0005560:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c0005564:	66 81 7d f6 e0 00    	cmpw   $0xe0,-0xa(%ebp)
c000556a:	75 0f                	jne    c000557b <keyboard_int_handle+0x30>
c000556c:	c7 05 24 b1 00 c0 01 	movl   $0x1,0xc000b124
c0005573:	00 00 00 
c0005576:	e9 0c 02 00 00       	jmp    c0005787 <keyboard_int_handle+0x23c>
c000557b:	a1 24 b1 00 c0       	mov    0xc000b124,%eax
c0005580:	85 c0                	test   %eax,%eax
c0005582:	74 06                	je     c000558a <keyboard_int_handle+0x3f>
c0005584:	66 c7 45 f6 01 00    	movw   $0x1,-0xa(%ebp)
c000558a:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000558e:	25 80 00 00 00       	and    $0x80,%eax
c0005593:	85 c0                	test   %eax,%eax
c0005595:	0f 95 c0             	setne  %al
c0005598:	0f b6 c0             	movzbl %al,%eax
c000559b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000559e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c00055a2:	74 5d                	je     c0005601 <keyboard_int_handle+0xb6>
c00055a4:	66 83 45 f6 80       	addw   $0xff80,-0xa(%ebp)
c00055a9:	66 83 7d f6 38       	cmpw   $0x38,-0xa(%ebp)
c00055ae:	74 08                	je     c00055b8 <keyboard_int_handle+0x6d>
c00055b0:	66 81 7d f6 38 e0    	cmpw   $0xe038,-0xa(%ebp)
c00055b6:	75 0c                	jne    c00055c4 <keyboard_int_handle+0x79>
c00055b8:	c7 05 74 b0 00 c0 00 	movl   $0x0,0xc000b074
c00055bf:	00 00 00 
c00055c2:	eb 38                	jmp    c00055fc <keyboard_int_handle+0xb1>
c00055c4:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c00055c9:	74 07                	je     c00055d2 <keyboard_int_handle+0x87>
c00055cb:	66 83 7d f6 36       	cmpw   $0x36,-0xa(%ebp)
c00055d0:	75 0c                	jne    c00055de <keyboard_int_handle+0x93>
c00055d2:	c7 05 3c b1 00 c0 00 	movl   $0x0,0xc000b13c
c00055d9:	00 00 00 
c00055dc:	eb 1e                	jmp    c00055fc <keyboard_int_handle+0xb1>
c00055de:	66 83 7d f6 1d       	cmpw   $0x1d,-0xa(%ebp)
c00055e3:	74 08                	je     c00055ed <keyboard_int_handle+0xa2>
c00055e5:	66 81 7d f6 1d e0    	cmpw   $0xe01d,-0xa(%ebp)
c00055eb:	75 0f                	jne    c00055fc <keyboard_int_handle+0xb1>
c00055ed:	c7 05 38 b1 00 c0 00 	movl   $0x0,0xc000b138
c00055f4:	00 00 00 
c00055f7:	e9 8b 01 00 00       	jmp    c0005787 <keyboard_int_handle+0x23c>
c00055fc:	e9 86 01 00 00       	jmp    c0005787 <keyboard_int_handle+0x23c>
c0005601:	66 83 7d f6 38       	cmpw   $0x38,-0xa(%ebp)
c0005606:	74 08                	je     c0005610 <keyboard_int_handle+0xc5>
c0005608:	66 81 7d f6 38 e0    	cmpw   $0xe038,-0xa(%ebp)
c000560e:	75 0f                	jne    c000561f <keyboard_int_handle+0xd4>
c0005610:	c7 05 74 b0 00 c0 01 	movl   $0x1,0xc000b074
c0005617:	00 00 00 
c000561a:	e9 68 01 00 00       	jmp    c0005787 <keyboard_int_handle+0x23c>
c000561f:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c0005624:	74 07                	je     c000562d <keyboard_int_handle+0xe2>
c0005626:	66 83 7d f6 36       	cmpw   $0x36,-0xa(%ebp)
c000562b:	75 0f                	jne    c000563c <keyboard_int_handle+0xf1>
c000562d:	c7 05 3c b1 00 c0 01 	movl   $0x1,0xc000b13c
c0005634:	00 00 00 
c0005637:	e9 4b 01 00 00       	jmp    c0005787 <keyboard_int_handle+0x23c>
c000563c:	66 83 7d f6 1d       	cmpw   $0x1d,-0xa(%ebp)
c0005641:	74 08                	je     c000564b <keyboard_int_handle+0x100>
c0005643:	66 81 7d f6 1d e0    	cmpw   $0xe01d,-0xa(%ebp)
c0005649:	75 0f                	jne    c000565a <keyboard_int_handle+0x10f>
c000564b:	c7 05 38 b1 00 c0 01 	movl   $0x1,0xc000b138
c0005652:	00 00 00 
c0005655:	e9 2d 01 00 00       	jmp    c0005787 <keyboard_int_handle+0x23c>
c000565a:	66 83 7d f6 3a       	cmpw   $0x3a,-0xa(%ebp)
c000565f:	75 17                	jne    c0005678 <keyboard_int_handle+0x12d>
c0005661:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c0005666:	85 c0                	test   %eax,%eax
c0005668:	0f 94 c0             	sete   %al
c000566b:	0f b6 c0             	movzbl %al,%eax
c000566e:	a3 70 b0 00 c0       	mov    %eax,0xc000b070
c0005673:	e9 0f 01 00 00       	jmp    c0005787 <keyboard_int_handle+0x23c>
c0005678:	66 83 7d f6 0f       	cmpw   $0xf,-0xa(%ebp)
c000567d:	76 07                	jbe    c0005686 <keyboard_int_handle+0x13b>
c000567f:	66 83 7d f6 19       	cmpw   $0x19,-0xa(%ebp)
c0005684:	76 1c                	jbe    c00056a2 <keyboard_int_handle+0x157>
c0005686:	66 83 7d f6 1c       	cmpw   $0x1c,-0xa(%ebp)
c000568b:	76 07                	jbe    c0005694 <keyboard_int_handle+0x149>
c000568d:	66 83 7d f6 25       	cmpw   $0x25,-0xa(%ebp)
c0005692:	76 0e                	jbe    c00056a2 <keyboard_int_handle+0x157>
c0005694:	66 83 7d f6 2a       	cmpw   $0x2a,-0xa(%ebp)
c0005699:	76 0e                	jbe    c00056a9 <keyboard_int_handle+0x15e>
c000569b:	66 83 7d f6 31       	cmpw   $0x31,-0xa(%ebp)
c00056a0:	77 07                	ja     c00056a9 <keyboard_int_handle+0x15e>
c00056a2:	b8 01 00 00 00       	mov    $0x1,%eax
c00056a7:	eb 05                	jmp    c00056ae <keyboard_int_handle+0x163>
c00056a9:	b8 00 00 00 00       	mov    $0x0,%eax
c00056ae:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00056b1:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c00056b5:	0f 84 93 00 00 00    	je     c000574e <keyboard_int_handle+0x203>
c00056bb:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c00056c0:	85 c0                	test   %eax,%eax
c00056c2:	74 22                	je     c00056e6 <keyboard_int_handle+0x19b>
c00056c4:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c00056c9:	85 c0                	test   %eax,%eax
c00056cb:	75 19                	jne    c00056e6 <keyboard_int_handle+0x19b>
c00056cd:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00056d1:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c00056d8:	c0 
c00056d9:	0f be c0             	movsbl %al,%eax
c00056dc:	89 04 24             	mov    %eax,(%esp)
c00056df:	e8 a5 00 00 00       	call   c0005789 <give_char>
c00056e4:	eb 66                	jmp    c000574c <keyboard_int_handle+0x201>
c00056e6:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c00056eb:	85 c0                	test   %eax,%eax
c00056ed:	74 22                	je     c0005711 <keyboard_int_handle+0x1c6>
c00056ef:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c00056f4:	85 c0                	test   %eax,%eax
c00056f6:	74 19                	je     c0005711 <keyboard_int_handle+0x1c6>
c00056f8:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c00056fc:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c0005703:	c0 
c0005704:	0f be c0             	movsbl %al,%eax
c0005707:	89 04 24             	mov    %eax,(%esp)
c000570a:	e8 7a 00 00 00       	call   c0005789 <give_char>
c000570f:	eb 3b                	jmp    c000574c <keyboard_int_handle+0x201>
c0005711:	a1 70 b0 00 c0       	mov    0xc000b070,%eax
c0005716:	85 c0                	test   %eax,%eax
c0005718:	74 19                	je     c0005733 <keyboard_int_handle+0x1e8>
c000571a:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000571e:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c0005725:	c0 
c0005726:	0f be c0             	movsbl %al,%eax
c0005729:	89 04 24             	mov    %eax,(%esp)
c000572c:	e8 58 00 00 00       	call   c0005789 <give_char>
c0005731:	eb 54                	jmp    c0005787 <keyboard_int_handle+0x23c>
c0005733:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005737:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c000573e:	c0 
c000573f:	0f be c0             	movsbl %al,%eax
c0005742:	89 04 24             	mov    %eax,(%esp)
c0005745:	e8 3f 00 00 00       	call   c0005789 <give_char>
c000574a:	eb 3b                	jmp    c0005787 <keyboard_int_handle+0x23c>
c000574c:	eb 39                	jmp    c0005787 <keyboard_int_handle+0x23c>
c000574e:	a1 3c b1 00 c0       	mov    0xc000b13c,%eax
c0005753:	85 c0                	test   %eax,%eax
c0005755:	74 19                	je     c0005770 <keyboard_int_handle+0x225>
c0005757:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c000575b:	0f b6 84 00 21 a2 00 	movzbl -0x3fff5ddf(%eax,%eax,1),%eax
c0005762:	c0 
c0005763:	0f be c0             	movsbl %al,%eax
c0005766:	89 04 24             	mov    %eax,(%esp)
c0005769:	e8 1b 00 00 00       	call   c0005789 <give_char>
c000576e:	eb 17                	jmp    c0005787 <keyboard_int_handle+0x23c>
c0005770:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0005774:	0f b6 84 00 20 a2 00 	movzbl -0x3fff5de0(%eax,%eax,1),%eax
c000577b:	c0 
c000577c:	0f be c0             	movsbl %al,%eax
c000577f:	89 04 24             	mov    %eax,(%esp)
c0005782:	e8 02 00 00 00       	call   c0005789 <give_char>
c0005787:	c9                   	leave  
c0005788:	c3                   	ret    

c0005789 <give_char>:
c0005789:	55                   	push   %ebp
c000578a:	89 e5                	mov    %esp,%ebp
c000578c:	83 ec 18             	sub    $0x18,%esp
c000578f:	8b 45 08             	mov    0x8(%ebp),%eax
c0005792:	88 45 f4             	mov    %al,-0xc(%ebp)
c0005795:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c000579c:	e8 72 fa ff ff       	call   c0005213 <lock>
c00057a1:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c00057a8:	e8 a4 00 00 00       	call   c0005851 <conditional_block>
c00057ad:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c00057b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00057b5:	c7 04 24 80 b0 00 c0 	movl   $0xc000b080,(%esp)
c00057bc:	e8 79 01 00 00       	call   c000593a <cq_push>
c00057c1:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c00057c8:	e8 e5 00 00 00       	call   c00058b2 <conditional_notify>
c00057cd:	c7 04 24 b4 a2 00 c0 	movl   $0xc000a2b4,(%esp)
c00057d4:	e8 90 fa ff ff       	call   c0005269 <unlock>
c00057d9:	c9                   	leave  
c00057da:	c3                   	ret    

c00057db <take_char>:
c00057db:	55                   	push   %ebp
c00057dc:	89 e5                	mov    %esp,%ebp
c00057de:	83 ec 18             	sub    $0x18,%esp
c00057e1:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c00057e8:	e8 26 fa ff ff       	call   c0005213 <lock>
c00057ed:	c7 04 24 60 b0 00 c0 	movl   $0xc000b060,(%esp)
c00057f4:	e8 58 00 00 00       	call   c0005851 <conditional_block>
c00057f9:	c7 04 24 80 b0 00 c0 	movl   $0xc000b080,(%esp)
c0005800:	e8 94 01 00 00       	call   c0005999 <cq_pop>
c0005805:	0f be c0             	movsbl %al,%eax
c0005808:	89 04 24             	mov    %eax,(%esp)
c000580b:	e8 f2 fb ff ff       	call   c0005402 <console_put_char>
c0005810:	c7 04 24 28 b1 00 c0 	movl   $0xc000b128,(%esp)
c0005817:	e8 96 00 00 00       	call   c00058b2 <conditional_notify>
c000581c:	c7 04 24 a0 a2 00 c0 	movl   $0xc000a2a0,(%esp)
c0005823:	e8 41 fa ff ff       	call   c0005269 <unlock>
c0005828:	eb b7                	jmp    c00057e1 <take_char+0x6>

c000582a <init_condition_var>:
c000582a:	55                   	push   %ebp
c000582b:	89 e5                	mov    %esp,%ebp
c000582d:	83 ec 18             	sub    $0x18,%esp
c0005830:	8b 45 08             	mov    0x8(%ebp),%eax
c0005833:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005836:	89 10                	mov    %edx,(%eax)
c0005838:	8b 45 08             	mov    0x8(%ebp),%eax
c000583b:	8b 55 10             	mov    0x10(%ebp),%edx
c000583e:	89 50 04             	mov    %edx,0x4(%eax)
c0005841:	8b 45 08             	mov    0x8(%ebp),%eax
c0005844:	83 c0 08             	add    $0x8,%eax
c0005847:	89 04 24             	mov    %eax,(%esp)
c000584a:	e8 a8 f3 ff ff       	call   c0004bf7 <init_list>
c000584f:	c9                   	leave  
c0005850:	c3                   	ret    

c0005851 <conditional_block>:
c0005851:	55                   	push   %ebp
c0005852:	89 e5                	mov    %esp,%ebp
c0005854:	83 ec 28             	sub    $0x28,%esp
c0005857:	8b 45 08             	mov    0x8(%ebp),%eax
c000585a:	8b 00                	mov    (%eax),%eax
c000585c:	8b 55 08             	mov    0x8(%ebp),%edx
c000585f:	8b 52 04             	mov    0x4(%edx),%edx
c0005862:	89 14 24             	mov    %edx,(%esp)
c0005865:	ff d0                	call   *%eax
c0005867:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000586a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c000586e:	75 02                	jne    c0005872 <conditional_block+0x21>
c0005870:	eb 3e                	jmp    c00058b0 <conditional_block+0x5f>
c0005872:	e8 ef dc ff ff       	call   c0003566 <int_disable>
c0005877:	89 45 f0             	mov    %eax,-0x10(%ebp)
c000587a:	e8 85 ed ff ff       	call   c0004604 <get_running>
c000587f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005882:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0005885:	8d 50 38             	lea    0x38(%eax),%edx
c0005888:	8b 45 08             	mov    0x8(%ebp),%eax
c000588b:	83 c0 08             	add    $0x8,%eax
c000588e:	89 54 24 04          	mov    %edx,0x4(%esp)
c0005892:	89 04 24             	mov    %eax,(%esp)
c0005895:	e8 75 f3 ff ff       	call   c0004c0f <lst_push>
c000589a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c000589d:	89 04 24             	mov    %eax,(%esp)
c00058a0:	e8 0f fa ff ff       	call   c00052b4 <thread_block>
c00058a5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00058a8:	89 04 24             	mov    %eax,(%esp)
c00058ab:	e8 ca dc ff ff       	call   c000357a <set_int_status>
c00058b0:	c9                   	leave  
c00058b1:	c3                   	ret    

c00058b2 <conditional_notify>:
c00058b2:	55                   	push   %ebp
c00058b3:	89 e5                	mov    %esp,%ebp
c00058b5:	83 ec 28             	sub    $0x28,%esp
c00058b8:	e8 a9 dc ff ff       	call   c0003566 <int_disable>
c00058bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00058c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00058c3:	83 c0 08             	add    $0x8,%eax
c00058c6:	89 04 24             	mov    %eax,(%esp)
c00058c9:	e8 2a f7 ff ff       	call   c0004ff8 <lst_empty>
c00058ce:	85 c0                	test   %eax,%eax
c00058d0:	75 1f                	jne    c00058f1 <conditional_notify+0x3f>
c00058d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00058d5:	83 c0 08             	add    $0x8,%eax
c00058d8:	89 04 24             	mov    %eax,(%esp)
c00058db:	e8 48 f4 ff ff       	call   c0004d28 <lst_pop>
c00058e0:	83 e8 38             	sub    $0x38,%eax
c00058e3:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00058e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00058e9:	89 04 24             	mov    %eax,(%esp)
c00058ec:	e8 4f fa ff ff       	call   c0005340 <thread_unblock>
c00058f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00058f4:	89 04 24             	mov    %eax,(%esp)
c00058f7:	e8 7e dc ff ff       	call   c000357a <set_int_status>
c00058fc:	c9                   	leave  
c00058fd:	c3                   	ret    

c00058fe <init_cq>:
c00058fe:	55                   	push   %ebp
c00058ff:	89 e5                	mov    %esp,%ebp
c0005901:	83 ec 18             	sub    $0x18,%esp
c0005904:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005907:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c000590e:	00 
c000590f:	c7 44 24 04 a0 00 00 	movl   $0xa0,0x4(%esp)
c0005916:	00 
c0005917:	89 04 24             	mov    %eax,(%esp)
c000591a:	e8 8e dd ff ff       	call   c00036ad <memset_8>
c000591f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005922:	c6 80 a0 00 00 00 00 	movb   $0x0,0xa0(%eax)
c0005929:	8b 45 0c             	mov    0xc(%ebp),%eax
c000592c:	c6 80 a1 00 00 00 00 	movb   $0x0,0xa1(%eax)
c0005933:	8b 45 08             	mov    0x8(%ebp),%eax
c0005936:	c9                   	leave  
c0005937:	c2 04 00             	ret    $0x4

c000593a <cq_push>:
c000593a:	55                   	push   %ebp
c000593b:	89 e5                	mov    %esp,%ebp
c000593d:	83 ec 04             	sub    $0x4,%esp
c0005940:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005943:	88 45 fc             	mov    %al,-0x4(%ebp)
c0005946:	8b 45 08             	mov    0x8(%ebp),%eax
c0005949:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c0005950:	0f b6 c0             	movzbl %al,%eax
c0005953:	8b 55 08             	mov    0x8(%ebp),%edx
c0005956:	0f b6 4d fc          	movzbl -0x4(%ebp),%ecx
c000595a:	88 0c 02             	mov    %cl,(%edx,%eax,1)
c000595d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005960:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c0005967:	0f b6 c0             	movzbl %al,%eax
c000596a:	8d 48 01             	lea    0x1(%eax),%ecx
c000596d:	ba 67 66 66 66       	mov    $0x66666667,%edx
c0005972:	89 c8                	mov    %ecx,%eax
c0005974:	f7 ea                	imul   %edx
c0005976:	c1 fa 06             	sar    $0x6,%edx
c0005979:	89 c8                	mov    %ecx,%eax
c000597b:	c1 f8 1f             	sar    $0x1f,%eax
c000597e:	29 c2                	sub    %eax,%edx
c0005980:	89 d0                	mov    %edx,%eax
c0005982:	c1 e0 02             	shl    $0x2,%eax
c0005985:	01 d0                	add    %edx,%eax
c0005987:	c1 e0 05             	shl    $0x5,%eax
c000598a:	29 c1                	sub    %eax,%ecx
c000598c:	89 ca                	mov    %ecx,%edx
c000598e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005991:	88 90 a1 00 00 00    	mov    %dl,0xa1(%eax)
c0005997:	c9                   	leave  
c0005998:	c3                   	ret    

c0005999 <cq_pop>:
c0005999:	55                   	push   %ebp
c000599a:	89 e5                	mov    %esp,%ebp
c000599c:	83 ec 10             	sub    $0x10,%esp
c000599f:	8b 45 08             	mov    0x8(%ebp),%eax
c00059a2:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c00059a9:	0f b6 c0             	movzbl %al,%eax
c00059ac:	8b 55 08             	mov    0x8(%ebp),%edx
c00059af:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c00059b3:	88 45 ff             	mov    %al,-0x1(%ebp)
c00059b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00059b9:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c00059c0:	0f b6 c0             	movzbl %al,%eax
c00059c3:	8d 48 01             	lea    0x1(%eax),%ecx
c00059c6:	ba 67 66 66 66       	mov    $0x66666667,%edx
c00059cb:	89 c8                	mov    %ecx,%eax
c00059cd:	f7 ea                	imul   %edx
c00059cf:	c1 fa 06             	sar    $0x6,%edx
c00059d2:	89 c8                	mov    %ecx,%eax
c00059d4:	c1 f8 1f             	sar    $0x1f,%eax
c00059d7:	29 c2                	sub    %eax,%edx
c00059d9:	89 d0                	mov    %edx,%eax
c00059db:	c1 e0 02             	shl    $0x2,%eax
c00059de:	01 d0                	add    %edx,%eax
c00059e0:	c1 e0 05             	shl    $0x5,%eax
c00059e3:	29 c1                	sub    %eax,%ecx
c00059e5:	89 ca                	mov    %ecx,%edx
c00059e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00059ea:	88 90 a0 00 00 00    	mov    %dl,0xa0(%eax)
c00059f0:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c00059f4:	c9                   	leave  
c00059f5:	c3                   	ret    

c00059f6 <cq_full>:
c00059f6:	55                   	push   %ebp
c00059f7:	89 e5                	mov    %esp,%ebp
c00059f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00059fc:	0f b6 80 a1 00 00 00 	movzbl 0xa1(%eax),%eax
c0005a03:	0f b6 c0             	movzbl %al,%eax
c0005a06:	8d 48 01             	lea    0x1(%eax),%ecx
c0005a09:	ba 67 66 66 66       	mov    $0x66666667,%edx
c0005a0e:	89 c8                	mov    %ecx,%eax
c0005a10:	f7 ea                	imul   %edx
c0005a12:	c1 fa 06             	sar    $0x6,%edx
c0005a15:	89 c8                	mov    %ecx,%eax
c0005a17:	c1 f8 1f             	sar    $0x1f,%eax
c0005a1a:	29 c2                	sub    %eax,%edx
c0005a1c:	89 d0                	mov    %edx,%eax
c0005a1e:	c1 e0 02             	shl    $0x2,%eax
c0005a21:	01 d0                	add    %edx,%eax
c0005a23:	c1 e0 05             	shl    $0x5,%eax
c0005a26:	29 c1                	sub    %eax,%ecx
c0005a28:	89 ca                	mov    %ecx,%edx
c0005a2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a2d:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005a34:	0f b6 c0             	movzbl %al,%eax
c0005a37:	39 c2                	cmp    %eax,%edx
c0005a39:	0f 94 c0             	sete   %al
c0005a3c:	0f b6 c0             	movzbl %al,%eax
c0005a3f:	5d                   	pop    %ebp
c0005a40:	c3                   	ret    

c0005a41 <cq_empty>:
c0005a41:	55                   	push   %ebp
c0005a42:	89 e5                	mov    %esp,%ebp
c0005a44:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a47:	0f b6 90 a1 00 00 00 	movzbl 0xa1(%eax),%edx
c0005a4e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a51:	0f b6 80 a0 00 00 00 	movzbl 0xa0(%eax),%eax
c0005a58:	38 c2                	cmp    %al,%dl
c0005a5a:	0f 94 c0             	sete   %al
c0005a5d:	0f b6 c0             	movzbl %al,%eax
c0005a60:	5d                   	pop    %ebp
c0005a61:	c3                   	ret    

c0005a62 <exchange_esp0>:
c0005a62:	55                   	push   %ebp
c0005a63:	89 e5                	mov    %esp,%ebp
c0005a65:	8b 45 08             	mov    0x8(%ebp),%eax
c0005a68:	05 00 10 00 00       	add    $0x1000,%eax
c0005a6d:	a3 44 b1 00 c0       	mov    %eax,0xc000b144
c0005a72:	5d                   	pop    %ebp
c0005a73:	c3                   	ret    

c0005a74 <init_proc_data>:
c0005a74:	55                   	push   %ebp
c0005a75:	89 e5                	mov    %esp,%ebp
c0005a77:	53                   	push   %ebx
c0005a78:	83 ec 34             	sub    $0x34,%esp
c0005a7b:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
c0005a82:	e8 59 01 00 00       	call   c0005be0 <lgdt>
c0005a87:	c7 45 f4 03 09 00 c0 	movl   $0xc0000903,-0xc(%ebp)
c0005a8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005a91:	8d 58 20             	lea    0x20(%eax),%ebx
c0005a94:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005a97:	c7 44 24 10 f2 00 00 	movl   $0xf2,0x10(%esp)
c0005a9e:	00 
c0005a9f:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
c0005aa6:	00 
c0005aa7:	c7 44 24 08 ff ff 0f 	movl   $0xfffff,0x8(%esp)
c0005aae:	00 
c0005aaf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0005ab6:	00 
c0005ab7:	89 04 24             	mov    %eax,(%esp)
c0005aba:	e8 c2 00 00 00       	call   c0005b81 <make_seg_des>
c0005abf:	83 ec 04             	sub    $0x4,%esp
c0005ac2:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005ac5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005ac8:	89 03                	mov    %eax,(%ebx)
c0005aca:	89 53 04             	mov    %edx,0x4(%ebx)
c0005acd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005ad0:	8d 58 28             	lea    0x28(%eax),%ebx
c0005ad3:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005ad6:	c7 44 24 10 f8 00 00 	movl   $0xf8,0x10(%esp)
c0005add:	00 
c0005ade:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
c0005ae5:	00 
c0005ae6:	c7 44 24 08 ff ff 0f 	movl   $0xfffff,0x8(%esp)
c0005aed:	00 
c0005aee:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0005af5:	00 
c0005af6:	89 04 24             	mov    %eax,(%esp)
c0005af9:	e8 83 00 00 00       	call   c0005b81 <make_seg_des>
c0005afe:	83 ec 04             	sub    $0x4,%esp
c0005b01:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005b04:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005b07:	89 03                	mov    %eax,(%ebx)
c0005b09:	89 53 04             	mov    %edx,0x4(%ebx)
c0005b0c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005b0f:	8d 58 30             	lea    0x30(%eax),%ebx
c0005b12:	ba 40 b1 00 c0       	mov    $0xc000b140,%edx
c0005b17:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0005b1a:	c7 44 24 10 89 00 00 	movl   $0x89,0x10(%esp)
c0005b21:	00 
c0005b22:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0005b29:	00 
c0005b2a:	c7 44 24 08 63 00 00 	movl   $0x63,0x8(%esp)
c0005b31:	00 
c0005b32:	89 54 24 04          	mov    %edx,0x4(%esp)
c0005b36:	89 04 24             	mov    %eax,(%esp)
c0005b39:	e8 43 00 00 00       	call   c0005b81 <make_seg_des>
c0005b3e:	83 ec 04             	sub    $0x4,%esp
c0005b41:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0005b44:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0005b47:	89 03                	mov    %eax,(%ebx)
c0005b49:	89 53 04             	mov    %edx,0x4(%ebx)
c0005b4c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005b53:	00 
c0005b54:	c7 44 24 04 64 00 00 	movl   $0x64,0x4(%esp)
c0005b5b:	00 
c0005b5c:	c7 04 24 40 b1 00 c0 	movl   $0xc000b140,(%esp)
c0005b63:	e8 45 db ff ff       	call   c00036ad <memset_8>
c0005b68:	c7 05 48 b1 00 c0 10 	movl   $0x10,0xc000b148
c0005b6f:	00 00 00 
c0005b72:	66 c7 45 f2 30 00    	movw   $0x30,-0xe(%ebp)
c0005b78:	0f 00 5d f2          	ltr    -0xe(%ebp)
c0005b7c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0005b7f:	c9                   	leave  
c0005b80:	c3                   	ret    

c0005b81 <make_seg_des>:
c0005b81:	55                   	push   %ebp
c0005b82:	89 e5                	mov    %esp,%ebp
c0005b84:	83 ec 18             	sub    $0x18,%esp
c0005b87:	8b 55 14             	mov    0x14(%ebp),%edx
c0005b8a:	8b 45 18             	mov    0x18(%ebp),%eax
c0005b8d:	88 55 ec             	mov    %dl,-0x14(%ebp)
c0005b90:	88 45 e8             	mov    %al,-0x18(%ebp)
c0005b93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005b96:	c1 e8 18             	shr    $0x18,%eax
c0005b99:	88 45 ff             	mov    %al,-0x1(%ebp)
c0005b9c:	8b 45 10             	mov    0x10(%ebp),%eax
c0005b9f:	c1 e8 10             	shr    $0x10,%eax
c0005ba2:	89 c2                	mov    %eax,%edx
c0005ba4:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
c0005ba8:	01 d0                	add    %edx,%eax
c0005baa:	88 45 fe             	mov    %al,-0x2(%ebp)
c0005bad:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
c0005bb1:	88 45 fd             	mov    %al,-0x3(%ebp)
c0005bb4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005bb7:	c1 e8 10             	shr    $0x10,%eax
c0005bba:	88 45 fc             	mov    %al,-0x4(%ebp)
c0005bbd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005bc0:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
c0005bc4:	8b 45 10             	mov    0x10(%ebp),%eax
c0005bc7:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
c0005bcb:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0005bce:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0005bd1:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0005bd4:	89 01                	mov    %eax,(%ecx)
c0005bd6:	89 51 04             	mov    %edx,0x4(%ecx)
c0005bd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0005bdc:	c9                   	leave  
c0005bdd:	c2 04 00             	ret    $0x4

c0005be0 <lgdt>:
c0005be0:	55                   	push   %ebp
c0005be1:	89 e5                	mov    %esp,%ebp
c0005be3:	53                   	push   %ebx
c0005be4:	83 ec 18             	sub    $0x18,%esp
c0005be7:	8b 45 08             	mov    0x8(%ebp),%eax
c0005bea:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
c0005bee:	c7 45 f0 03 09 00 c0 	movl   $0xc0000903,-0x10(%ebp)
c0005bf5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0005bfc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005bff:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005c02:	0f a4 c2 10          	shld   $0x10,%eax,%edx
c0005c06:	c1 e0 10             	shl    $0x10,%eax
c0005c09:	89 c1                	mov    %eax,%ecx
c0005c0b:	89 d3                	mov    %edx,%ebx
c0005c0d:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
c0005c11:	c1 e0 03             	shl    $0x3,%eax
c0005c14:	99                   	cltd   
c0005c15:	01 c8                	add    %ecx,%eax
c0005c17:	11 da                	adc    %ebx,%edx
c0005c19:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005c1c:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0005c1f:	0f 01 55 f0          	lgdtl  -0x10(%ebp)
c0005c23:	83 c4 18             	add    $0x18,%esp
c0005c26:	5b                   	pop    %ebx
c0005c27:	5d                   	pop    %ebp
c0005c28:	c3                   	ret    

c0005c29 <proc_start>:
c0005c29:	55                   	push   %ebp
c0005c2a:	89 e5                	mov    %esp,%ebp
c0005c2c:	83 ec 28             	sub    $0x28,%esp
c0005c2f:	8b 45 14             	mov    0x14(%ebp),%eax
c0005c32:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0005c36:	8b 45 10             	mov    0x10(%ebp),%eax
c0005c39:	89 44 24 08          	mov    %eax,0x8(%esp)
c0005c3d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005c40:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005c44:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c47:	89 04 24             	mov    %eax,(%esp)
c0005c4a:	e8 26 ec ff ff       	call   c0004875 <create_thread>
c0005c4f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005c52:	8b 45 14             	mov    0x14(%ebp),%eax
c0005c55:	89 44 24 08          	mov    %eax,0x8(%esp)
c0005c59:	8b 45 10             	mov    0x10(%ebp),%eax
c0005c5c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005c60:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c63:	89 04 24             	mov    %eax,(%esp)
c0005c66:	e8 0d 00 00 00       	call   c0005c78 <init_proc>
c0005c6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005c6e:	89 04 24             	mov    %eax,(%esp)
c0005c71:	e8 39 01 00 00       	call   c0005daf <create_proc_page>
c0005c76:	c9                   	leave  
c0005c77:	c3                   	ret    

c0005c78 <init_proc>:
c0005c78:	55                   	push   %ebp
c0005c79:	89 e5                	mov    %esp,%ebp
c0005c7b:	83 ec 28             	sub    $0x28,%esp
c0005c7e:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c81:	05 98 0f 00 00       	add    $0xf98,%eax
c0005c86:	89 c2                	mov    %eax,%edx
c0005c88:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c8b:	89 10                	mov    %edx,(%eax)
c0005c8d:	8b 45 08             	mov    0x8(%ebp),%eax
c0005c90:	8b 00                	mov    (%eax),%eax
c0005c92:	83 c0 04             	add    $0x4,%eax
c0005c95:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005c9c:	00 
c0005c9d:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c0005ca4:	00 
c0005ca5:	89 04 24             	mov    %eax,(%esp)
c0005ca8:	e8 62 da ff ff       	call   c000370f <memset_32>
c0005cad:	8b 45 08             	mov    0x8(%ebp),%eax
c0005cb0:	8b 00                	mov    (%eax),%eax
c0005cb2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005cb5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0005cbc:	00 
c0005cbd:	c7 44 24 04 68 00 00 	movl   $0x68,0x4(%esp)
c0005cc4:	00 
c0005cc5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cc8:	89 04 24             	mov    %eax,(%esp)
c0005ccb:	e8 dd d9 ff ff       	call   c00036ad <memset_8>
c0005cd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cd3:	c7 40 24 23 00 00 00 	movl   $0x23,0x24(%eax)
c0005cda:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cdd:	8b 50 24             	mov    0x24(%eax),%edx
c0005ce0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005ce3:	89 50 20             	mov    %edx,0x20(%eax)
c0005ce6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005ce9:	8b 50 20             	mov    0x20(%eax),%edx
c0005cec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cef:	89 50 28             	mov    %edx,0x28(%eax)
c0005cf2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cf5:	c7 40 10 37 5e 00 c0 	movl   $0xc0005e37,0x10(%eax)
c0005cfc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005cff:	8b 55 10             	mov    0x10(%ebp),%edx
c0005d02:	89 50 64             	mov    %edx,0x64(%eax)
c0005d05:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d08:	c7 40 54 2b 00 00 00 	movl   $0x2b,0x54(%eax)
c0005d0f:	8b 55 0c             	mov    0xc(%ebp),%edx
c0005d12:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d15:	89 50 50             	mov    %edx,0x50(%eax)
c0005d18:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d1b:	c7 40 58 02 02 00 00 	movl   $0x202,0x58(%eax)
c0005d22:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d25:	c7 40 60 23 00 00 00 	movl   $0x23,0x60(%eax)
c0005d2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d2f:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
c0005d35:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005d38:	89 50 5c             	mov    %edx,0x5c(%eax)
c0005d3b:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d3e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0005d45:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d48:	c7 40 10 00 00 00 c0 	movl   $0xc0000000,0x10(%eax)
c0005d4f:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
c0005d56:	00 
c0005d57:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005d5e:	e8 08 df ff ff       	call   c0003c6b <malloc_page>
c0005d63:	8b 55 08             	mov    0x8(%ebp),%edx
c0005d66:	89 42 08             	mov    %eax,0x8(%edx)
c0005d69:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d6c:	c7 40 04 00 00 00 c0 	movl   $0xc0000000,0x4(%eax)
c0005d73:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d76:	83 c0 04             	add    $0x4,%eax
c0005d79:	89 04 24             	mov    %eax,(%esp)
c0005d7c:	e8 5f db ff ff       	call   c00038e0 <init_bit_map>
c0005d81:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d84:	83 c0 38             	add    $0x38,%eax
c0005d87:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005d8b:	c7 04 24 00 a7 00 c0 	movl   $0xc000a700,(%esp)
c0005d92:	e8 78 ee ff ff       	call   c0004c0f <lst_push>
c0005d97:	8b 45 08             	mov    0x8(%ebp),%eax
c0005d9a:	83 c0 40             	add    $0x40,%eax
c0005d9d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005da1:	c7 04 24 c0 a7 00 c0 	movl   $0xc000a7c0,(%esp)
c0005da8:	e8 62 ee ff ff       	call   c0004c0f <lst_push>
c0005dad:	c9                   	leave  
c0005dae:	c3                   	ret    

c0005daf <create_proc_page>:
c0005daf:	55                   	push   %ebp
c0005db0:	89 e5                	mov    %esp,%ebp
c0005db2:	83 ec 28             	sub    $0x28,%esp
c0005db5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0005dbc:	00 
c0005dbd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005dc4:	e8 a2 de ff ff       	call   c0003c6b <malloc_page>
c0005dc9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005dcc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005dcf:	89 04 24             	mov    %eax,(%esp)
c0005dd2:	e8 9a e7 ff ff       	call   c0004571 <get_paddr>
c0005dd7:	89 c2                	mov    %eax,%edx
c0005dd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0005ddc:	89 50 48             	mov    %edx,0x48(%eax)
c0005ddf:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0005de6:	00 
c0005de7:	c7 44 24 04 00 f0 ff 	movl   $0xfffff000,0x4(%esp)
c0005dee:	ff 
c0005def:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005df2:	89 04 24             	mov    %eax,(%esp)
c0005df5:	e8 70 d9 ff ff       	call   c000376a <memcopy>
c0005dfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0005dfd:	8b 40 48             	mov    0x48(%eax),%eax
c0005e00:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0005e05:	83 c0 07             	add    $0x7,%eax
c0005e08:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005e0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005e0e:	05 fc 0f 00 00       	add    $0xffc,%eax
c0005e13:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0005e16:	89 10                	mov    %edx,(%eax)
c0005e18:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%ebp)
c0005e1f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0005e22:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005e26:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0005e2d:	e8 39 de ff ff       	call   c0003c6b <malloc_page>
c0005e32:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0005e35:	eb fe                	jmp    c0005e35 <create_proc_page+0x86>

c0005e37 <process_fun>:
c0005e37:	55                   	push   %ebp
c0005e38:	89 e5                	mov    %esp,%ebp
c0005e3a:	83 ec 28             	sub    $0x28,%esp
c0005e3d:	e8 10 d7 ff ff       	call   c0003552 <int_enable>
c0005e42:	e8 bd e7 ff ff       	call   c0004604 <get_running>
c0005e47:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005e4a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005e4d:	8b 00                	mov    (%eax),%eax
c0005e4f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005e52:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0005e55:	8b 40 48             	mov    0x48(%eax),%eax
c0005e58:	0f 22 d8             	mov    %eax,%cr3
c0005e5b:	c7 44 24 04 ff ff 00 	movl   $0x7000ffff,0x4(%esp)
c0005e62:	70 
c0005e63:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0005e6a:	e8 c9 df ff ff       	call   c0003e38 <create_page>
c0005e6f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0005e72:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0005e76:	75 24                	jne    c0005e9c <process_fun+0x65>
c0005e78:	c7 44 24 0c d8 76 00 	movl   $0xc00076d8,0xc(%esp)
c0005e7f:	c0 
c0005e80:	c7 44 24 08 f3 76 00 	movl   $0xc00076f3,0x8(%esp)
c0005e87:	c0 
c0005e88:	c7 44 24 04 76 00 00 	movl   $0x76,0x4(%esp)
c0005e8f:	00 
c0005e90:	c7 04 24 dd 76 00 c0 	movl   $0xc00076dd,(%esp)
c0005e97:	e8 04 d7 ff ff       	call   c00035a0 <panic_spin>
c0005e9c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005e9f:	c7 40 5c f7 ff 00 70 	movl   $0x7000fff7,0x5c(%eax)
c0005ea6:	b8 fb ff 00 70       	mov    $0x7000fffb,%eax
c0005eab:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0005eae:	8b 52 64             	mov    0x64(%edx),%edx
c0005eb1:	89 10                	mov    %edx,(%eax)
c0005eb3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005eb6:	83 c0 18             	add    $0x18,%eax
c0005eb9:	89 c4                	mov    %eax,%esp
c0005ebb:	e9 a1 bb ff ff       	jmp    c0001a61 <exit_int>
c0005ec0:	c9                   	leave  
c0005ec1:	c3                   	ret    

c0005ec2 <syscall_table_init>:
c0005ec2:	55                   	push   %ebp
c0005ec3:	89 e5                	mov    %esp,%ebp
c0005ec5:	c7 05 c0 b1 00 c0 ef 	movl   $0xc0005eef,0xc000b1c0
c0005ecc:	5e 00 c0 
c0005ecf:	c7 05 c4 b1 00 c0 ff 	movl   $0xc0005eff,0xc000b1c4
c0005ed6:	5e 00 c0 
c0005ed9:	c7 05 c8 b1 00 c0 f9 	movl   $0xc00040f9,0xc000b1c8
c0005ee0:	40 00 c0 
c0005ee3:	c7 05 cc b1 00 c0 f0 	movl   $0xc00042f0,0xc000b1cc
c0005eea:	42 00 c0 
c0005eed:	5d                   	pop    %ebp
c0005eee:	c3                   	ret    

c0005eef <sys_getPid>:
c0005eef:	55                   	push   %ebp
c0005ef0:	89 e5                	mov    %esp,%ebp
c0005ef2:	83 ec 08             	sub    $0x8,%esp
c0005ef5:	e8 0a e7 ff ff       	call   c0004604 <get_running>
c0005efa:	8b 40 24             	mov    0x24(%eax),%eax
c0005efd:	c9                   	leave  
c0005efe:	c3                   	ret    

c0005eff <sys_write>:
c0005eff:	55                   	push   %ebp
c0005f00:	89 e5                	mov    %esp,%ebp
c0005f02:	83 ec 18             	sub    $0x18,%esp
c0005f05:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f08:	89 04 24             	mov    %eax,(%esp)
c0005f0b:	e8 c7 f4 ff ff       	call   c00053d7 <console_put_str>
c0005f10:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f13:	89 04 24             	mov    %eax,(%esp)
c0005f16:	e8 0f d9 ff ff       	call   c000382a <strlen>
c0005f1b:	c9                   	leave  
c0005f1c:	c3                   	ret    

c0005f1d <printf>:
c0005f1d:	55                   	push   %ebp
c0005f1e:	89 e5                	mov    %esp,%ebp
c0005f20:	83 ec 28             	sub    $0x28,%esp
c0005f23:	8d 45 08             	lea    0x8(%ebp),%eax
c0005f26:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0005f29:	8b 45 08             	mov    0x8(%ebp),%eax
c0005f2c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0005f2f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0005f33:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005f37:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0005f3e:	e8 11 00 00 00       	call   c0005f54 <vsprintf>
c0005f43:	68 00 a3 00 c0       	push   $0xc000a300
c0005f48:	6a 01                	push   $0x1
c0005f4a:	cd 80                	int    $0x80
c0005f4c:	83 c4 08             	add    $0x8,%esp
c0005f4f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005f52:	c9                   	leave  
c0005f53:	c3                   	ret    

c0005f54 <vsprintf>:
c0005f54:	55                   	push   %ebp
c0005f55:	89 e5                	mov    %esp,%ebp
c0005f57:	83 ec 28             	sub    $0x28,%esp
c0005f5a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005f5d:	0f b6 00             	movzbl (%eax),%eax
c0005f60:	88 45 f7             	mov    %al,-0x9(%ebp)
c0005f63:	e9 04 01 00 00       	jmp    c000606c <vsprintf+0x118>
c0005f68:	80 7d f7 25          	cmpb   $0x25,-0x9(%ebp)
c0005f6c:	0f 85 db 00 00 00    	jne    c000604d <vsprintf+0xf9>
c0005f72:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0005f76:	8b 45 0c             	mov    0xc(%ebp),%eax
c0005f79:	0f b6 00             	movzbl (%eax),%eax
c0005f7c:	88 45 f7             	mov    %al,-0x9(%ebp)
c0005f7f:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
c0005f83:	83 e8 63             	sub    $0x63,%eax
c0005f86:	83 f8 15             	cmp    $0x15,%eax
c0005f89:	0f 87 ae 00 00 00    	ja     c000603d <vsprintf+0xe9>
c0005f8f:	8b 04 85 00 77 00 c0 	mov    -0x3fff8900(,%eax,4),%eax
c0005f96:	ff e0                	jmp    *%eax
c0005f98:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005f9c:	8b 45 10             	mov    0x10(%ebp),%eax
c0005f9f:	8b 00                	mov    (%eax),%eax
c0005fa1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005fa5:	8d 45 08             	lea    0x8(%ebp),%eax
c0005fa8:	89 04 24             	mov    %eax,(%esp)
c0005fab:	e8 ce 00 00 00       	call   c000607e <hex_to_ascii>
c0005fb0:	e9 89 00 00 00       	jmp    c000603e <vsprintf+0xea>
c0005fb5:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005fb9:	8b 45 10             	mov    0x10(%ebp),%eax
c0005fbc:	8b 00                	mov    (%eax),%eax
c0005fbe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005fc2:	8d 45 08             	lea    0x8(%ebp),%eax
c0005fc5:	89 04 24             	mov    %eax,(%esp)
c0005fc8:	e8 a4 01 00 00       	call   c0006171 <dec_to_ascii>
c0005fcd:	eb 6f                	jmp    c000603e <vsprintf+0xea>
c0005fcf:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005fd3:	8b 45 10             	mov    0x10(%ebp),%eax
c0005fd6:	8b 00                	mov    (%eax),%eax
c0005fd8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0005fdc:	8d 45 08             	lea    0x8(%ebp),%eax
c0005fdf:	89 04 24             	mov    %eax,(%esp)
c0005fe2:	e8 45 02 00 00       	call   c000622c <unsign_to_ascii>
c0005fe7:	eb 55                	jmp    c000603e <vsprintf+0xea>
c0005fe9:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0005fed:	8b 45 10             	mov    0x10(%ebp),%eax
c0005ff0:	8b 00                	mov    (%eax),%eax
c0005ff2:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0005ff5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0005ff8:	0f b6 00             	movzbl (%eax),%eax
c0005ffb:	88 45 ef             	mov    %al,-0x11(%ebp)
c0005ffe:	eb 1f                	jmp    c000601f <vsprintf+0xcb>
c0006000:	8b 45 08             	mov    0x8(%ebp),%eax
c0006003:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
c0006007:	88 10                	mov    %dl,(%eax)
c0006009:	8b 45 08             	mov    0x8(%ebp),%eax
c000600c:	83 c0 01             	add    $0x1,%eax
c000600f:	89 45 08             	mov    %eax,0x8(%ebp)
c0006012:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0006016:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006019:	0f b6 00             	movzbl (%eax),%eax
c000601c:	88 45 ef             	mov    %al,-0x11(%ebp)
c000601f:	80 7d ef 00          	cmpb   $0x0,-0x11(%ebp)
c0006023:	75 db                	jne    c0006000 <vsprintf+0xac>
c0006025:	eb 17                	jmp    c000603e <vsprintf+0xea>
c0006027:	8b 45 08             	mov    0x8(%ebp),%eax
c000602a:	8d 50 01             	lea    0x1(%eax),%edx
c000602d:	89 55 08             	mov    %edx,0x8(%ebp)
c0006030:	83 45 10 04          	addl   $0x4,0x10(%ebp)
c0006034:	8b 55 10             	mov    0x10(%ebp),%edx
c0006037:	8b 12                	mov    (%edx),%edx
c0006039:	88 10                	mov    %dl,(%eax)
c000603b:	eb 01                	jmp    c000603e <vsprintf+0xea>
c000603d:	90                   	nop
c000603e:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0006042:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006045:	0f b6 00             	movzbl (%eax),%eax
c0006048:	88 45 f7             	mov    %al,-0x9(%ebp)
c000604b:	eb 1f                	jmp    c000606c <vsprintf+0x118>
c000604d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006050:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006054:	88 10                	mov    %dl,(%eax)
c0006056:	8b 45 08             	mov    0x8(%ebp),%eax
c0006059:	83 c0 01             	add    $0x1,%eax
c000605c:	89 45 08             	mov    %eax,0x8(%ebp)
c000605f:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
c0006063:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006066:	0f b6 00             	movzbl (%eax),%eax
c0006069:	88 45 f7             	mov    %al,-0x9(%ebp)
c000606c:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
c0006070:	0f 85 f2 fe ff ff    	jne    c0005f68 <vsprintf+0x14>
c0006076:	8b 45 08             	mov    0x8(%ebp),%eax
c0006079:	c6 00 00             	movb   $0x0,(%eax)
c000607c:	c9                   	leave  
c000607d:	c3                   	ret    

c000607e <hex_to_ascii>:
c000607e:	55                   	push   %ebp
c000607f:	89 e5                	mov    %esp,%ebp
c0006081:	53                   	push   %ebx
c0006082:	83 ec 10             	sub    $0x10,%esp
c0006085:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0006089:	75 15                	jne    c00060a0 <hex_to_ascii+0x22>
c000608b:	8b 45 08             	mov    0x8(%ebp),%eax
c000608e:	8b 00                	mov    (%eax),%eax
c0006090:	8d 48 01             	lea    0x1(%eax),%ecx
c0006093:	8b 55 08             	mov    0x8(%ebp),%edx
c0006096:	89 0a                	mov    %ecx,(%edx)
c0006098:	c6 00 30             	movb   $0x30,(%eax)
c000609b:	e9 cb 00 00 00       	jmp    c000616b <hex_to_ascii+0xed>
c00060a0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00060a3:	85 c0                	test   %eax,%eax
c00060a5:	79 17                	jns    c00060be <hex_to_ascii+0x40>
c00060a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00060aa:	8b 00                	mov    (%eax),%eax
c00060ac:	8d 48 01             	lea    0x1(%eax),%ecx
c00060af:	8b 55 08             	mov    0x8(%ebp),%edx
c00060b2:	89 0a                	mov    %ecx,(%edx)
c00060b4:	c6 00 2d             	movb   $0x2d,(%eax)
c00060b7:	81 65 0c ff ff ff 7f 	andl   $0x7fffffff,0xc(%ebp)
c00060be:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
c00060c5:	eb 04                	jmp    c00060cb <hex_to_ascii+0x4d>
c00060c7:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c00060cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00060ce:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c00060d1:	72 f4                	jb     c00060c7 <hex_to_ascii+0x49>
c00060d3:	eb 5e                	jmp    c0006133 <hex_to_ascii+0xb5>
c00060d5:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00060d8:	8d 58 01             	lea    0x1(%eax),%ebx
c00060db:	8b 45 0c             	mov    0xc(%ebp),%eax
c00060de:	ba 00 00 00 00       	mov    $0x0,%edx
c00060e3:	f7 f3                	div    %ebx
c00060e5:	88 45 f7             	mov    %al,-0x9(%ebp)
c00060e8:	80 7d f7 09          	cmpb   $0x9,-0x9(%ebp)
c00060ec:	7f 18                	jg     c0006106 <hex_to_ascii+0x88>
c00060ee:	8b 45 08             	mov    0x8(%ebp),%eax
c00060f1:	8b 00                	mov    (%eax),%eax
c00060f3:	8d 48 01             	lea    0x1(%eax),%ecx
c00060f6:	8b 55 08             	mov    0x8(%ebp),%edx
c00060f9:	89 0a                	mov    %ecx,(%edx)
c00060fb:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c00060ff:	83 c2 30             	add    $0x30,%edx
c0006102:	88 10                	mov    %dl,(%eax)
c0006104:	eb 16                	jmp    c000611c <hex_to_ascii+0x9e>
c0006106:	8b 45 08             	mov    0x8(%ebp),%eax
c0006109:	8b 00                	mov    (%eax),%eax
c000610b:	8d 48 01             	lea    0x1(%eax),%ecx
c000610e:	8b 55 08             	mov    0x8(%ebp),%edx
c0006111:	89 0a                	mov    %ecx,(%edx)
c0006113:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006117:	83 c2 57             	add    $0x57,%edx
c000611a:	88 10                	mov    %dl,(%eax)
c000611c:	8b 45 f8             	mov    -0x8(%ebp),%eax
c000611f:	8d 48 01             	lea    0x1(%eax),%ecx
c0006122:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006125:	ba 00 00 00 00       	mov    $0x0,%edx
c000612a:	f7 f1                	div    %ecx
c000612c:	89 55 0c             	mov    %edx,0xc(%ebp)
c000612f:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0006133:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c0006137:	75 9c                	jne    c00060d5 <hex_to_ascii+0x57>
c0006139:	83 7d 0c 09          	cmpl   $0x9,0xc(%ebp)
c000613d:	77 17                	ja     c0006156 <hex_to_ascii+0xd8>
c000613f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006142:	8b 00                	mov    (%eax),%eax
c0006144:	8d 48 01             	lea    0x1(%eax),%ecx
c0006147:	8b 55 08             	mov    0x8(%ebp),%edx
c000614a:	89 0a                	mov    %ecx,(%edx)
c000614c:	8b 55 0c             	mov    0xc(%ebp),%edx
c000614f:	83 c2 30             	add    $0x30,%edx
c0006152:	88 10                	mov    %dl,(%eax)
c0006154:	eb 15                	jmp    c000616b <hex_to_ascii+0xed>
c0006156:	8b 45 08             	mov    0x8(%ebp),%eax
c0006159:	8b 00                	mov    (%eax),%eax
c000615b:	8d 48 01             	lea    0x1(%eax),%ecx
c000615e:	8b 55 08             	mov    0x8(%ebp),%edx
c0006161:	89 0a                	mov    %ecx,(%edx)
c0006163:	8b 55 0c             	mov    0xc(%ebp),%edx
c0006166:	83 c2 57             	add    $0x57,%edx
c0006169:	88 10                	mov    %dl,(%eax)
c000616b:	83 c4 10             	add    $0x10,%esp
c000616e:	5b                   	pop    %ebx
c000616f:	5d                   	pop    %ebp
c0006170:	c3                   	ret    

c0006171 <dec_to_ascii>:
c0006171:	55                   	push   %ebp
c0006172:	89 e5                	mov    %esp,%ebp
c0006174:	83 ec 10             	sub    $0x10,%esp
c0006177:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c000617b:	75 15                	jne    c0006192 <dec_to_ascii+0x21>
c000617d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006180:	8b 00                	mov    (%eax),%eax
c0006182:	8d 48 01             	lea    0x1(%eax),%ecx
c0006185:	8b 55 08             	mov    0x8(%ebp),%edx
c0006188:	89 0a                	mov    %ecx,(%edx)
c000618a:	c6 00 30             	movb   $0x30,(%eax)
c000618d:	e9 98 00 00 00       	jmp    c000622a <dec_to_ascii+0xb9>
c0006192:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006195:	85 c0                	test   %eax,%eax
c0006197:	79 13                	jns    c00061ac <dec_to_ascii+0x3b>
c0006199:	8b 45 08             	mov    0x8(%ebp),%eax
c000619c:	8b 00                	mov    (%eax),%eax
c000619e:	8d 48 01             	lea    0x1(%eax),%ecx
c00061a1:	8b 55 08             	mov    0x8(%ebp),%edx
c00061a4:	89 0a                	mov    %ecx,(%edx)
c00061a6:	c6 00 2d             	movb   $0x2d,(%eax)
c00061a9:	f7 5d 0c             	negl   0xc(%ebp)
c00061ac:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
c00061b3:	eb 0f                	jmp    c00061c4 <dec_to_ascii+0x53>
c00061b5:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00061b8:	89 d0                	mov    %edx,%eax
c00061ba:	c1 e0 02             	shl    $0x2,%eax
c00061bd:	01 d0                	add    %edx,%eax
c00061bf:	01 c0                	add    %eax,%eax
c00061c1:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00061c4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00061c7:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c00061ca:	73 e9                	jae    c00061b5 <dec_to_ascii+0x44>
c00061cc:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00061cf:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c00061d4:	f7 e2                	mul    %edx
c00061d6:	89 d0                	mov    %edx,%eax
c00061d8:	c1 e8 03             	shr    $0x3,%eax
c00061db:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00061de:	eb 44                	jmp    c0006224 <dec_to_ascii+0xb3>
c00061e0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00061e3:	ba 00 00 00 00       	mov    $0x0,%edx
c00061e8:	f7 75 fc             	divl   -0x4(%ebp)
c00061eb:	88 45 fb             	mov    %al,-0x5(%ebp)
c00061ee:	8b 45 08             	mov    0x8(%ebp),%eax
c00061f1:	8b 00                	mov    (%eax),%eax
c00061f3:	8d 48 01             	lea    0x1(%eax),%ecx
c00061f6:	8b 55 08             	mov    0x8(%ebp),%edx
c00061f9:	89 0a                	mov    %ecx,(%edx)
c00061fb:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00061ff:	83 c2 30             	add    $0x30,%edx
c0006202:	88 10                	mov    %dl,(%eax)
c0006204:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006207:	ba 00 00 00 00       	mov    $0x0,%edx
c000620c:	f7 75 fc             	divl   -0x4(%ebp)
c000620f:	89 55 0c             	mov    %edx,0xc(%ebp)
c0006212:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006215:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
c000621a:	f7 e2                	mul    %edx
c000621c:	89 d0                	mov    %edx,%eax
c000621e:	c1 e8 03             	shr    $0x3,%eax
c0006221:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0006224:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
c0006228:	75 b6                	jne    c00061e0 <dec_to_ascii+0x6f>
c000622a:	c9                   	leave  
c000622b:	c3                   	ret    

c000622c <unsign_to_ascii>:
c000622c:	55                   	push   %ebp
c000622d:	89 e5                	mov    %esp,%ebp
c000622f:	53                   	push   %ebx
c0006230:	83 ec 10             	sub    $0x10,%esp
c0006233:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0006237:	75 15                	jne    c000624e <unsign_to_ascii+0x22>
c0006239:	8b 45 08             	mov    0x8(%ebp),%eax
c000623c:	8b 00                	mov    (%eax),%eax
c000623e:	8d 48 01             	lea    0x1(%eax),%ecx
c0006241:	8b 55 08             	mov    0x8(%ebp),%edx
c0006244:	89 0a                	mov    %ecx,(%edx)
c0006246:	c6 00 30             	movb   $0x30,(%eax)
c0006249:	e9 d8 00 00 00       	jmp    c0006326 <unsign_to_ascii+0xfa>
c000624e:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
c0006252:	75 24                	jne    c0006278 <unsign_to_ascii+0x4c>
c0006254:	8b 45 08             	mov    0x8(%ebp),%eax
c0006257:	8b 00                	mov    (%eax),%eax
c0006259:	c7 00 66 66 66 66    	movl   $0x66666666,(%eax)
c000625f:	c7 40 04 66 66 66 66 	movl   $0x66666666,0x4(%eax)
c0006266:	8b 45 08             	mov    0x8(%ebp),%eax
c0006269:	8b 00                	mov    (%eax),%eax
c000626b:	8d 50 08             	lea    0x8(%eax),%edx
c000626e:	8b 45 08             	mov    0x8(%ebp),%eax
c0006271:	89 10                	mov    %edx,(%eax)
c0006273:	e9 ae 00 00 00       	jmp    c0006326 <unsign_to_ascii+0xfa>
c0006278:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%ebp)
c000627f:	eb 04                	jmp    c0006285 <unsign_to_ascii+0x59>
c0006281:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c0006285:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006288:	3b 45 f8             	cmp    -0x8(%ebp),%eax
c000628b:	72 f4                	jb     c0006281 <unsign_to_ascii+0x55>
c000628d:	eb 5e                	jmp    c00062ed <unsign_to_ascii+0xc1>
c000628f:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0006292:	8d 58 01             	lea    0x1(%eax),%ebx
c0006295:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006298:	ba 00 00 00 00       	mov    $0x0,%edx
c000629d:	f7 f3                	div    %ebx
c000629f:	88 45 f7             	mov    %al,-0x9(%ebp)
c00062a2:	80 7d f7 09          	cmpb   $0x9,-0x9(%ebp)
c00062a6:	7f 18                	jg     c00062c0 <unsign_to_ascii+0x94>
c00062a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00062ab:	8b 00                	mov    (%eax),%eax
c00062ad:	8d 48 01             	lea    0x1(%eax),%ecx
c00062b0:	8b 55 08             	mov    0x8(%ebp),%edx
c00062b3:	89 0a                	mov    %ecx,(%edx)
c00062b5:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c00062b9:	83 c2 30             	add    $0x30,%edx
c00062bc:	88 10                	mov    %dl,(%eax)
c00062be:	eb 16                	jmp    c00062d6 <unsign_to_ascii+0xaa>
c00062c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00062c3:	8b 00                	mov    (%eax),%eax
c00062c5:	8d 48 01             	lea    0x1(%eax),%ecx
c00062c8:	8b 55 08             	mov    0x8(%ebp),%edx
c00062cb:	89 0a                	mov    %ecx,(%edx)
c00062cd:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c00062d1:	83 c2 57             	add    $0x57,%edx
c00062d4:	88 10                	mov    %dl,(%eax)
c00062d6:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00062d9:	8d 48 01             	lea    0x1(%eax),%ecx
c00062dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00062df:	ba 00 00 00 00       	mov    $0x0,%edx
c00062e4:	f7 f1                	div    %ecx
c00062e6:	89 55 0c             	mov    %edx,0xc(%ebp)
c00062e9:	c1 6d f8 04          	shrl   $0x4,-0x8(%ebp)
c00062ed:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
c00062f1:	75 9c                	jne    c000628f <unsign_to_ascii+0x63>
c00062f3:	83 7d 0c 09          	cmpl   $0x9,0xc(%ebp)
c00062f7:	77 17                	ja     c0006310 <unsign_to_ascii+0xe4>
c00062f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00062fc:	8b 00                	mov    (%eax),%eax
c00062fe:	8d 48 01             	lea    0x1(%eax),%ecx
c0006301:	8b 55 08             	mov    0x8(%ebp),%edx
c0006304:	89 0a                	mov    %ecx,(%edx)
c0006306:	8b 55 0c             	mov    0xc(%ebp),%edx
c0006309:	83 c2 30             	add    $0x30,%edx
c000630c:	88 10                	mov    %dl,(%eax)
c000630e:	eb 16                	jmp    c0006326 <unsign_to_ascii+0xfa>
c0006310:	8b 45 08             	mov    0x8(%ebp),%eax
c0006313:	8b 00                	mov    (%eax),%eax
c0006315:	8d 48 01             	lea    0x1(%eax),%ecx
c0006318:	8b 55 08             	mov    0x8(%ebp),%edx
c000631b:	89 0a                	mov    %ecx,(%edx)
c000631d:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006321:	83 c2 57             	add    $0x57,%edx
c0006324:	88 10                	mov    %dl,(%eax)
c0006326:	83 c4 10             	add    $0x10,%esp
c0006329:	5b                   	pop    %ebx
c000632a:	5d                   	pop    %ebp
c000632b:	c3                   	ret    

c000632c <getpid>:
c000632c:	55                   	push   %ebp
c000632d:	89 e5                	mov    %esp,%ebp
c000632f:	83 ec 10             	sub    $0x10,%esp
c0006332:	6a 00                	push   $0x0
c0006334:	cd 80                	int    $0x80
c0006336:	83 c4 04             	add    $0x4,%esp
c0006339:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000633c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c000633f:	c9                   	leave  
c0006340:	c3                   	ret    

c0006341 <malloc>:
c0006341:	55                   	push   %ebp
c0006342:	89 e5                	mov    %esp,%ebp
c0006344:	83 ec 10             	sub    $0x10,%esp
c0006347:	ff 75 08             	pushl  0x8(%ebp)
c000634a:	6a 02                	push   $0x2
c000634c:	cd 80                	int    $0x80
c000634e:	83 c4 08             	add    $0x8,%esp
c0006351:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0006354:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006357:	c9                   	leave  
c0006358:	c3                   	ret    

c0006359 <free>:
c0006359:	55                   	push   %ebp
c000635a:	89 e5                	mov    %esp,%ebp
c000635c:	83 ec 10             	sub    $0x10,%esp
c000635f:	ff 75 08             	pushl  0x8(%ebp)
c0006362:	6a 03                	push   $0x3
c0006364:	cd 80                	int    $0x80
c0006366:	83 c4 08             	add    $0x8,%esp
c0006369:	89 45 fc             	mov    %eax,-0x4(%ebp)
c000636c:	90                   	nop
c000636d:	c9                   	leave  
c000636e:	c3                   	ret    

c000636f <read_port>:
c000636f:	55                   	push   %ebp
c0006370:	89 e5                	mov    %esp,%ebp
c0006372:	83 ec 14             	sub    $0x14,%esp
c0006375:	8b 45 08             	mov    0x8(%ebp),%eax
c0006378:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c000637c:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
c0006380:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c0006384:	ec                   	in     (%dx),%al
c0006385:	88 45 ff             	mov    %al,-0x1(%ebp)
c0006388:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
c000638c:	c9                   	leave  
c000638d:	c3                   	ret    

c000638e <read_wordstream>:
c000638e:	55                   	push   %ebp
c000638f:	89 e5                	mov    %esp,%ebp
c0006391:	57                   	push   %edi
c0006392:	53                   	push   %ebx
c0006393:	83 ec 04             	sub    $0x4,%esp
c0006396:	8b 45 08             	mov    0x8(%ebp),%eax
c0006399:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
c000639d:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
c00063a1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00063a4:	8b 45 10             	mov    0x10(%ebp),%eax
c00063a7:	89 cb                	mov    %ecx,%ebx
c00063a9:	89 df                	mov    %ebx,%edi
c00063ab:	89 c1                	mov    %eax,%ecx
c00063ad:	fc                   	cld    
c00063ae:	66 f3 6d             	rep insw (%dx),%es:(%edi)
c00063b1:	89 c8                	mov    %ecx,%eax
c00063b3:	89 fb                	mov    %edi,%ebx
c00063b5:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00063b8:	89 45 10             	mov    %eax,0x10(%ebp)
c00063bb:	83 c4 04             	add    $0x4,%esp
c00063be:	5b                   	pop    %ebx
c00063bf:	5f                   	pop    %edi
c00063c0:	5d                   	pop    %ebp
c00063c1:	c3                   	ret    

c00063c2 <write_port>:
c00063c2:	55                   	push   %ebp
c00063c3:	89 e5                	mov    %esp,%ebp
c00063c5:	83 ec 04             	sub    $0x4,%esp
c00063c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00063cb:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00063cf:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c00063d3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00063d6:	ee                   	out    %al,(%dx)
c00063d7:	c9                   	leave  
c00063d8:	c3                   	ret    

c00063d9 <write_wordstream>:
c00063d9:	55                   	push   %ebp
c00063da:	89 e5                	mov    %esp,%ebp
c00063dc:	56                   	push   %esi
c00063dd:	53                   	push   %ebx
c00063de:	83 ec 04             	sub    $0x4,%esp
c00063e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00063e4:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
c00063e8:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
c00063ec:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00063ef:	8b 45 10             	mov    0x10(%ebp),%eax
c00063f2:	89 cb                	mov    %ecx,%ebx
c00063f4:	89 de                	mov    %ebx,%esi
c00063f6:	89 c1                	mov    %eax,%ecx
c00063f8:	fc                   	cld    
c00063f9:	66 f3 6f             	rep outsw %ds:(%esi),(%dx)
c00063fc:	89 c8                	mov    %ecx,%eax
c00063fe:	89 f3                	mov    %esi,%ebx
c0006400:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0006403:	89 45 10             	mov    %eax,0x10(%ebp)
c0006406:	83 c4 04             	add    $0x4,%esp
c0006409:	5b                   	pop    %ebx
c000640a:	5e                   	pop    %esi
c000640b:	5d                   	pop    %ebp
c000640c:	c3                   	ret    

c000640d <channel_init>:
c000640d:	55                   	push   %ebp
c000640e:	89 e5                	mov    %esp,%ebp
c0006410:	83 ec 28             	sub    $0x28,%esp
c0006413:	b8 75 04 00 00       	mov    $0x475,%eax
c0006418:	0f b6 00             	movzbl (%eax),%eax
c000641b:	88 45 f6             	mov    %al,-0xa(%ebp)
c000641e:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
c0006422:	89 c2                	mov    %eax,%edx
c0006424:	c0 ea 07             	shr    $0x7,%dl
c0006427:	01 d0                	add    %edx,%eax
c0006429:	d0 f8                	sar    %al
c000642b:	88 45 f5             	mov    %al,-0xb(%ebp)
c000642e:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
c0006432:	e9 fa 00 00 00       	jmp    c0006531 <channel_init+0x124>
c0006437:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000643b:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c0006441:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c0006446:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0006449:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000644c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0006453:	00 
c0006454:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c000645b:	00 
c000645c:	89 04 24             	mov    %eax,(%esp)
c000645f:	e8 49 d2 ff ff       	call   c00036ad <memset_8>
c0006464:	c7 45 ec 58 77 00 c0 	movl   $0xc0007758,-0x14(%ebp)
c000646b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000646e:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
c0006475:	00 
c0006476:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0006479:	89 54 24 04          	mov    %edx,0x4(%esp)
c000647d:	89 04 24             	mov    %eax,(%esp)
c0006480:	e8 e5 d2 ff ff       	call   c000376a <memcopy>
c0006485:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006489:	83 c0 30             	add    $0x30,%eax
c000648c:	89 c2                	mov    %eax,%edx
c000648e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006491:	88 50 03             	mov    %dl,0x3(%eax)
c0006494:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006497:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c000649b:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000649f:	85 c0                	test   %eax,%eax
c00064a1:	74 07                	je     c00064aa <channel_init+0x9d>
c00064a3:	83 f8 01             	cmp    $0x1,%eax
c00064a6:	74 2e                	je     c00064d6 <channel_init+0xc9>
c00064a8:	eb 57                	jmp    c0006501 <channel_init+0xf4>
c00064aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064ad:	c7 40 08 f0 01 00 00 	movl   $0x1f0,0x8(%eax)
c00064b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064b7:	c7 40 0c 2e 00 00 00 	movl   $0x2e,0xc(%eax)
c00064be:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064c1:	8b 40 0c             	mov    0xc(%eax),%eax
c00064c4:	c7 44 24 04 3f 69 00 	movl   $0xc000693f,0x4(%esp)
c00064cb:	c0 
c00064cc:	89 04 24             	mov    %eax,(%esp)
c00064cf:	e8 c2 b2 ff ff       	call   c0001796 <register_int>
c00064d4:	eb 2b                	jmp    c0006501 <channel_init+0xf4>
c00064d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064d9:	c7 40 08 70 01 00 00 	movl   $0x170,0x8(%eax)
c00064e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064e3:	c7 40 0c 2f 00 00 00 	movl   $0x2f,0xc(%eax)
c00064ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00064ed:	8b 40 0c             	mov    0xc(%eax),%eax
c00064f0:	c7 44 24 04 3f 69 00 	movl   $0xc000693f,0x4(%esp)
c00064f7:	c0 
c00064f8:	89 04 24             	mov    %eax,(%esp)
c00064fb:	e8 96 b2 ff ff       	call   c0001796 <register_int>
c0006500:	90                   	nop
c0006501:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006504:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c000650b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000650e:	83 c0 14             	add    $0x14,%eax
c0006511:	89 04 24             	mov    %eax,(%esp)
c0006514:	e8 4c eb ff ff       	call   c0005065 <init_mutex>
c0006519:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000651c:	83 c0 28             	add    $0x28,%eax
c000651f:	89 04 24             	mov    %eax,(%esp)
c0006522:	e8 7b eb ff ff       	call   c00050a2 <sema_init>
c0006527:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000652b:	83 c0 01             	add    $0x1,%eax
c000652e:	88 45 f7             	mov    %al,-0x9(%ebp)
c0006531:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006535:	3a 45 f5             	cmp    -0xb(%ebp),%al
c0006538:	0f 86 f9 fe ff ff    	jbe    c0006437 <channel_init+0x2a>
c000653e:	c9                   	leave  
c000653f:	c3                   	ret    

c0006540 <select_disk>:
c0006540:	55                   	push   %ebp
c0006541:	89 e5                	mov    %esp,%ebp
c0006543:	83 ec 28             	sub    $0x28,%esp
c0006546:	c6 45 f7 e0          	movb   $0xe0,-0x9(%ebp)
c000654a:	8b 45 08             	mov    0x8(%ebp),%eax
c000654d:	0f b6 40 14          	movzbl 0x14(%eax),%eax
c0006551:	84 c0                	test   %al,%al
c0006553:	74 04                	je     c0006559 <select_disk+0x19>
c0006555:	80 4d f7 10          	orb    $0x10,-0x9(%ebp)
c0006559:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c000655d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006561:	c7 04 24 5c 77 00 c0 	movl   $0xc000775c,(%esp)
c0006568:	e8 30 0a 00 00       	call   c0006f9d <__printk>
c000656d:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
c0006571:	8b 45 08             	mov    0x8(%ebp),%eax
c0006574:	8b 40 10             	mov    0x10(%eax),%eax
c0006577:	8b 40 08             	mov    0x8(%eax),%eax
c000657a:	83 c0 06             	add    $0x6,%eax
c000657d:	0f b7 c0             	movzwl %ax,%eax
c0006580:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006584:	89 04 24             	mov    %eax,(%esp)
c0006587:	e8 36 fe ff ff       	call   c00063c2 <write_port>
c000658c:	8b 45 08             	mov    0x8(%ebp),%eax
c000658f:	c9                   	leave  
c0006590:	c3                   	ret    

c0006591 <select_sector>:
c0006591:	55                   	push   %ebp
c0006592:	89 e5                	mov    %esp,%ebp
c0006594:	83 ec 1c             	sub    $0x1c,%esp
c0006597:	8b 45 10             	mov    0x10(%ebp),%eax
c000659a:	88 45 ec             	mov    %al,-0x14(%ebp)
c000659d:	8b 45 08             	mov    0x8(%ebp),%eax
c00065a0:	8b 40 10             	mov    0x10(%eax),%eax
c00065a3:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00065a6:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
c00065aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00065ad:	8b 40 10             	mov    0x10(%eax),%eax
c00065b0:	8b 40 08             	mov    0x8(%eax),%eax
c00065b3:	83 c0 02             	add    $0x2,%eax
c00065b6:	0f b7 c0             	movzwl %ax,%eax
c00065b9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00065bd:	89 04 24             	mov    %eax,(%esp)
c00065c0:	e8 fd fd ff ff       	call   c00063c2 <write_port>
c00065c5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00065c8:	88 45 fb             	mov    %al,-0x5(%ebp)
c00065cb:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00065cf:	8b 45 08             	mov    0x8(%ebp),%eax
c00065d2:	8b 40 10             	mov    0x10(%eax),%eax
c00065d5:	8b 40 08             	mov    0x8(%eax),%eax
c00065d8:	83 c0 03             	add    $0x3,%eax
c00065db:	0f b7 c0             	movzwl %ax,%eax
c00065de:	89 54 24 04          	mov    %edx,0x4(%esp)
c00065e2:	89 04 24             	mov    %eax,(%esp)
c00065e5:	e8 d8 fd ff ff       	call   c00063c2 <write_port>
c00065ea:	8b 45 0c             	mov    0xc(%ebp),%eax
c00065ed:	c1 e8 08             	shr    $0x8,%eax
c00065f0:	88 45 fb             	mov    %al,-0x5(%ebp)
c00065f3:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c00065f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00065fa:	8b 40 10             	mov    0x10(%eax),%eax
c00065fd:	8b 40 08             	mov    0x8(%eax),%eax
c0006600:	83 c0 04             	add    $0x4,%eax
c0006603:	0f b7 c0             	movzwl %ax,%eax
c0006606:	89 54 24 04          	mov    %edx,0x4(%esp)
c000660a:	89 04 24             	mov    %eax,(%esp)
c000660d:	e8 b0 fd ff ff       	call   c00063c2 <write_port>
c0006612:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006615:	c1 e8 10             	shr    $0x10,%eax
c0006618:	88 45 fb             	mov    %al,-0x5(%ebp)
c000661b:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c000661f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006622:	8b 40 10             	mov    0x10(%eax),%eax
c0006625:	8b 40 08             	mov    0x8(%eax),%eax
c0006628:	83 c0 05             	add    $0x5,%eax
c000662b:	0f b7 c0             	movzwl %ax,%eax
c000662e:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006632:	89 04 24             	mov    %eax,(%esp)
c0006635:	e8 88 fd ff ff       	call   c00063c2 <write_port>
c000663a:	8b 45 0c             	mov    0xc(%ebp),%eax
c000663d:	c1 e8 18             	shr    $0x18,%eax
c0006640:	88 45 fb             	mov    %al,-0x5(%ebp)
c0006643:	8b 45 08             	mov    0x8(%ebp),%eax
c0006646:	0f b6 40 14          	movzbl 0x14(%eax),%eax
c000664a:	84 c0                	test   %al,%al
c000664c:	74 07                	je     c0006655 <select_sector+0xc4>
c000664e:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
c0006653:	eb 05                	jmp    c000665a <select_sector+0xc9>
c0006655:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
c000665a:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
c000665e:	09 d0                	or     %edx,%eax
c0006660:	88 45 fa             	mov    %al,-0x6(%ebp)
c0006663:	0f b6 55 fa          	movzbl -0x6(%ebp),%edx
c0006667:	8b 45 08             	mov    0x8(%ebp),%eax
c000666a:	8b 40 10             	mov    0x10(%eax),%eax
c000666d:	8b 40 08             	mov    0x8(%eax),%eax
c0006670:	83 c0 06             	add    $0x6,%eax
c0006673:	0f b7 c0             	movzwl %ax,%eax
c0006676:	89 54 24 04          	mov    %edx,0x4(%esp)
c000667a:	89 04 24             	mov    %eax,(%esp)
c000667d:	e8 40 fd ff ff       	call   c00063c2 <write_port>
c0006682:	c9                   	leave  
c0006683:	c3                   	ret    

c0006684 <send_cmd>:
c0006684:	55                   	push   %ebp
c0006685:	89 e5                	mov    %esp,%ebp
c0006687:	83 ec 0c             	sub    $0xc,%esp
c000668a:	8b 45 0c             	mov    0xc(%ebp),%eax
c000668d:	88 45 fc             	mov    %al,-0x4(%ebp)
c0006690:	8b 45 08             	mov    0x8(%ebp),%eax
c0006693:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c000669a:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c000669e:	8b 45 08             	mov    0x8(%ebp),%eax
c00066a1:	8b 40 08             	mov    0x8(%eax),%eax
c00066a4:	83 c0 07             	add    $0x7,%eax
c00066a7:	0f b7 c0             	movzwl %ax,%eax
c00066aa:	89 54 24 04          	mov    %edx,0x4(%esp)
c00066ae:	89 04 24             	mov    %eax,(%esp)
c00066b1:	e8 0c fd ff ff       	call   c00063c2 <write_port>
c00066b6:	c9                   	leave  
c00066b7:	c3                   	ret    

c00066b8 <hd_busy>:
c00066b8:	55                   	push   %ebp
c00066b9:	89 e5                	mov    %esp,%ebp
c00066bb:	83 ec 28             	sub    $0x28,%esp
c00066be:	c7 45 f4 40 9c 00 00 	movl   $0x9c40,-0xc(%ebp)
c00066c5:	eb 42                	jmp    c0006709 <hd_busy+0x51>
c00066c7:	a1 28 b2 00 c0       	mov    0xc000b228,%eax
c00066cc:	83 c0 07             	add    $0x7,%eax
c00066cf:	0f b7 c0             	movzwl %ax,%eax
c00066d2:	89 04 24             	mov    %eax,(%esp)
c00066d5:	e8 95 fc ff ff       	call   c000636f <read_port>
c00066da:	84 c0                	test   %al,%al
c00066dc:	78 1b                	js     c00066f9 <hd_busy+0x41>
c00066de:	a1 28 b2 00 c0       	mov    0xc000b228,%eax
c00066e3:	83 c0 07             	add    $0x7,%eax
c00066e6:	0f b7 c0             	movzwl %ax,%eax
c00066e9:	89 04 24             	mov    %eax,(%esp)
c00066ec:	e8 7e fc ff ff       	call   c000636f <read_port>
c00066f1:	0f b6 c0             	movzbl %al,%eax
c00066f4:	83 e0 08             	and    $0x8,%eax
c00066f7:	eb 1b                	jmp    c0006714 <hd_busy+0x5c>
c00066f9:	c7 04 24 32 00 00 00 	movl   $0x32,(%esp)
c0006700:	e8 47 b2 ff ff       	call   c000194c <mtime_sleep>
c0006705:	83 6d f4 32          	subl   $0x32,-0xc(%ebp)
c0006709:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c000670d:	75 b8                	jne    c00066c7 <hd_busy+0xf>
c000670f:	b8 00 00 00 00       	mov    $0x0,%eax
c0006714:	c9                   	leave  
c0006715:	c3                   	ret    

c0006716 <read_hd>:
c0006716:	55                   	push   %ebp
c0006717:	89 e5                	mov    %esp,%ebp
c0006719:	83 ec 18             	sub    $0x18,%esp
c000671c:	8b 45 08             	mov    0x8(%ebp),%eax
c000671f:	8b 40 10             	mov    0x10(%eax),%eax
c0006722:	83 c0 14             	add    $0x14,%eax
c0006725:	89 04 24             	mov    %eax,(%esp)
c0006728:	e8 e6 ea ff ff       	call   c0005213 <lock>
c000672d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006730:	89 04 24             	mov    %eax,(%esp)
c0006733:	e8 08 fe ff ff       	call   c0006540 <select_disk>
c0006738:	8b 45 14             	mov    0x14(%ebp),%eax
c000673b:	0f b6 c0             	movzbl %al,%eax
c000673e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006742:	8b 45 10             	mov    0x10(%ebp),%eax
c0006745:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006749:	8b 45 08             	mov    0x8(%ebp),%eax
c000674c:	89 04 24             	mov    %eax,(%esp)
c000674f:	e8 3d fe ff ff       	call   c0006591 <select_sector>
c0006754:	8b 45 08             	mov    0x8(%ebp),%eax
c0006757:	8b 40 10             	mov    0x10(%eax),%eax
c000675a:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0006761:	00 
c0006762:	89 04 24             	mov    %eax,(%esp)
c0006765:	e8 1a ff ff ff       	call   c0006684 <send_cmd>
c000676a:	8b 45 08             	mov    0x8(%ebp),%eax
c000676d:	8b 40 10             	mov    0x10(%eax),%eax
c0006770:	83 c0 28             	add    $0x28,%eax
c0006773:	89 04 24             	mov    %eax,(%esp)
c0006776:	e8 56 e9 ff ff       	call   c00050d1 <sema_down>
c000677b:	8b 45 08             	mov    0x8(%ebp),%eax
c000677e:	89 04 24             	mov    %eax,(%esp)
c0006781:	e8 32 ff ff ff       	call   c00066b8 <hd_busy>
c0006786:	85 c0                	test   %eax,%eax
c0006788:	75 33                	jne    c00067bd <read_hd+0xa7>
c000678a:	8b 45 08             	mov    0x8(%ebp),%eax
c000678d:	8b 40 10             	mov    0x10(%eax),%eax
c0006790:	89 c2                	mov    %eax,%edx
c0006792:	8b 45 08             	mov    0x8(%ebp),%eax
c0006795:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006799:	89 44 24 04          	mov    %eax,0x4(%esp)
c000679d:	c7 04 24 65 77 00 c0 	movl   $0xc0007765,(%esp)
c00067a4:	e8 f4 07 00 00       	call   c0006f9d <__printk>
c00067a9:	8b 45 10             	mov    0x10(%ebp),%eax
c00067ac:	89 44 24 04          	mov    %eax,0x4(%esp)
c00067b0:	c7 04 24 7d 77 00 c0 	movl   $0xc000777d,(%esp)
c00067b7:	e8 e1 07 00 00       	call   c0006f9d <__printk>
c00067bc:	f4                   	hlt    
c00067bd:	8b 45 14             	mov    0x14(%ebp),%eax
c00067c0:	c1 e0 09             	shl    $0x9,%eax
c00067c3:	d1 e8                	shr    %eax
c00067c5:	89 c2                	mov    %eax,%edx
c00067c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00067ca:	8b 40 10             	mov    0x10(%eax),%eax
c00067cd:	8b 40 08             	mov    0x8(%eax),%eax
c00067d0:	0f b7 c0             	movzwl %ax,%eax
c00067d3:	89 54 24 08          	mov    %edx,0x8(%esp)
c00067d7:	8b 55 0c             	mov    0xc(%ebp),%edx
c00067da:	89 54 24 04          	mov    %edx,0x4(%esp)
c00067de:	89 04 24             	mov    %eax,(%esp)
c00067e1:	e8 a8 fb ff ff       	call   c000638e <read_wordstream>
c00067e6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00067e9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00067ed:	c7 04 24 95 77 00 c0 	movl   $0xc0007795,(%esp)
c00067f4:	e8 a4 07 00 00       	call   c0006f9d <__printk>
c00067f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00067fc:	8b 40 10             	mov    0x10(%eax),%eax
c00067ff:	83 c0 14             	add    $0x14,%eax
c0006802:	89 04 24             	mov    %eax,(%esp)
c0006805:	e8 5f ea ff ff       	call   c0005269 <unlock>
c000680a:	c9                   	leave  
c000680b:	c3                   	ret    

c000680c <write_hd>:
c000680c:	55                   	push   %ebp
c000680d:	89 e5                	mov    %esp,%ebp
c000680f:	83 ec 18             	sub    $0x18,%esp
c0006812:	8b 45 08             	mov    0x8(%ebp),%eax
c0006815:	8b 40 10             	mov    0x10(%eax),%eax
c0006818:	83 c0 14             	add    $0x14,%eax
c000681b:	89 04 24             	mov    %eax,(%esp)
c000681e:	e8 f0 e9 ff ff       	call   c0005213 <lock>
c0006823:	8b 45 08             	mov    0x8(%ebp),%eax
c0006826:	89 04 24             	mov    %eax,(%esp)
c0006829:	e8 12 fd ff ff       	call   c0006540 <select_disk>
c000682e:	8b 45 14             	mov    0x14(%ebp),%eax
c0006831:	c1 e8 09             	shr    $0x9,%eax
c0006834:	0f b6 c0             	movzbl %al,%eax
c0006837:	89 44 24 08          	mov    %eax,0x8(%esp)
c000683b:	8b 45 10             	mov    0x10(%ebp),%eax
c000683e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006842:	8b 45 08             	mov    0x8(%ebp),%eax
c0006845:	89 04 24             	mov    %eax,(%esp)
c0006848:	e8 44 fd ff ff       	call   c0006591 <select_sector>
c000684d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006850:	8b 40 10             	mov    0x10(%eax),%eax
c0006853:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%esp)
c000685a:	00 
c000685b:	89 04 24             	mov    %eax,(%esp)
c000685e:	e8 21 fe ff ff       	call   c0006684 <send_cmd>
c0006863:	8b 45 08             	mov    0x8(%ebp),%eax
c0006866:	8b 40 10             	mov    0x10(%eax),%eax
c0006869:	83 c0 28             	add    $0x28,%eax
c000686c:	89 04 24             	mov    %eax,(%esp)
c000686f:	e8 5d e8 ff ff       	call   c00050d1 <sema_down>
c0006874:	8b 45 08             	mov    0x8(%ebp),%eax
c0006877:	89 04 24             	mov    %eax,(%esp)
c000687a:	e8 39 fe ff ff       	call   c00066b8 <hd_busy>
c000687f:	85 c0                	test   %eax,%eax
c0006881:	75 33                	jne    c00068b6 <write_hd+0xaa>
c0006883:	8b 45 08             	mov    0x8(%ebp),%eax
c0006886:	8b 40 10             	mov    0x10(%eax),%eax
c0006889:	89 c2                	mov    %eax,%edx
c000688b:	8b 45 08             	mov    0x8(%ebp),%eax
c000688e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006892:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006896:	c7 04 24 65 77 00 c0 	movl   $0xc0007765,(%esp)
c000689d:	e8 fb 06 00 00       	call   c0006f9d <__printk>
c00068a2:	8b 45 10             	mov    0x10(%ebp),%eax
c00068a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00068a9:	c7 04 24 b3 77 00 c0 	movl   $0xc00077b3,(%esp)
c00068b0:	e8 e8 06 00 00       	call   c0006f9d <__printk>
c00068b5:	f4                   	hlt    
c00068b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00068b9:	8b 40 10             	mov    0x10(%eax),%eax
c00068bc:	8b 40 08             	mov    0x8(%eax),%eax
c00068bf:	0f b7 c0             	movzwl %ax,%eax
c00068c2:	8b 55 14             	mov    0x14(%ebp),%edx
c00068c5:	89 54 24 08          	mov    %edx,0x8(%esp)
c00068c9:	8b 55 0c             	mov    0xc(%ebp),%edx
c00068cc:	89 54 24 04          	mov    %edx,0x4(%esp)
c00068d0:	89 04 24             	mov    %eax,(%esp)
c00068d3:	e8 01 fb ff ff       	call   c00063d9 <write_wordstream>
c00068d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00068db:	8b 40 10             	mov    0x10(%eax),%eax
c00068de:	83 c0 14             	add    $0x14,%eax
c00068e1:	89 04 24             	mov    %eax,(%esp)
c00068e4:	e8 80 e9 ff ff       	call   c0005269 <unlock>
c00068e9:	c9                   	leave  
c00068ea:	c3                   	ret    

c00068eb <word_reverse>:
c00068eb:	55                   	push   %ebp
c00068ec:	89 e5                	mov    %esp,%ebp
c00068ee:	83 ec 10             	sub    $0x10,%esp
c00068f1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00068f8:	eb 3b                	jmp    c0006935 <word_reverse+0x4a>
c00068fa:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00068fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0006900:	01 d0                	add    %edx,%eax
c0006902:	0f b6 00             	movzbl (%eax),%eax
c0006905:	88 45 fb             	mov    %al,-0x5(%ebp)
c0006908:	8b 55 fc             	mov    -0x4(%ebp),%edx
c000690b:	8b 45 08             	mov    0x8(%ebp),%eax
c000690e:	01 c2                	add    %eax,%edx
c0006910:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006913:	8d 48 01             	lea    0x1(%eax),%ecx
c0006916:	8b 45 08             	mov    0x8(%ebp),%eax
c0006919:	01 c8                	add    %ecx,%eax
c000691b:	0f b6 00             	movzbl (%eax),%eax
c000691e:	88 02                	mov    %al,(%edx)
c0006920:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006923:	8d 50 01             	lea    0x1(%eax),%edx
c0006926:	8b 45 08             	mov    0x8(%ebp),%eax
c0006929:	01 c2                	add    %eax,%edx
c000692b:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c000692f:	88 02                	mov    %al,(%edx)
c0006931:	83 45 fc 02          	addl   $0x2,-0x4(%ebp)
c0006935:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0006938:	3b 45 0c             	cmp    0xc(%ebp),%eax
c000693b:	7c bd                	jl     c00068fa <word_reverse+0xf>
c000693d:	c9                   	leave  
c000693e:	c3                   	ret    

c000693f <hd_intr>:
c000693f:	55                   	push   %ebp
c0006940:	89 e5                	mov    %esp,%ebp
c0006942:	83 ec 28             	sub    $0x28,%esp
c0006945:	66 8b 45 08          	mov    0x8(%ebp),%ax
c0006949:	89 45 f4             	mov    %eax,-0xc(%ebp)
c000694c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c000694f:	83 e8 2e             	sub    $0x2e,%eax
c0006952:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c0006958:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c000695d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0006960:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006963:	8b 40 10             	mov    0x10(%eax),%eax
c0006966:	85 c0                	test   %eax,%eax
c0006968:	74 18                	je     c0006982 <hd_intr+0x43>
c000696a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c000696d:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0006974:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006977:	83 c0 28             	add    $0x28,%eax
c000697a:	89 04 24             	mov    %eax,(%esp)
c000697d:	e8 38 e8 ff ff       	call   c00051ba <sema_up>
c0006982:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006985:	8b 40 08             	mov    0x8(%eax),%eax
c0006988:	83 c0 07             	add    $0x7,%eax
c000698b:	0f b7 c0             	movzwl %ax,%eax
c000698e:	89 04 24             	mov    %eax,(%esp)
c0006991:	e8 d9 f9 ff ff       	call   c000636f <read_port>
c0006996:	c9                   	leave  
c0006997:	c3                   	ret    

c0006998 <disk_init>:
c0006998:	55                   	push   %ebp
c0006999:	89 e5                	mov    %esp,%ebp
c000699b:	83 ec 28             	sub    $0x28,%esp
c000699e:	b8 75 04 00 00       	mov    $0x475,%eax
c00069a3:	0f b6 00             	movzbl (%eax),%eax
c00069a6:	88 45 f6             	mov    %al,-0xa(%ebp)
c00069a9:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
c00069ad:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
c00069b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00069b5:	c7 04 24 ca 77 00 c0 	movl   $0xc00077ca,(%esp)
c00069bc:	e8 dc 05 00 00       	call   c0006f9d <__printk>
c00069c1:	e9 e3 00 00 00       	jmp    c0006aa9 <disk_init+0x111>
c00069c6:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c00069ca:	89 c2                	mov    %eax,%edx
c00069cc:	c0 ea 07             	shr    $0x7,%dl
c00069cf:	01 d0                	add    %edx,%eax
c00069d1:	d0 f8                	sar    %al
c00069d3:	0f be c0             	movsbl %al,%eax
c00069d6:	69 c0 c4 03 00 00    	imul   $0x3c4,%eax,%eax
c00069dc:	05 20 b2 00 c0       	add    $0xc000b220,%eax
c00069e1:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00069e4:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c00069e8:	89 c2                	mov    %eax,%edx
c00069ea:	c0 fa 07             	sar    $0x7,%dl
c00069ed:	c0 ea 07             	shr    $0x7,%dl
c00069f0:	01 d0                	add    %edx,%eax
c00069f2:	83 e0 01             	and    $0x1,%eax
c00069f5:	29 d0                	sub    %edx,%eax
c00069f7:	0f be c0             	movsbl %al,%eax
c00069fa:	69 c0 c8 01 00 00    	imul   $0x1c8,%eax,%eax
c0006a00:	8d 50 30             	lea    0x30(%eax),%edx
c0006a03:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0006a06:	01 d0                	add    %edx,%eax
c0006a08:	83 c0 04             	add    $0x4,%eax
c0006a0b:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0006a0e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a11:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0006a14:	89 50 10             	mov    %edx,0x10(%eax)
c0006a17:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006a1b:	89 c2                	mov    %eax,%edx
c0006a1d:	c0 fa 07             	sar    $0x7,%dl
c0006a20:	c0 ea 07             	shr    $0x7,%dl
c0006a23:	01 d0                	add    %edx,%eax
c0006a25:	83 e0 01             	and    $0x1,%eax
c0006a28:	29 d0                	sub    %edx,%eax
c0006a2a:	89 c2                	mov    %eax,%edx
c0006a2c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a2f:	88 50 14             	mov    %dl,0x14(%eax)
c0006a32:	c7 45 e8 d8 77 00 c0 	movl   $0xc00077d8,-0x18(%ebp)
c0006a39:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a3c:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
c0006a43:	00 
c0006a44:	8b 55 e8             	mov    -0x18(%ebp),%edx
c0006a47:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006a4b:	89 04 24             	mov    %eax,(%esp)
c0006a4e:	e8 17 cd ff ff       	call   c000376a <memcopy>
c0006a53:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006a57:	83 c0 61             	add    $0x61,%eax
c0006a5a:	89 c2                	mov    %eax,%edx
c0006a5c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a5f:	88 50 02             	mov    %dl,0x2(%eax)
c0006a62:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a65:	c6 40 03 00          	movb   $0x0,0x3(%eax)
c0006a69:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a6c:	89 04 24             	mov    %eax,(%esp)
c0006a6f:	e8 7c 00 00 00       	call   c0006af0 <identify_disk>
c0006a74:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
c0006a78:	74 2b                	je     c0006aa5 <disk_init+0x10d>
c0006a7a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006a7d:	89 04 24             	mov    %eax,(%esp)
c0006a80:	e8 0f 02 00 00       	call   c0006c94 <read_partition>
c0006a85:	c7 04 24 dc 77 00 c0 	movl   $0xc00077dc,(%esp)
c0006a8c:	e8 0c 05 00 00       	call   c0006f9d <__printk>
c0006a91:	c7 44 24 04 b8 6a 00 	movl   $0xc0006ab8,0x4(%esp)
c0006a98:	c0 
c0006a99:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006aa0:	e8 66 e5 ff ff       	call   c000500b <lst_traverse>
c0006aa5:	80 45 f7 01          	addb   $0x1,-0x9(%ebp)
c0006aa9:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c0006aad:	3a 45 f6             	cmp    -0xa(%ebp),%al
c0006ab0:	0f 8c 10 ff ff ff    	jl     c00069c6 <disk_init+0x2e>
c0006ab6:	c9                   	leave  
c0006ab7:	c3                   	ret    

c0006ab8 <out_partition>:
c0006ab8:	55                   	push   %ebp
c0006ab9:	89 e5                	mov    %esp,%ebp
c0006abb:	83 ec 28             	sub    $0x28,%esp
c0006abe:	8b 45 08             	mov    0x8(%ebp),%eax
c0006ac1:	83 e8 08             	sub    $0x8,%eax
c0006ac4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0006ac7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006aca:	8b 48 14             	mov    0x14(%eax),%ecx
c0006acd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006ad0:	8b 50 10             	mov    0x10(%eax),%edx
c0006ad3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0006ad6:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c0006ada:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006ade:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006ae2:	c7 04 24 03 78 00 c0 	movl   $0xc0007803,(%esp)
c0006ae9:	e8 af 04 00 00       	call   c0006f9d <__printk>
c0006aee:	c9                   	leave  
c0006aef:	c3                   	ret    

c0006af0 <identify_disk>:
c0006af0:	55                   	push   %ebp
c0006af1:	89 e5                	mov    %esp,%ebp
c0006af3:	81 ec 68 02 00 00    	sub    $0x268,%esp
c0006af9:	c7 04 24 ba 78 00 c0 	movl   $0xc00078ba,(%esp)
c0006b00:	e8 00 ca ff ff       	call   c0003505 <put_str>
c0006b05:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0006b0c:	e8 6f c8 ff ff       	call   c0003380 <put_char>
c0006b11:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b14:	8b 40 10             	mov    0x10(%eax),%eax
c0006b17:	83 c0 14             	add    $0x14,%eax
c0006b1a:	89 04 24             	mov    %eax,(%esp)
c0006b1d:	e8 f1 e6 ff ff       	call   c0005213 <lock>
c0006b22:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b25:	89 04 24             	mov    %eax,(%esp)
c0006b28:	e8 13 fa ff ff       	call   c0006540 <select_disk>
c0006b2d:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b30:	8b 40 10             	mov    0x10(%eax),%eax
c0006b33:	c7 44 24 04 ec 00 00 	movl   $0xec,0x4(%esp)
c0006b3a:	00 
c0006b3b:	89 04 24             	mov    %eax,(%esp)
c0006b3e:	e8 41 fb ff ff       	call   c0006684 <send_cmd>
c0006b43:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b46:	8b 40 10             	mov    0x10(%eax),%eax
c0006b49:	83 c0 28             	add    $0x28,%eax
c0006b4c:	89 04 24             	mov    %eax,(%esp)
c0006b4f:	e8 7d e5 ff ff       	call   c00050d1 <sema_down>
c0006b54:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b57:	89 04 24             	mov    %eax,(%esp)
c0006b5a:	e8 59 fb ff ff       	call   c00066b8 <hd_busy>
c0006b5f:	85 c0                	test   %eax,%eax
c0006b61:	75 20                	jne    c0006b83 <identify_disk+0x93>
c0006b63:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b66:	8b 40 10             	mov    0x10(%eax),%eax
c0006b69:	89 c2                	mov    %eax,%edx
c0006b6b:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b6e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006b72:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006b76:	c7 04 24 65 77 00 c0 	movl   $0xc0007765,(%esp)
c0006b7d:	e8 1b 04 00 00       	call   c0006f9d <__printk>
c0006b82:	f4                   	hlt    
c0006b83:	8b 45 08             	mov    0x8(%ebp),%eax
c0006b86:	8b 40 10             	mov    0x10(%eax),%eax
c0006b89:	8b 40 08             	mov    0x8(%eax),%eax
c0006b8c:	0f b7 c0             	movzwl %ax,%eax
c0006b8f:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
c0006b96:	00 
c0006b97:	8d 95 f6 fd ff ff    	lea    -0x20a(%ebp),%edx
c0006b9d:	89 54 24 04          	mov    %edx,0x4(%esp)
c0006ba1:	89 04 24             	mov    %eax,(%esp)
c0006ba4:	e8 e5 f7 ff ff       	call   c000638e <read_wordstream>
c0006ba9:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
c0006bb0:	00 
c0006bb1:	8d 85 f6 fd ff ff    	lea    -0x20a(%ebp),%eax
c0006bb7:	89 04 24             	mov    %eax,(%esp)
c0006bba:	e8 2c fd ff ff       	call   c00068eb <word_reverse>
c0006bbf:	8b 45 08             	mov    0x8(%ebp),%eax
c0006bc2:	8b 40 10             	mov    0x10(%eax),%eax
c0006bc5:	83 c0 14             	add    $0x14,%eax
c0006bc8:	89 04 24             	mov    %eax,(%esp)
c0006bcb:	e8 99 e6 ff ff       	call   c0005269 <unlock>
c0006bd0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0006bd7:	00 
c0006bd8:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0006bdf:	00 
c0006be0:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006be6:	89 04 24             	mov    %eax,(%esp)
c0006be9:	e8 bf ca ff ff       	call   c00036ad <memset_8>
c0006bee:	8b 45 08             	mov    0x8(%ebp),%eax
c0006bf1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006bf5:	c7 04 24 10 78 00 c0 	movl   $0xc0007810,(%esp)
c0006bfc:	e8 9c 03 00 00       	call   c0006f9d <__printk>
c0006c01:	c7 44 24 08 14 00 00 	movl   $0x14,0x8(%esp)
c0006c08:	00 
c0006c09:	8d 85 f6 fd ff ff    	lea    -0x20a(%ebp),%eax
c0006c0f:	83 c0 14             	add    $0x14,%eax
c0006c12:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c16:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006c1c:	89 04 24             	mov    %eax,(%esp)
c0006c1f:	e8 46 cb ff ff       	call   c000376a <memcopy>
c0006c24:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006c2a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c2e:	c7 04 24 20 78 00 c0 	movl   $0xc0007820,(%esp)
c0006c35:	e8 63 03 00 00       	call   c0006f9d <__printk>
c0006c3a:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
c0006c41:	00 
c0006c42:	8d 85 f6 fd ff ff    	lea    -0x20a(%ebp),%eax
c0006c48:	83 c0 36             	add    $0x36,%eax
c0006c4b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c4f:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006c55:	89 04 24             	mov    %eax,(%esp)
c0006c58:	e8 0d cb ff ff       	call   c000376a <memcopy>
c0006c5d:	8d 85 b6 fd ff ff    	lea    -0x24a(%ebp),%eax
c0006c63:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c67:	c7 04 24 27 78 00 c0 	movl   $0xc0007827,(%esp)
c0006c6e:	e8 2a 03 00 00       	call   c0006f9d <__printk>
c0006c73:	0f b7 85 6e fe ff ff 	movzwl -0x192(%ebp),%eax
c0006c7a:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c0006c7e:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0006c82:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006c86:	c7 04 24 33 78 00 c0 	movl   $0xc0007833,(%esp)
c0006c8d:	e8 0b 03 00 00       	call   c0006f9d <__printk>
c0006c92:	c9                   	leave  
c0006c93:	c3                   	ret    

c0006c94 <read_partition>:
c0006c94:	55                   	push   %ebp
c0006c95:	89 e5                	mov    %esp,%ebp
c0006c97:	81 ec 38 02 00 00    	sub    $0x238,%esp
c0006c9d:	c7 04 24 c8 78 00 c0 	movl   $0xc00078c8,(%esp)
c0006ca4:	e8 5c c8 ff ff       	call   c0003505 <put_str>
c0006ca9:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0006cb0:	e8 cb c6 ff ff       	call   c0003380 <put_char>
c0006cb5:	c6 05 00 b2 00 c0 00 	movb   $0x0,0xc000b200
c0006cbc:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0006cc3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0006cca:	c6 45 eb 00          	movb   $0x0,-0x15(%ebp)
c0006cce:	c6 45 ea 00          	movb   $0x0,-0x16(%ebp)
c0006cd2:	e9 89 01 00 00       	jmp    c0006e60 <read_partition+0x1cc>
c0006cd7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0006cde:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0006ce5:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
c0006cec:	00 
c0006ced:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0006cf0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006cf4:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
c0006cfa:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006cfe:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d01:	89 04 24             	mov    %eax,(%esp)
c0006d04:	e8 0d fa ff ff       	call   c0006716 <read_hd>
c0006d09:	e9 48 01 00 00       	jmp    c0006e56 <read_partition+0x1c2>
c0006d0e:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
c0006d14:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0006d17:	83 c2 1b             	add    $0x1b,%edx
c0006d1a:	c1 e2 04             	shl    $0x4,%edx
c0006d1d:	01 d0                	add    %edx,%eax
c0006d1f:	83 c0 0e             	add    $0xe,%eax
c0006d22:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0006d25:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006d28:	0f b6 40 04          	movzbl 0x4(%eax),%eax
c0006d2c:	3c 05                	cmp    $0x5,%al
c0006d2e:	75 15                	jne    c0006d45 <read_partition+0xb1>
c0006d30:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0006d37:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006d3a:	8b 40 08             	mov    0x8(%eax),%eax
c0006d3d:	01 45 ec             	add    %eax,-0x14(%ebp)
c0006d40:	e9 0d 01 00 00       	jmp    c0006e52 <read_partition+0x1be>
c0006d45:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006d48:	0f b6 40 04          	movzbl 0x4(%eax),%eax
c0006d4c:	84 c0                	test   %al,%al
c0006d4e:	0f 84 fe 00 00 00    	je     c0006e52 <read_partition+0x1be>
c0006d54:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0006d58:	75 7a                	jne    c0006dd4 <read_partition+0x140>
c0006d5a:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006d5e:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0006d61:	89 d0                	mov    %edx,%eax
c0006d63:	c1 e0 03             	shl    $0x3,%eax
c0006d66:	01 d0                	add    %edx,%eax
c0006d68:	c1 e0 02             	shl    $0x2,%eax
c0006d6b:	01 c8                	add    %ecx,%eax
c0006d6d:	83 c0 30             	add    $0x30,%eax
c0006d70:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0006d76:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006d7a:	89 d0                	mov    %edx,%eax
c0006d7c:	c1 e0 03             	shl    $0x3,%eax
c0006d7f:	01 d0                	add    %edx,%eax
c0006d81:	c1 e0 02             	shl    $0x2,%eax
c0006d84:	8d 50 10             	lea    0x10(%eax),%edx
c0006d87:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d8a:	01 d0                	add    %edx,%eax
c0006d8c:	8d 50 08             	lea    0x8(%eax),%edx
c0006d8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0006d92:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006d96:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006d99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006d9d:	89 14 24             	mov    %edx,(%esp)
c0006da0:	e8 ef 00 00 00       	call   c0006e94 <partition_init>
c0006da5:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006da9:	89 d0                	mov    %edx,%eax
c0006dab:	c1 e0 03             	shl    $0x3,%eax
c0006dae:	01 d0                	add    %edx,%eax
c0006db0:	c1 e0 02             	shl    $0x2,%eax
c0006db3:	8d 50 10             	lea    0x10(%eax),%edx
c0006db6:	8b 45 08             	mov    0x8(%ebp),%eax
c0006db9:	01 d0                	add    %edx,%eax
c0006dbb:	83 c0 10             	add    $0x10,%eax
c0006dbe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006dc2:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006dc9:	e8 41 de ff ff       	call   c0004c0f <lst_push>
c0006dce:	80 45 eb 01          	addb   $0x1,-0x15(%ebp)
c0006dd2:	eb 7e                	jmp    c0006e52 <read_partition+0x1be>
c0006dd4:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
c0006dd8:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0006ddb:	89 d0                	mov    %edx,%eax
c0006ddd:	c1 e0 03             	shl    $0x3,%eax
c0006de0:	01 d0                	add    %edx,%eax
c0006de2:	c1 e0 02             	shl    $0x2,%eax
c0006de5:	01 c8                	add    %ecx,%eax
c0006de7:	83 c0 30             	add    $0x30,%eax
c0006dea:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0006df0:	0f b6 55 ea          	movzbl -0x16(%ebp),%edx
c0006df4:	89 d0                	mov    %edx,%eax
c0006df6:	c1 e0 03             	shl    $0x3,%eax
c0006df9:	01 d0                	add    %edx,%eax
c0006dfb:	c1 e0 02             	shl    $0x2,%eax
c0006dfe:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
c0006e04:	8b 45 08             	mov    0x8(%ebp),%eax
c0006e07:	01 d0                	add    %edx,%eax
c0006e09:	8d 50 08             	lea    0x8(%eax),%edx
c0006e0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0006e0f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0006e13:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0006e16:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006e1a:	89 14 24             	mov    %edx,(%esp)
c0006e1d:	e8 72 00 00 00       	call   c0006e94 <partition_init>
c0006e22:	0f b6 55 ea          	movzbl -0x16(%ebp),%edx
c0006e26:	89 d0                	mov    %edx,%eax
c0006e28:	c1 e0 03             	shl    $0x3,%eax
c0006e2b:	01 d0                	add    %edx,%eax
c0006e2d:	c1 e0 02             	shl    $0x2,%eax
c0006e30:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
c0006e36:	8b 45 08             	mov    0x8(%ebp),%eax
c0006e39:	01 d0                	add    %edx,%eax
c0006e3b:	83 c0 10             	add    $0x10,%eax
c0006e3e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006e42:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006e49:	e8 c1 dd ff ff       	call   c0004c0f <lst_push>
c0006e4e:	80 45 ea 01          	addb   $0x1,-0x16(%ebp)
c0006e52:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0006e56:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
c0006e5a:	0f 8e ae fe ff ff    	jle    c0006d0e <read_partition+0x7a>
c0006e60:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0006e64:	0f 85 6d fe ff ff    	jne    c0006cd7 <read_partition+0x43>
c0006e6a:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
c0006e6e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006e72:	c7 04 24 3f 78 00 c0 	movl   $0xc000783f,(%esp)
c0006e79:	e8 1f 01 00 00       	call   c0006f9d <__printk>
c0006e7e:	0f b6 45 ea          	movzbl -0x16(%ebp),%eax
c0006e82:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006e86:	c7 04 24 4f 78 00 c0 	movl   $0xc000784f,(%esp)
c0006e8d:	e8 0b 01 00 00       	call   c0006f9d <__printk>
c0006e92:	c9                   	leave  
c0006e93:	c3                   	ret    

c0006e94 <partition_init>:
c0006e94:	55                   	push   %ebp
c0006e95:	89 e5                	mov    %esp,%ebp
c0006e97:	83 ec 18             	sub    $0x18,%esp
c0006e9a:	c7 04 24 d7 78 00 c0 	movl   $0xc00078d7,(%esp)
c0006ea1:	e8 5f c6 ff ff       	call   c0003505 <put_str>
c0006ea6:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0006ead:	e8 ce c4 ff ff       	call   c0003380 <put_char>
c0006eb2:	8b 45 08             	mov    0x8(%ebp),%eax
c0006eb5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0006ebc:	00 
c0006ebd:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
c0006ec4:	00 
c0006ec5:	89 04 24             	mov    %eax,(%esp)
c0006ec8:	e8 e0 c7 ff ff       	call   c00036ad <memset_8>
c0006ecd:	0f b6 05 00 b2 00 c0 	movzbl 0xc000b200,%eax
c0006ed4:	8d 50 01             	lea    0x1(%eax),%edx
c0006ed7:	88 15 00 b2 00 c0    	mov    %dl,0xc000b200
c0006edd:	0f be c0             	movsbl %al,%eax
c0006ee0:	8d 48 30             	lea    0x30(%eax),%ecx
c0006ee3:	8b 55 10             	mov    0x10(%ebp),%edx
c0006ee6:	8b 45 08             	mov    0x8(%ebp),%eax
c0006ee9:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c0006eed:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006ef1:	c7 44 24 04 5f 78 00 	movl   $0xc000785f,0x4(%esp)
c0006ef8:	c0 
c0006ef9:	89 04 24             	mov    %eax,(%esp)
c0006efc:	e8 b5 c9 ff ff       	call   c00038b6 <formative_str>
c0006f01:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006f04:	0f b6 40 02          	movzbl 0x2(%eax),%eax
c0006f08:	0f b6 d0             	movzbl %al,%edx
c0006f0b:	8b 45 08             	mov    0x8(%ebp),%eax
c0006f0e:	89 50 10             	mov    %edx,0x10(%eax)
c0006f11:	8b 45 0c             	mov    0xc(%ebp),%eax
c0006f14:	0f b6 40 06          	movzbl 0x6(%eax),%eax
c0006f18:	0f b6 d0             	movzbl %al,%edx
c0006f1b:	8b 45 08             	mov    0x8(%ebp),%eax
c0006f1e:	89 50 14             	mov    %edx,0x14(%eax)
c0006f21:	8b 45 08             	mov    0x8(%ebp),%eax
c0006f24:	8b 55 10             	mov    0x10(%ebp),%edx
c0006f27:	89 50 1c             	mov    %edx,0x1c(%eax)
c0006f2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0006f2d:	83 c0 20             	add    $0x20,%eax
c0006f30:	89 04 24             	mov    %eax,(%esp)
c0006f33:	e8 a8 c9 ff ff       	call   c00038e0 <init_bit_map>
c0006f38:	c9                   	leave  
c0006f39:	c3                   	ret    

c0006f3a <ide_init>:
c0006f3a:	55                   	push   %ebp
c0006f3b:	89 e5                	mov    %esp,%ebp
c0006f3d:	83 ec 18             	sub    $0x18,%esp
c0006f40:	c7 04 24 64 78 00 c0 	movl   $0xc0007864,(%esp)
c0006f47:	e8 51 00 00 00       	call   c0006f9d <__printk>
c0006f4c:	c7 04 24 04 b2 00 c0 	movl   $0xc000b204,(%esp)
c0006f53:	e8 9f dc ff ff       	call   c0004bf7 <init_list>
c0006f58:	c7 04 24 74 78 00 c0 	movl   $0xc0007874,(%esp)
c0006f5f:	e8 39 00 00 00       	call   c0006f9d <__printk>
c0006f64:	e8 a4 f4 ff ff       	call   c000640d <channel_init>
c0006f69:	a1 2c b2 00 c0       	mov    0xc000b22c,%eax
c0006f6e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006f72:	c7 04 24 88 78 00 c0 	movl   $0xc0007888,(%esp)
c0006f79:	e8 1f 00 00 00       	call   c0006f9d <__printk>
c0006f7e:	c7 04 24 9a 78 00 c0 	movl   $0xc000789a,(%esp)
c0006f85:	e8 13 00 00 00       	call   c0006f9d <__printk>
c0006f8a:	e8 09 fa ff ff       	call   c0006998 <disk_init>
c0006f8f:	c7 04 24 ab 78 00 c0 	movl   $0xc00078ab,(%esp)
c0006f96:	e8 02 00 00 00       	call   c0006f9d <__printk>
c0006f9b:	c9                   	leave  
c0006f9c:	c3                   	ret    

c0006f9d <__printk>:
c0006f9d:	55                   	push   %ebp
c0006f9e:	89 e5                	mov    %esp,%ebp
c0006fa0:	83 ec 28             	sub    $0x28,%esp
c0006fa3:	8d 45 08             	lea    0x8(%ebp),%eax
c0006fa6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0006fa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0006fac:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0006faf:	89 54 24 08          	mov    %edx,0x8(%esp)
c0006fb3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0006fb7:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0006fbe:	e8 91 ef ff ff       	call   c0005f54 <vsprintf>
c0006fc3:	c7 04 24 00 a3 00 c0 	movl   $0xc000a300,(%esp)
c0006fca:	e8 08 e4 ff ff       	call   c00053d7 <console_put_str>
c0006fcf:	c9                   	leave  
c0006fd0:	c3                   	ret    
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

00000360 0000001c 00000364 FDE cie=00000000 pc=c00038b6..c00038e0
  DW_CFA_advance_loc: 1 to c00038b7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038b9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 38 to c00038df
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000380 0000001c 00000384 FDE cie=00000000 pc=c00038e0..c00038e5
  DW_CFA_advance_loc: 1 to c00038e1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038e3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 1 to c00038e4
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000003a0 00000020 000003a4 FDE cie=00000000 pc=c00038e5..c000395f
  DW_CFA_advance_loc: 1 to c00038e6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00038e8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c00038ec
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 113 to c000395d
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c000395e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000003c4 00000024 000003c8 FDE cie=00000000 pc=c000395f..c0003a02
  DW_CFA_advance_loc: 1 to c0003960
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003962
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0003967
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 152 to c00039ff
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0003a00
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c0003a01
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000003ec 00000024 000003f0 FDE cie=00000000 pc=c0003a02..c0003af5
  DW_CFA_advance_loc: 1 to c0003a03
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003a05
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0003a0a
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc1: 232 to c0003af2
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0003af3
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c0003af4
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000414 0000001c 00000418 FDE cie=00000000 pc=c0003af5..c0003b94
  DW_CFA_advance_loc: 1 to c0003af6
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003af8
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 155 to c0003b93
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000434 0000001c 00000438 FDE cie=00000000 pc=c0003b94..c0003c1c
  DW_CFA_advance_loc: 1 to c0003b95
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003b97
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 132 to c0003c1b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000454 0000001c 00000458 FDE cie=00000000 pc=c0003c1c..c0003c6b
  DW_CFA_advance_loc: 1 to c0003c1d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003c1f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 75 to c0003c6a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000474 0000001c 00000478 FDE cie=00000000 pc=c0003c6b..c0003d68
  DW_CFA_advance_loc: 1 to c0003c6c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003c6e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 249 to c0003d67
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000494 0000001c 00000498 FDE cie=00000000 pc=c0003d68..c0003e38
  DW_CFA_advance_loc: 1 to c0003d69
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003d6b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 204 to c0003e37
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004b4 0000001c 000004b8 FDE cie=00000000 pc=c0003e38..c0003f1d
  DW_CFA_advance_loc: 1 to c0003e39
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003e3b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 225 to c0003f1c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004d4 0000001c 000004d8 FDE cie=00000000 pc=c0003f1d..c0003f64
  DW_CFA_advance_loc: 1 to c0003f1e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003f20
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 67 to c0003f63
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000004f4 0000001c 000004f8 FDE cie=00000000 pc=c0003f64..c0004091
  DW_CFA_advance_loc: 1 to c0003f65
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0003f67
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 297 to c0004090
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000514 0000001c 00000518 FDE cie=00000000 pc=c0004091..c00040f9
  DW_CFA_advance_loc: 1 to c0004092
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004094
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 100 to c00040f8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000534 0000001c 00000538 FDE cie=00000000 pc=c00040f9..c0004287
  DW_CFA_advance_loc: 1 to c00040fa
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00040fc
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 394 to c0004286
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000554 0000001c 00000558 FDE cie=00000000 pc=c0004287..c00042f0
  DW_CFA_advance_loc: 1 to c0004288
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000428a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 101 to c00042ef
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000574 0000001c 00000578 FDE cie=00000000 pc=c00042f0..c00043a3
  DW_CFA_advance_loc: 1 to c00042f1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00042f3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 175 to c00043a2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000594 0000001c 00000598 FDE cie=00000000 pc=c00043a3..c0004477
  DW_CFA_advance_loc: 1 to c00043a4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00043a6
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 208 to c0004476
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000005b4 0000001c 000005b8 FDE cie=00000000 pc=c0004477..c000448a
  DW_CFA_advance_loc: 1 to c0004478
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000447a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c0004489
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000005d4 0000001c 000005d8 FDE cie=00000000 pc=c000448a..c000449d
  DW_CFA_advance_loc: 1 to c000448b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000448d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c000449c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000005f4 0000001c 000005f8 FDE cie=00000000 pc=c000449d..c0004571
  DW_CFA_advance_loc: 1 to c000449e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00044a0
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 208 to c0004570
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000614 0000001c 00000618 FDE cie=00000000 pc=c0004571..c0004591
  DW_CFA_advance_loc: 1 to c0004572
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004574
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 28 to c0004590
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000634 0000001c 00000638 FDE cie=00000000 pc=c0004591..c0004604
  DW_CFA_advance_loc: 1 to c0004592
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004594
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 111 to c0004603
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000654 0000001c 00000658 FDE cie=00000000 pc=c0004604..c0004619
  DW_CFA_advance_loc: 1 to c0004605
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004607
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 17 to c0004618
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000674 0000001c 00000678 FDE cie=00000000 pc=c0004619..c00047e6
  DW_CFA_advance_loc: 1 to c000461a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000461c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 457 to c00047e5
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000694 0000001c 00000698 FDE cie=00000000 pc=c00047e6..c00047eb
  DW_CFA_advance_loc: 1 to c00047e7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00047e9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 1 to c00047ea
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006b4 0000001c 000006b8 FDE cie=00000000 pc=c00047eb..c000481e
  DW_CFA_advance_loc: 1 to c00047ec
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00047ee
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 47 to c000481d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006d4 0000001c 000006d8 FDE cie=00000000 pc=c000481e..c0004841
  DW_CFA_advance_loc: 1 to c000481f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004821
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 31 to c0004840
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000006f4 0000001c 000006f8 FDE cie=00000000 pc=c0004841..c0004875
  DW_CFA_advance_loc: 1 to c0004842
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004844
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c0004874
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000714 0000001c 00000718 FDE cie=00000000 pc=c0004875..c0004923
  DW_CFA_advance_loc: 1 to c0004876
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004878
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 170 to c0004922
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000734 0000001c 00000738 FDE cie=00000000 pc=c0004923..c00049b6
  DW_CFA_advance_loc: 1 to c0004924
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004926
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 143 to c00049b5
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000754 0000001c 00000758 FDE cie=00000000 pc=c00049b6..c0004a7c
  DW_CFA_advance_loc: 1 to c00049b7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00049b9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 194 to c0004a7b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000774 0000001c 00000778 FDE cie=00000000 pc=c0004a7c..c0004ae0
  DW_CFA_advance_loc: 1 to c0004a7d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004a7f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 96 to c0004adf
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000794 00000018 00000798 FDE cie=00000000 pc=c0004ae0..c0004b0f
  DW_CFA_advance_loc: 1 to c0004ae1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004ae3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000007b0 0000001c 000007b4 FDE cie=00000000 pc=c0004b0f..c0004bb0
  DW_CFA_advance_loc: 1 to c0004b10
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004b12
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 157 to c0004baf
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000007d0 0000001c 000007d4 FDE cie=00000000 pc=c0004bb0..c0004bf7
  DW_CFA_advance_loc: 1 to c0004bb1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004bb3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 67 to c0004bf6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000007f0 0000001c 000007f4 FDE cie=00000000 pc=c0004bf7..c0004c0f
  DW_CFA_advance_loc: 1 to c0004bf8
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004bfa
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 20 to c0004c0e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000810 0000001c 00000814 FDE cie=00000000 pc=c0004c0f..c0004d28
  DW_CFA_advance_loc: 1 to c0004c10
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004c12
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 277 to c0004d27
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000830 0000001c 00000834 FDE cie=00000000 pc=c0004d28..c0004dc6
  DW_CFA_advance_loc: 1 to c0004d29
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004d2b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 154 to c0004dc5
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000850 0000001c 00000854 FDE cie=00000000 pc=c0004dc6..c0004e2b
  DW_CFA_advance_loc: 1 to c0004dc7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004dc9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 97 to c0004e2a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000870 0000001c 00000874 FDE cie=00000000 pc=c0004e2b..c0004f01
  DW_CFA_advance_loc: 1 to c0004e2c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004e2e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 210 to c0004f00
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000890 0000001c 00000894 FDE cie=00000000 pc=c0004f01..c0004ff8
  DW_CFA_advance_loc: 1 to c0004f02
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004f04
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 243 to c0004ff7
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000008b0 0000001c 000008b4 FDE cie=00000000 pc=c0004ff8..c000500b
  DW_CFA_advance_loc: 1 to c0004ff9
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0004ffb
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 15 to c000500a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008d0 0000001c 000008d4 FDE cie=00000000 pc=c000500b..c000504b
  DW_CFA_advance_loc: 1 to c000500c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000500e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 60 to c000504a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

000008f0 0000001c 000008f4 FDE cie=00000000 pc=c0005065..c00050a2
  DW_CFA_advance_loc: 1 to c0005066
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005068
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 57 to c00050a1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000910 0000001c 00000914 FDE cie=00000000 pc=c00050a2..c00050c4
  DW_CFA_advance_loc: 1 to c00050a3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00050a5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 30 to c00050c3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000930 0000001c 00000934 FDE cie=00000000 pc=c00050c4..c00050d1
  DW_CFA_advance_loc: 1 to c00050c5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00050c7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 9 to c00050d0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000950 0000001c 00000954 FDE cie=00000000 pc=c00050d1..c00051ba
  DW_CFA_advance_loc: 1 to c00050d2
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00050d4
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 229 to c00051b9
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000970 0000001c 00000974 FDE cie=00000000 pc=c00051ba..c0005213
  DW_CFA_advance_loc: 1 to c00051bb
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00051bd
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 85 to c0005212
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000990 0000001c 00000994 FDE cie=00000000 pc=c0005213..c0005269
  DW_CFA_advance_loc: 1 to c0005214
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005216
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 82 to c0005268
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000009b0 0000001c 000009b4 FDE cie=00000000 pc=c0005269..c00052b4
  DW_CFA_advance_loc: 1 to c000526a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000526c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 71 to c00052b3
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000009d0 0000001c 000009d4 FDE cie=00000000 pc=c00052b4..c0005340
  DW_CFA_advance_loc: 1 to c00052b5
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00052b7
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 136 to c000533f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000009f0 0000001c 000009f4 FDE cie=00000000 pc=c0005340..c00053c3
  DW_CFA_advance_loc: 1 to c0005341
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005343
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 127 to c00053c2
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000a10 0000001c 00000a14 FDE cie=00000000 pc=c00053c3..c00053d7
  DW_CFA_advance_loc: 1 to c00053c4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00053c6
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 16 to c00053d6
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a30 0000001c 00000a34 FDE cie=00000000 pc=c00053d7..c0005402
  DW_CFA_advance_loc: 1 to c00053d8
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00053da
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 39 to c0005401
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a50 0000001c 00000a54 FDE cie=00000000 pc=c0005402..c0005434
  DW_CFA_advance_loc: 1 to c0005403
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005405
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 46 to c0005433
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a70 0000001c 00000a74 FDE cie=00000000 pc=c0005434..c000545f
  DW_CFA_advance_loc: 1 to c0005435
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005437
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 39 to c000545e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000a90 0000001c 00000a94 FDE cie=00000000 pc=c000545f..c000547e
  DW_CFA_advance_loc: 1 to c0005460
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005462
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 27 to c000547d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000ab0 0000001c 00000ab4 FDE cie=00000000 pc=c000547e..c000554b
  DW_CFA_advance_loc: 1 to c000547f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005481
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 201 to c000554a
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000ad0 0000001c 00000ad4 FDE cie=00000000 pc=c000554b..c0005789
  DW_CFA_advance_loc: 1 to c000554c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000554e
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 570 to c0005788
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000af0 0000001c 00000af4 FDE cie=00000000 pc=c0005789..c00057db
  DW_CFA_advance_loc: 1 to c000578a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000578c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 78 to c00057da
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b10 00000018 00000b14 FDE cie=00000000 pc=c00057db..c000582a
  DW_CFA_advance_loc: 1 to c00057dc
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00057de
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000b2c 0000001c 00000b30 FDE cie=00000000 pc=c000582a..c0005851
  DW_CFA_advance_loc: 1 to c000582b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000582d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 35 to c0005850
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000b4c 0000001c 00000b50 FDE cie=00000000 pc=c0005851..c00058b2
  DW_CFA_advance_loc: 1 to c0005852
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005854
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 93 to c00058b1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b6c 0000001c 00000b70 FDE cie=00000000 pc=c00058b2..c00058fe
  DW_CFA_advance_loc: 1 to c00058b3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00058b5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 72 to c00058fd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000b8c 0000001c 00000b90 FDE cie=00000000 pc=c00058fe..c000593a
  DW_CFA_advance_loc: 1 to c00058ff
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005901
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 54 to c0005937
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000bac 0000001c 00000bb0 FDE cie=00000000 pc=c000593a..c0005999
  DW_CFA_advance_loc: 1 to c000593b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000593d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 91 to c0005998
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000bcc 0000001c 00000bd0 FDE cie=00000000 pc=c0005999..c00059f6
  DW_CFA_advance_loc: 1 to c000599a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000599c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 89 to c00059f5
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000bec 0000001c 00000bf0 FDE cie=00000000 pc=c00059f6..c0005a41
  DW_CFA_advance_loc: 1 to c00059f7
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00059f9
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 71 to c0005a40
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000c0c 0000001c 00000c10 FDE cie=00000000 pc=c0005a41..c0005a62
  DW_CFA_advance_loc: 1 to c0005a42
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005a44
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 29 to c0005a61
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000c2c 0000001c 00000c30 FDE cie=00000000 pc=c0005a62..c0005a74
  DW_CFA_advance_loc: 1 to c0005a63
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005a65
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 14 to c0005a73
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000c4c 00000020 00000c50 FDE cie=00000000 pc=c0005a74..c0005b81
  DW_CFA_advance_loc: 1 to c0005a75
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005a77
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005a7b
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc2: 261 to c0005b80
  DW_CFA_restore: r5 (ebp)
  DW_CFA_restore: r3 (ebx)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000c70 0000001c 00000c74 FDE cie=00000000 pc=c0005b81..c0005be0
  DW_CFA_advance_loc: 1 to c0005b82
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005b84
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 89 to c0005bdd
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000c90 00000020 00000c94 FDE cie=00000000 pc=c0005be0..c0005c29
  DW_CFA_advance_loc: 1 to c0005be1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005be3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0005be7
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 64 to c0005c27
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0005c28
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000cb4 0000001c 00000cb8 FDE cie=00000000 pc=c0005c29..c0005c78
  DW_CFA_advance_loc: 1 to c0005c2a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005c2c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 75 to c0005c77
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000cd4 0000001c 00000cd8 FDE cie=00000000 pc=c0005c78..c0005daf
  DW_CFA_advance_loc: 1 to c0005c79
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005c7b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 307 to c0005dae
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000cf4 00000018 00000cf8 FDE cie=00000000 pc=c0005daf..c0005e37
  DW_CFA_advance_loc: 1 to c0005db0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005db2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000d10 0000001c 00000d14 FDE cie=00000000 pc=c0005e37..c0005ec2
  DW_CFA_advance_loc: 1 to c0005e38
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005e3a
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 135 to c0005ec1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000d30 0000001c 00000d34 FDE cie=00000000 pc=c0005ec2..c0005eef
  DW_CFA_advance_loc: 1 to c0005ec3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005ec5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 41 to c0005eee
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d50 0000001c 00000d54 FDE cie=00000000 pc=c0005eef..c0005eff
  DW_CFA_advance_loc: 1 to c0005ef0
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005ef2
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 12 to c0005efe
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d70 0000001c 00000d74 FDE cie=00000000 pc=c0005eff..c0005f1d
  DW_CFA_advance_loc: 1 to c0005f00
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005f02
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 26 to c0005f1c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000d90 0000001c 00000d94 FDE cie=00000000 pc=c0005f1d..c0005f54
  DW_CFA_advance_loc: 1 to c0005f1e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005f20
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 51 to c0005f53
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000db0 0000001c 00000db4 FDE cie=00000000 pc=c0005f54..c000607e
  DW_CFA_advance_loc: 1 to c0005f55
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0005f57
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 294 to c000607d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000dd0 00000020 00000dd4 FDE cie=00000000 pc=c000607e..c0006171
  DW_CFA_advance_loc: 1 to c000607f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006081
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0006085
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 234 to c000616f
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c0006170
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000df4 0000001c 00000df8 FDE cie=00000000 pc=c0006171..c000622c
  DW_CFA_advance_loc: 1 to c0006172
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006174
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 183 to c000622b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000e14 00000020 00000e18 FDE cie=00000000 pc=c000622c..c000632c
  DW_CFA_advance_loc: 1 to c000622d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000622f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 4 to c0006233
  DW_CFA_offset: r3 (ebx) at cfa-12
  DW_CFA_advance_loc1: 247 to c000632a
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c000632b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000e38 0000001c 00000e3c FDE cie=00000000 pc=c000632c..c0006341
  DW_CFA_advance_loc: 1 to c000632d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000632f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 17 to c0006340
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e58 0000001c 00000e5c FDE cie=00000000 pc=c0006341..c0006359
  DW_CFA_advance_loc: 1 to c0006342
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006344
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 20 to c0006358
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e78 0000001c 00000e7c FDE cie=00000000 pc=c0006359..c000636f
  DW_CFA_advance_loc: 1 to c000635a
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000635c
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 18 to c000636e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000e98 0000001c 00000e9c FDE cie=00000000 pc=c000636f..c000638e
  DW_CFA_advance_loc: 1 to c0006370
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006372
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 27 to c000638d
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000eb8 00000024 00000ebc FDE cie=00000000 pc=c000638e..c00063c2
  DW_CFA_advance_loc: 1 to c000638f
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006391
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c0006396
  DW_CFA_offset: r7 (edi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc: 41 to c00063bf
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c00063c0
  DW_CFA_restore: r7 (edi)
  DW_CFA_advance_loc: 1 to c00063c1
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000ee0 0000001c 00000ee4 FDE cie=00000000 pc=c00063c2..c00063d9
  DW_CFA_advance_loc: 1 to c00063c3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00063c5
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 19 to c00063d8
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000f00 00000024 00000f04 FDE cie=00000000 pc=c00063d9..c000640d
  DW_CFA_advance_loc: 1 to c00063da
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00063dc
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 5 to c00063e1
  DW_CFA_offset: r6 (esi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc: 41 to c000640a
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to c000640b
  DW_CFA_restore: r6 (esi)
  DW_CFA_advance_loc: 1 to c000640c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f28 0000001c 00000f2c FDE cie=00000000 pc=c000640d..c0006540
  DW_CFA_advance_loc: 1 to c000640e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006410
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 303 to c000653f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000f48 0000001c 00000f4c FDE cie=00000000 pc=c0006540..c0006591
  DW_CFA_advance_loc: 1 to c0006541
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006543
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 77 to c0006590
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f68 0000001c 00000f6c FDE cie=00000000 pc=c0006591..c0006684
  DW_CFA_advance_loc: 1 to c0006592
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006594
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 239 to c0006683
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000f88 0000001c 00000f8c FDE cie=00000000 pc=c0006684..c00066b8
  DW_CFA_advance_loc: 1 to c0006685
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006687
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c00066b7
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00000fa8 0000001c 00000fac FDE cie=00000000 pc=c00066b8..c0006716
  DW_CFA_advance_loc: 1 to c00066b9
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00066bb
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 90 to c0006715
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000fc8 0000001c 00000fcc FDE cie=00000000 pc=c0006716..c000680c
  DW_CFA_advance_loc: 1 to c0006717
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006719
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 242 to c000680b
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000fe8 0000001c 00000fec FDE cie=00000000 pc=c000680c..c00068eb
  DW_CFA_advance_loc: 1 to c000680d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000680f
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 219 to c00068ea
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001008 0000001c 0000100c FDE cie=00000000 pc=c00068eb..c000693f
  DW_CFA_advance_loc: 1 to c00068ec
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c00068ee
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 80 to c000693e
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001028 0000001c 0000102c FDE cie=00000000 pc=c000693f..c0006998
  DW_CFA_advance_loc: 1 to c0006940
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006942
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 85 to c0006997
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001048 0000001c 0000104c FDE cie=00000000 pc=c0006998..c0006ab8
  DW_CFA_advance_loc: 1 to c0006999
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c000699b
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 284 to c0006ab7
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00001068 0000001c 0000106c FDE cie=00000000 pc=c0006ab8..c0006af0
  DW_CFA_advance_loc: 1 to c0006ab9
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006abb
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 52 to c0006aef
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

00001088 0000001c 0000108c FDE cie=00000000 pc=c0006af0..c0006c94
  DW_CFA_advance_loc: 1 to c0006af1
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006af3
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 416 to c0006c93
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000010a8 0000001c 000010ac FDE cie=00000000 pc=c0006c94..c0006e94
  DW_CFA_advance_loc: 1 to c0006c95
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006c97
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 508 to c0006e93
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

000010c8 0000001c 000010cc FDE cie=00000000 pc=c0006e94..c0006f3a
  DW_CFA_advance_loc: 1 to c0006e95
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006e97
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 162 to c0006f39
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

000010e8 0000001c 000010ec FDE cie=00000000 pc=c0006f3a..c0006f9d
  DW_CFA_advance_loc: 1 to c0006f3b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006f3d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc1: 95 to c0006f9c
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00001108 0000001c 0000110c FDE cie=00000000 pc=c0006f9d..c0006fd1
  DW_CFA_advance_loc: 1 to c0006f9e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to c0006fa0
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 48 to c0006fd0
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop
  DW_CFA_nop

