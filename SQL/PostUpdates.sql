UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Cadbury UK Limited #',
[OwnerAddressWebTMSChecked]='P.O. Box 12, Bournville Lane, Bournville United Kingdom'
from Recordals
where [Final Owner]='Cadbury UK Limited'
and [Final Owner Address]='PO Box 12, Bournville Lane, 
, Bournville, Birmingham, B30 2LU
, United Kingdom '

UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Kraft Foods Belgium Intellectual Property (BVBA) ~ [HALLE]',
[OwnerAddressWebTMSChecked]='Brusselsesteenweg 450 Belgium'
from Recordals
where [Final Owner]='Kraft Foods Belgium Intellectual Property BVBA (Sprl)'
and [Final Owner Address]='Chaussee de Bruxelles 450
, 1500 Halle
, Belgium'


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Kraft Foods Belgium Intellectual Property (BVBA) ~ [HALLE]',
[OwnerAddressWebTMSChecked]='Brusselsesteenweg 450 Belgium'
from Recordals
where [Final Owner]='Kraft Foods Belgium Intellectual Property BVBA (Sprl)'
and [Final Owner Address]='Brusselsesteenweg 450, 1500 Halle, Belgium'

UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Kraft Foods Danmark Intellectual Property ApS ~ [ALBERTSLUND]',
[OwnerAddressWebTMSChecked]='Roskildevej 161 Denmark'
from Recordals
where [Final Owner]='Kraft Foods Danmark Intellectual Property ApS'
and [Final Owner Address]='Roskildevej 161, 2620 Albertslund, Denmark '


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Kraft Foods France SAS ~',
[OwnerAddressWebTMSChecked]='13, Av. Morane Saulnier France'
from Recordals
where [Final Owner]='Kraft Foods France S.A.S.'
and [Final Owner Address]='13 Avenue Morane Saulnier, 78140 Velizy Villacoublay, France'


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Kraft Foods Global Brands LLC ~',
[OwnerAddressWebTMSChecked]='Three Lakes Drive Northfield United States of America'
from Recordals
where [Final Owner]='Kraft Foods Global Brands LLC'
--and [Final Owner Address]=''

UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Mondelez Taiwan Limited #',
[OwnerAddressWebTMSChecked]='6F., No. 105, Zhouzi St.; Neihu Dist., Taiwan'
from Recordals
where [Final Owner]='Mondelez Taiwan Limited'
--and [Final Owner Address]=''

UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Mondelez Slovakia Intellectual Property s.r.o. #',
[OwnerAddressWebTMSChecked]='Racianska 44 Bratislava-Nove Mesto Slovakia'
from Recordals
where [Final Owner]='Mondelez Slovakia Intellectual Property s.r.o.'
--and [Final Owner Address]=''


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Mondelez Slovakia a.s. #',
[OwnerAddressWebTMSChecked]='Racianska Street No. 44 Slovakia'
from Recordals
where [Final Owner]='Mondelez Slovakia, a.s.'
--and [Final Owner Address]=''


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Mondelez Deutschland GmbH #',
[OwnerAddressWebTMSChecked]='Langemarckstr 4-20 Germany'
from Recordals
where [Final Owner]='Mondelez Deutschland GmbH'
and [Final Owner Address]='Langemarckstr. 4-20
, 28199 Bremen 
, Germany'

UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Mondelez Australia (Foods) Ltd. ~ [SOUTH WHARF]',
[OwnerAddressWebTMSChecked]='Level 6, South Wharf Tower 30 Convention Centre Place Australia'
from Recordals
where [Final Owner]='Mondelez Australia (Foods) Ltd'
and [Final Owner Address]='tbc'

UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Kraft Foods RUS ~',
[OwnerAddressWebTMSChecked]='Russian Federation'
from Recordals
where [Final Owner]='Kraft Foods Russia '
--and [Final Owner Address]='tbc'


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Kraft Foods Norge AS ~',
[OwnerAddressWebTMSChecked]='Johan Throne-Holstsplass 1 Norway'
from Recordals
where [Final Owner]='Kraft Foods Norge AS'
and [Final Owner Address]='Johan Throne-Holstsplass 1, 0566 Oslo, (P.O. Box 6658 Rodelokka, 0502 Oslo), Norway'


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Mondelez Mexico, S. de R.L. de C.V. #',
[OwnerAddressWebTMSChecked]='H. Congreso de la Union 5840 Colonia Tres Estrellas Mexico'
from Recordals
where [Final Owner]='Mondelez de Mexico'
and [Final Owner Address]='H. CONGRESO DE LA UNION No. 5840, 07820, Mexico City, Mexico'


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Mondelez Australia (Foods) Ltd. # [SOUTH MELBOURNE]',
[OwnerAddressWebTMSChecked]='Level 10, 75 Dorcas Street South Melbourne Australia'
from Recordals
where [Final Owner]='Mondelez Australia (Foods) Ltd'
and [Final Owner Address]='Level 10, 75 Dorcas Street,  South Melbourne,  VIC 3205, Australia'


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Kraft Foods Italia S.r.L. ~',
[OwnerAddressWebTMSChecked]='Via Marcello Nizzoli, 3 Italy'
from Recordals
where [Final Owner]='Kraft Foods Italia Intellectual Property S.r.l.'
--and [Final Owner Address]='Level 10, 75 Dorcas Street,  South Melbourne,  VIC 3205, Australia'


UPDATE Recordals
SET [OwnerNameWebTMSChecked]='Mondelez Kinh Do Vietnam Joint Stock Company #',
[OwnerAddressWebTMSChecked]='26 VSIP, Street 8, Vietnam – Singapore Industrial Park, Binh Hoa Ward, Vietnam'
from Recordals
where [Final Owner]='Mondelez Kinh Do Vietnam Joint Stock Company'
--and [Final Owner Address]='Level 10, 75 Dorcas Street,  South Melbourne,  VIC 3205, Australia'

UPDATE Recordals
set cc='GB'
where cc='UK'

UPDATE Recordals
set cc='OA'
where cc='22'


UPDATE [dbo].[Recordals]
set Designs=1
where [TM Type]='design'


update Recordals
set [OwnerNameWebTMSChecked]='Kraft Foods France Intellectual Property SAS ~ [VELIZY-VILLACOUBLAY]',
    [OwnerAddressWebTMSChecked]='13, Av. Morane Saulnier France'
where [Final Owner]='Kraft Foods Intellectual Property S.A.S'


update Recordals
set WorkStatusID=3
where [Final Owner]='Kraft Foods Group Brands LLC'


update Recordals
set WorkStatusID=6
where [Final Owner]='Kraft Foods Holdings Singapore Pte Ltd.'


update Recordals
set WorkStatusID=6
where [Final Owner]='Final owner'

update Recordals
set WorkStatusID=6
where [Final Owner]=''