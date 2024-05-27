cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  calcium-blockers-berkatens---primary:
    run: calcium-blockers-berkatens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  calcium-blockers-adizemxl---primary:
    run: calcium-blockers-adizemxl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: calcium-blockers-berkatens---primary/output
  calcium-blockers-125mg---primary:
    run: calcium-blockers-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: calcium-blockers-adizemxl---primary/output
  calcium-blockers-adipine---primary:
    run: calcium-blockers-adipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: calcium-blockers-125mg---primary/output
  calcium-blockers-360mg---primary:
    run: calcium-blockers-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: calcium-blockers-adipine---primary/output
  calcium-blockers-150mg---primary:
    run: calcium-blockers-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: calcium-blockers-360mg---primary/output
  calcium-blockers-100mg---primary:
    run: calcium-blockers-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: calcium-blockers-150mg---primary/output
  calcium-blockers-coracten---primary:
    run: calcium-blockers-coracten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: calcium-blockers-100mg---primary/output
  calcium-blockers-dilzem---primary:
    run: calcium-blockers-dilzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: calcium-blockers-coracten---primary/output
  calcium-blockers-ampoule---primary:
    run: calcium-blockers-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: calcium-blockers-dilzem---primary/output
  calcium-blockers-120mg---primary:
    run: calcium-blockers-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: calcium-blockers-ampoule---primary/output
  calcium-blockers-dilcardia---primary:
    run: calcium-blockers-dilcardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: calcium-blockers-120mg---primary/output
  calcium-blockers-cabren---primary:
    run: calcium-blockers-cabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: calcium-blockers-dilcardia---primary/output
  calcium-blockers-betaadalat---primary:
    run: calcium-blockers-betaadalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: calcium-blockers-cabren---primary/output
  calcium-blockers-slozem---primary:
    run: calcium-blockers-slozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: calcium-blockers-betaadalat---primary/output
  calcium-blockers-nicardipine---primary:
    run: calcium-blockers-nicardipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: calcium-blockers-slozem---primary/output
  calcium-blockers-ointment---primary:
    run: calcium-blockers-ointment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: calcium-blockers-nicardipine---primary/output
  calcium-blockers-exforge---primary:
    run: calcium-blockers-exforge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: calcium-blockers-ointment---primary/output
  calcium-blockers-modifiedrelease---primary:
    run: calcium-blockers-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: calcium-blockers-exforge---primary/output
  calcium-blockers-diltiazem---primary:
    run: calcium-blockers-diltiazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: calcium-blockers-modifiedrelease---primary/output
  calcium-blockers-istin---primary:
    run: calcium-blockers-istin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: calcium-blockers-diltiazem---primary/output
  calcium-blockers-optil---primary:
    run: calcium-blockers-optil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: calcium-blockers-istin---primary/output
  calcium-blockers-motens---primary:
    run: calcium-blockers-motens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: calcium-blockers-optil---primary/output
  calcium-blockers-viazem---primary:
    run: calcium-blockers-viazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: calcium-blockers-motens---primary/output
  calcium-blockers-240mg---primary:
    run: calcium-blockers-240mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: calcium-blockers-viazem---primary/output
  calcium-blockers-disogram---primary:
    run: calcium-blockers-disogram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: calcium-blockers-240mg---primary/output
  calcium-blockers-veratil---primary:
    run: calcium-blockers-veratil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: calcium-blockers-disogram---primary/output
  calcium-blockers-cardioplen---primary:
    run: calcium-blockers-cardioplen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: calcium-blockers-veratil---primary/output
  calcium-blockers-cardene---primary:
    run: calcium-blockers-cardene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: calcium-blockers-cardioplen---primary/output
  calcium-blockers-plendil---primary:
    run: calcium-blockers-plendil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: calcium-blockers-cardene---primary/output
  calcium-blockers-cordilox---primary:
    run: calcium-blockers-cordilox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: calcium-blockers-plendil---primary/output
  calcium-blockers-amlostin---primary:
    run: calcium-blockers-amlostin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: calcium-blockers-cordilox---primary/output
  calcium-blockers-angitil---primary:
    run: calcium-blockers-angitil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: calcium-blockers-amlostin---primary/output
  calcium-blockers-200mg---primary:
    run: calcium-blockers-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: calcium-blockers-angitil---primary/output
  calcium-blockers-300mg---primary:
    run: calcium-blockers-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: calcium-blockers-200mg---primary/output
  calcium-blockers-lacidipine---primary:
    run: calcium-blockers-lacidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: calcium-blockers-300mg---primary/output
  calcium-blockers-tildiem---primary:
    run: calcium-blockers-tildiem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: calcium-blockers-lacidipine---primary/output
  calcium-blockers-cardilate---primary:
    run: calcium-blockers-cardilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: calcium-blockers-tildiem---primary/output
  calcium-blockers-besilate---primary:
    run: calcium-blockers-besilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: calcium-blockers-cardilate---primary/output
  calcium-blockers-bicarzem---primary:
    run: calcium-blockers-bicarzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: calcium-blockers-besilate---primary/output
  calcium-blockers-erbumine---primary:
    run: calcium-blockers-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: calcium-blockers-bicarzem---primary/output
  calcium-blockers-valsartan---primary:
    run: calcium-blockers-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: calcium-blockers-erbumine---primary/output
  calcium-blockers-calanif---primary:
    run: calcium-blockers-calanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: calcium-blockers-valsartan---primary/output
  calcium-blockers-verapamil---primary:
    run: calcium-blockers-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: calcium-blockers-calanif---primary/output
  calcium-blockers-adizemsr---primary:
    run: calcium-blockers-adizemsr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: calcium-blockers-verapamil---primary/output
  calcium-blockers-160mg---primary:
    run: calcium-blockers-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: calcium-blockers-adizemsr---primary/output
  calcium-blockers-180mg---primary:
    run: calcium-blockers-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: calcium-blockers-160mg---primary/output
  hypolar-calcium-blockers---primary:
    run: hypolar-calcium-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: calcium-blockers-180mg---primary/output
  calcium-blockers-felendil---primary:
    run: calcium-blockers-felendil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: hypolar-calcium-blockers---primary/output
  calcium-blockers-securon---primary:
    run: calcium-blockers-securon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: calcium-blockers-felendil---primary/output
  anoheal-calcium-blockers---primary:
    run: anoheal-calcium-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: calcium-blockers-securon---primary/output
  calcium-blockers-valni---primary:
    run: calcium-blockers-valni---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: anoheal-calcium-blockers---primary/output
  calcium-blockers-univer---primary:
    run: calcium-blockers-univer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: calcium-blockers-valni---primary/output
  calcium-blockers-capsule---primary:
    run: calcium-blockers-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: calcium-blockers-univer---primary/output
  calcium-blockers-trandolapril---primary:
    run: calcium-blockers-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: calcium-blockers-capsule---primary/output
  calcium-blockers-zemret---primary:
    run: calcium-blockers-zemret---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: calcium-blockers-trandolapril---primary/output
  calcium-blockers-hydrochlorothiazide---primary:
    run: calcium-blockers-hydrochlorothiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: calcium-blockers-zemret---primary/output
  calcium-blockers-kenzem---primary:
    run: calcium-blockers-kenzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: calcium-blockers-hydrochlorothiazide---primary/output
  calcium-blockers-adanif---primary:
    run: calcium-blockers-adanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: calcium-blockers-kenzem---primary/output
  calcium-blockers-syscor---primary:
    run: calcium-blockers-syscor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: calcium-blockers-adanif---primary/output
  calcium-blockers-solution---primary:
    run: calcium-blockers-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: calcium-blockers-syscor---primary/output
  calcium-blockers-tensipine---primary:
    run: calcium-blockers-tensipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: calcium-blockers-solution---primary/output
  calcium-blockers-zanidip---primary:
    run: calcium-blockers-zanidip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: calcium-blockers-tensipine---primary/output
  calcium-blockers-vascalpha---primary:
    run: calcium-blockers-vascalpha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: calcium-blockers-zanidip---primary/output
  calcium-blockers-sugar---primary:
    run: calcium-blockers-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: calcium-blockers-vascalpha---primary/output
  calcium-blockers-slofedipine---primary:
    run: calcium-blockers-slofedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: calcium-blockers-sugar---primary/output
  calcium-blockers-nivaten---primary:
    run: calcium-blockers-nivaten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: calcium-blockers-slofedipine---primary/output
  calcium-blockers-angiopine---primary:
    run: calcium-blockers-angiopine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: calcium-blockers-nivaten---primary/output
  calcium-blockers-triapin---primary:
    run: calcium-blockers-triapin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: calcium-blockers-angiopine---primary/output
  calcium-blockers-verapress---primary:
    run: calcium-blockers-verapress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: calcium-blockers-triapin---primary/output
  calcium-blockers-calchan---primary:
    run: calcium-blockers-calchan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: calcium-blockers-verapress---primary/output
  calcium-blockers-cream---primary:
    run: calcium-blockers-cream---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: calcium-blockers-calchan---primary/output
  calcium-blockers-neofel---primary:
    run: calcium-blockers-neofel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: calcium-blockers-cream---primary/output
  calcium-blockers-zemtard---primary:
    run: calcium-blockers-zemtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: calcium-blockers-neofel---primary/output
  calcium-blockers-parmid---primary:
    run: calcium-blockers-parmid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: calcium-blockers-zemtard---primary/output
  calcium-blockers-felogen---primary:
    run: calcium-blockers-felogen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: calcium-blockers-parmid---primary/output
  calcium-blockers-angiozem---primary:
    run: calcium-blockers-angiozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: calcium-blockers-felogen---primary/output
  calcium-blockers-mibefradil---primary:
    run: calcium-blockers-mibefradil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: calcium-blockers-angiozem---primary/output
  calcium-blockers-felotens---primary:
    run: calcium-blockers-felotens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: calcium-blockers-mibefradil---primary/output
  calcium-blockers-ramipril---primary:
    run: calcium-blockers-ramipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: calcium-blockers-felotens---primary/output
  calcium-blockers-nisoldipine---primary:
    run: calcium-blockers-nisoldipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: calcium-blockers-ramipril---primary/output
  calcium-blockers-zildil---primary:
    run: calcium-blockers-zildil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: calcium-blockers-nisoldipine---primary/output
  calcium-blockers-nifedipress---primary:
    run: calcium-blockers-nifedipress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: calcium-blockers-zildil---primary/output
  calcium-blockers-injection---primary:
    run: calcium-blockers-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: calcium-blockers-nifedipress---primary/output
  calcium-blockers-suspension---primary:
    run: calcium-blockers-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: calcium-blockers-injection---primary/output
  calcium-blockers-maleate---primary:
    run: calcium-blockers-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: calcium-blockers-suspension---primary/output
  calcium-blockers-medoxomil---primary:
    run: calcium-blockers-medoxomil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: calcium-blockers-maleate---primary/output
  calcium-blockers-calcicard---primary:
    run: calcium-blockers-calcicard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: calcium-blockers-medoxomil---primary/output
  calcium-blockers-nifopress---primary:
    run: calcium-blockers-nifopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: calcium-blockers-calcicard---primary/output
  calcium-blockers-neozipine---primary:
    run: calcium-blockers-neozipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: calcium-blockers-nifopress---primary/output
  calcium-blockers-posicor---primary:
    run: calcium-blockers-posicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: calcium-blockers-neozipine---primary/output
  calcium-blockers-nimodrel---primary:
    run: calcium-blockers-nimodrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: calcium-blockers-posicor---primary/output
  calcium-blockers-tablet---primary:
    run: calcium-blockers-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: calcium-blockers-nimodrel---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: calcium-blockers-tablet---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
