Config = {}
Config.AutoRespawn = true          -- true == stores cars in garage on restart | false == doesnt modify car states
Config.VisuallyDamageCars = true   -- true == damage car on spawn | false == no damage on spawn
Config.SharedGarages = false       -- true == take any car from any garage | false == only take car from garage stored in
Config.ClassSystem = false         -- true == restrict vehicles by class | false == any vehicle class in any garage
Config.FuelResource = 'LegacyFuel' -- supports any that has a GetFuel() and SetFuel() export
Config.Warp = true                 -- true == warp player into vehicle | false == vehicle spawns without warping

Config.Locale = GetConvar('qb_locale', 'en')

-- https://docs.fivem.net/natives/?_0x29439776AAA00A62
Config.VehicleClass = {
    all = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
    car = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 18, 22 },
    air = { 15, 16 },
    sea = { 14 },
    rig = { 10, 11, 17, 19, 20 }
}

-- @todo Adicionar parking auto
Config.ParkObj = 'prop_parknmeter_01'
Config.Parkings = {}


local public = 0
Config.Garages = {
    -- Garagem criada em frente a prefeitura
    --  Usado para entregar Veiculos VIP e Start
    cityhall = {
        label = 'Estacionamento Prefeitura',
        takeVehicle = vector3(-515.95, -294.67, 35.22),
        spawnPoint = {
            vector4(-507.18, -290.69, 35.40, 11.38)
        },
        showBlip = true,
        blipName = 'Estacionamento Prefeitura',
        blipNumber = 357,
        blipColor = public,
        type = 'public', -- public, gang, job, depot
        category = Config.VehicleClass['car']
    },
    motelgarage = {
        label = 'Estacionamento Motel',
        takeVehicle = vector3(272.02, -344.57, 44.91),
        spawnPoint = {
            vector4(265.96, -332.3, 44.51, 250.68)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public', -- public, gang, job, depot
        category = Config.VehicleClass['car']
    },
    casinogarage = {
        label = 'Estacionamento Cassino',
        takeVehicle = vector3(882.37, -85.18, 78.76),
        spawnPoint = {
            vector4(895.39, -4.75, 78.35, 146.85)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    sapcounsel = {
        label = 'San Andreas',
        takeVehicle = vector3(-330.01, -780.33, 33.96),
        spawnPoint = {
            vector4(-341.57, -767.45, 33.56, 92.61)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    spanishave = {
        label = 'Av. Espanhola',
        takeVehicle = vector3(-1160.86, -741.41, 19.63),
        spawnPoint = {
            vector4(-1145.2, -745.42, 19.26, 108.22)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    caears24 = {
        label = 'Caears 24 Parking',
        takeVehicle = vector3(69.84, 12.6, 68.96),
        spawnPoint = {
            vector4(60.8, 17.54, 68.82, 339.7)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    caears242 = {
        label = 'Caears 24 Parking',
        takeVehicle = vector3(-453.7, -786.78, 30.56),
        spawnPoint = {
            vector4(-472.39, -787.71, 30.14, 180.52)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    lagunapi = {
        label = 'Laguna',
        takeVehicle = vector3(364.37, 297.83, 103.49),
        spawnPoint = {
            vector4(375.09, 294.66, 102.86, 164.04)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    airportp = {
        label = 'Estacionamento Aeroporto',
        takeVehicle = vector3(-794.11, -2024.09, 8.98),
        spawnPoint = {
            vector4(-779.77, -2040.18, 8.47, 315.34)
        },
        showBlip = true,
        blipName = 'Estacionamento Aeroporto',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    airportLeft = {
        label = 'Estacionamento Aeroporto',
        takeVehicle = vector3(-1028.12, -2674.04, 13.83),
        spawnPoint = {
            vector4(-1040.63, -2674.85, 13.83, 327.97)
        },
        showBlip = true,
        blipName = 'Estacionamento Aeroporto',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    airportRight = {
        label = 'Estacionamento Aeroporto',
        takeVehicle = vector3(-989.55, -2696.00, 13.83),
        spawnPoint = {
            vector4(-985.75, -2707.30, 13.83, 331.294)
        },
        showBlip = true,
        blipName = 'Estacionamento Aeroporto',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    beachp = {
        label = 'Estacionamento Praia',
        takeVehicle = vector3(-1182.50, -1507.46, 4.37),
        spawnPoint = {
            vector4(-1188.14, -1487.95, 3.97, 124.06)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    beach1 = {
        label = 'Estacionamento Praia',
        takeVehicle = vector3(-1263.59, -1405.87, 4.25),
        spawnPoint = {
            vector4(-1250.0094, -1411.5872, 4.3154, 123.8557)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    
    themotorhotel = {
        label = 'The Motor Hotel',
        takeVehicle = vector3(1137.77, 2663.54, 37.9),
        spawnPoint = {
            vector4(1127.7, 2647.84, 37.58, 1.41)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    liqourparking = {
        label = 'Liqour Parking',
        takeVehicle = vector3(883.99, 3649.67, 32.87),
        spawnPoint = {
            vector4(898.38, 3649.41, 32.36, 90.75)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    shoreparking = {
        label = 'Shore Parking',
        takeVehicle = vector3(1737.03, 3718.88, 34.05),
        spawnPoint = {
            vector4(1725.4, 3716.78, 34.15, 20.54)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    haanparking = {
        label = 'Bell Farms Parking',
        takeVehicle = vector3(85.23, 6418.44, 31.59),
        spawnPoint = {
            vector4(62.15, 6403.41, 30.81, 211.38)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    dumbogarage = {
        label = 'Garagem Pública',
        takeVehicle = vector3(165.75, -3227.2, 5.89),
        spawnPoint = {
            vector4(168.34, -3236.1, 5.43, 272.05)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    pillboxgarage = {
        label = 'Garagem do Hospital',
        takeVehicle = vector3(211.24, -808.53, 30.83),
        spawnPoint = {
            vector4(222.02, -804.19, 30.26, 248.19),
            vector4(223.93, -799.11, 30.25, 248.53),
            vector4(226.46, -794.33, 30.24, 248.29),
            vector4(232.33, -807.97, 30.02, 69.17),
            vector4(234.42, -802.76, 30.04, 67.2)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    grapeseedgarage = {
        label = 'Garagem Pública',
        takeVehicle = vector3(2552.68, 4671.8, 33.95),
        spawnPoint = {
            vector4(2550.17, 4681.96, 33.81, 17.05)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    depotLot = {
        label = 'Depot Lot',
        takeVehicle = vector3(401.76, -1632.57, 29.29),
        spawnPoint = {
            vector4(396.55, -1643.93, 28.88, 321.91)
        },
        showBlip = true,
        blipName = 'Depósito',
        blipNumber = 68,
        blipColor = public,
        type = 'depot',
        category = Config.VehicleClass['car']
    },
    grotaMarkt = {
        label = 'Garagem Grota',
        takeVehicle = vector3(-56.86, -1839.64, 26.56),
        spawnPoint = {
            vector4(-50.77, -1829.15, 26.60, 293.91)
        },
        showBlip = false,
        blipName = 'Grota',
        blipNumber = 357,
        blipColor = public,
        type = 'gang',
        category = Config.VehicleClass['car'], --car, air, sea, rig
        job = 'grota',
        jobType = 'grota'
    },
    grotaHeiMarkt = {
        label = 'Hangar Grota',
        takeVehicle = vector3(89.93, -1780.35, 35.29),
        spawnPoint = {
            vector4(103.89, -1763.95, 35.30, 153.41)
        },
        showBlip = false,
        blipName = 'Hangar Grota',
        blipNumber = 360,
        blipColor = public,
        type = 'gang',
        category = Config.VehicleClass['air'],
        job = 'grota',
        jobType = 'grota'
    },
    grota2 = {
        label = 'Garagem Grota',
        takeVehicle = vector3(84.65, -1973.84, 20.90),
        spawnPoint = {
            vector4(94.39, -1960.79, 20.74, 329.72)
        },
        showBlip = false,
        blipName = 'Grota',
        blipNumber = 357,
        blipColor = public,
        type = 'gang',
        category = Config.VehicleClass['car'], --car, air, sea, rig
        job = 'grota',
        jobType = 'grota'
    },
    grota3 = {
        label = 'Garagem Grota',
        takeVehicle = vector3(-25.80, -1434.39, 30.65),
        spawnPoint = {
            vector4(-24.5219, -1436.30, 30.65, 184.40)
        },
        showBlip = false,
        blipName = 'Grota',
        blipNumber = 357,
        blipColor = public,
        type = 'gang',
        category = Config.VehicleClass['car'], --car, air, sea, rig
        job = 'grota',
        jobType = 'grota'
    },
    grota4 = {
        label = 'Garagem Grota',
        takeVehicle = vector3(483.99, -1515.21, 29.29),
        spawnPoint = {
            vector4(499.48, -1519.32, 29.28, 38.28)
        },
        showBlip = false,
        blipName = 'Grota',
        blipNumber = 357,
        blipColor = public,
        type = 'gang',
        category = Config.VehicleClass['car'], --car, air, sea, rig
        job = 'grota',
        jobType = 'grota'
    },
    grotaCentral = {
        label = 'Garagem Grota',
        takeVehicle = vector3(193.51, -1662.33, 29.80),
        spawnPoint = {
            vector4(188.49, -1669.37, 29.80, 310.96)
        },
        showBlip = false,
        blipName = 'Grota',
        blipNumber = 357,
        blipColor = public,
        type = 'gang',
        category = Config.VehicleClass['car'], --car, air, sea, rig
        job = 'grota',
        jobType = 'grota'
    },
    -- grotaHei = {
    --     label = 'Hangar Grota',
    --     takeVehicle = vector3(87.51, -1969.1, 20.75),
    --     spawnPoint = {
    --         vector4(93.78, -1961.73, 20.34, 319.11)
    --     },
    --     showBlip = false,
    --     blipName = 'Hangar Grota',
    --     blipNumber = 360,
    --     blipColor = public,
    --     type = 'gang',
    --     category = Config.VehicleClass['air'],
    --     job = 'grota',
    --     jobType = 'grota'
    -- },
    lostmc = {
        label = 'Lost MC',
        takeVehicle = vector3(985.83, -138.14, 73.09),
        spawnPoint = {
            vector4(977.65, -133.02, 73.34, 59.39)
        },
        showBlip = false,
        blipName = 'Lost MC',
        blipNumber = 357,
        blipColor = public,
        type = 'gang',
        category = Config.VehicleClass['car'], --car, air, sea, rig
        job = 'lostmc',
        jobType = 'lostmc'
    },
    cartel = {
        label = 'Cartel',
        takeVehicle = vector3(1411.67, 1117.8, 114.84),
        spawnPoint = {
            vector4(1403.01, 1118.25, 114.84, 88.69)
        },
        showBlip = false,
        blipName = 'Cartel',
        blipNumber = 357,
        blipColor = public,
        type = 'gang',
        category = Config.VehicleClass['car'],
        job = 'cartel',
        jobType = 'cartel'
    },
    -- police = {
    --     label = 'Police',
    --     takeVehicle = vector3(462.83, -1019.52, 28.1),
    --     spawnPoint = {
    --         vector4(468.26, -1028.80, 28.25, 158.81)
    --     },
    --     showBlip = false,
    --     blipName = 'Police',
    --     blipNumber = 357,
    --     blipColor = public,
    --     type = 'job',
    --     category = Config.VehicleClass['car'], --car, air, sea, rig
    --     job = 'police',
    --     jobType = 'police'
    -- },
    intairport = {
        label = 'Hangar do aeroporto',
        takeVehicle = vector3(-979.06, -2995.48, 13.95),
        spawnPoint = {
            vector4(-998.37, -2985.01, 13.95, 61.09)
        },
        showBlip = true,
        blipName = 'Hangar',
        blipNumber = 360,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['air']
    },
    higginsheli = {
        label = 'Higgins Helitours',
        takeVehicle = vector3(-722.15, -1472.79, 5.0),
        spawnPoint = {
            vector4(-745.22, -1468.72, 5.39, 319.84),
            vector4(-724.36, -1443.61, 5.39, 135.78)
        },
        showBlip = true,
        blipName = 'Hangar',
        blipNumber = 360,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['air']
    },
    airsshores = {
        label = 'Hangar de Sandy Shores',
        takeVehicle = vector3(1737.89, 3288.13, 41.14),
        spawnPoint = {
            vector4(1742.83, 3266.83, 41.24, 102.64)
        },
        showBlip = true,
        blipName = 'Hangar',
        blipNumber = 360,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['air']
    },
    airzancudo = {
        label = 'Hangar do Forte Zancudo',
        takeVehicle = vector3(-1828.25, 2975.44, 32.81),
        spawnPoint = {
            vector4(-1828.25, 2975.44, 32.81, 57.24)
        },
        showBlip = true,
        blipName = 'Hangar',
        blipNumber = 360,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['air']
    },
    airdepot = {
        label = 'Depósito Aéreo',
        takeVehicle = vector3(-1270.01, -3377.53, 14.33),
        spawnPoint = {
            vector4(-1270.01, -3377.53, 14.33, 329.25)
        },
        showBlip = true,
        blipName = 'Depósito Aéreo',
        blipNumber = 359,
        blipColor = public,
        type = 'depot',
        category = Config.VehicleClass['air']
    },
    lsymc = {
        label = 'LSYMC Loja de barco',
        takeVehicle = vector3(-785.95, -1497.84, -0.09),
        spawnPoint = {
            vector4(-796.64, -1502.6, -0.09, 111.49)
        },
        showBlip = true,
        blipName = 'Loja de barco',
        blipNumber = 356,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['sea']
    },
    paleto = {
        label = 'Loja de barco Paleto',
        takeVehicle = vector3(-278.21, 6638.13, 7.55),
        spawnPoint = {
            vector4(-289.2, 6637.96, 1.01, 45.5)
        },
        showBlip = true,
        blipName = 'Loja de barco',
        blipNumber = 356,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['sea']
    },
    millars = {
        label = 'Loja de barco Millars',
        takeVehicle = vector3(1298.56, 4212.42, 33.25),
        spawnPoint = {
            vector4(1297.82, 4209.61, 30.12, 253.5)
        },
        showBlip = true,
        blipName = 'Loja de barco',
        blipNumber = 356,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['sea']
    },
    seadepot = {
        label = 'Depósito LSYMC',
        takeVehicle = vector3(-742.95, -1407.58, 5.5),
        spawnPoint = {
            vector4(-729.77, -1355.49, 1.19, 142.5)
        },
        showBlip = true,
        blipName = 'Depósito LSYMC',
        blipNumber = 356,
        blipColor = public,
        type = 'depot',
        category = Config.VehicleClass['sea']
    },
    rigdepot = {
        label = 'Big Rig Depósito',
        takeVehicle = vector3(2334.42, 3118.62, 48.2),
        spawnPoint = {
            vector4(2324.57, 3117.79, 48.21, 4.05)
        },
        showBlip = true,
        blipName = 'Big Rig Depósito',
        blipNumber = 68,
        blipColor = 2,
        type = 'depot',
        category = Config.VehicleClass['rig']
    },
    dumborigparking = {
        label = 'Garagem Dumbo Big Rig',
        takeVehicle = vector3(161.23, -3188.73, 5.97),
        spawnPoint = {
            vector4(167.0, -3203.89, 5.94, 271.27)
        },
        showBlip = true,
        blipName = 'Big Rig',
        blipNumber = 357,
        blipColor = 2,
        type = 'public',
        category = Config.VehicleClass['rig']
    },
    popsrigparking = {
        label = 'Garagem Big Rig do Pop',
        takeVehicle = vector3(137.67, 6632.99, 31.67),
        spawnPoint = {
            vector4(127.69, 6605.84, 31.93, 223.67)
        },
        showBlip = true,
        blipName = 'Garagem Big Rig',
        blipNumber = 357,
        blipColor = 2,
        type = 'public',
        category = Config.VehicleClass['rig']
    },
    ronsrigparking = {
        label = 'Estacionamento Big Rig de Ron',
        takeVehicle = vector3(-2529.37, 2342.67, 33.06),
        spawnPoint = {
            vector4(-2521.61, 2326.45, 33.13, 88.7)
        },
        showBlip = true,
        blipName = 'Estacionamento Big Rig de Ron',
        blipNumber = 357,
        blipColor = 2,
        type = 'public',
        category = Config.VehicleClass['rig']
    },
    ronsrigparking2 = {
        label = 'Estacionamento Big Rig de Ron',
        takeVehicle = vector3(2561.67, 476.68, 108.49),
        spawnPoint = {
            vector4(2561.67, 476.68, 108.49, 177.86)
        },
        showBlip = true,
        blipName = 'Estacionamento Big Rig',
        blipNumber = 357,
        blipColor = 2,
        type = 'public',
        category = Config.VehicleClass['rig']
    },
    ronsrigparking3 = {
        label = 'Estacionamento Porto',
        takeVehicle = vector3(-41.24, -2550.63, 6.01),
        spawnPoint = {
            vector4(-39.39, -2527.81, 6.08, 326.18)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = 2,
        type = 'public',
        category = Config.VehicleClass['rig']
    },
    -- B U T Y    J O B S
    butyMiner = {
        label = 'Estacionamento Minerador',
        takeVehicle = vector3(2946.27, 2747.06, 43.40),
        spawnPoint = {
            vector4(2954.70, 2748.68, 43.52, 287.33)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyHarvest = {
        label = 'Estacionamento Colheita',
        takeVehicle = vector3(2242.99, 5171.53, 59.69),
        spawnPoint = {
            vector4(2236.96, 5175.98, 59.64, 135.18)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyEletric = {
        label = 'Estacionamento Eletricista',
        takeVehicle = vector3(728.80, -2029.18, 29.28),
        spawnPoint = {
            vector4(731.53, -2033.00, 29.27, 326.27)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyConstruct = {
        label = 'Estacionamento Público',
        takeVehicle = vector3(1376.51, -731.05, 67.18),
        spawnPoint = {
            vector4(1386.89, -742.89, 67.05, 66.72)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyGardener = {
        label = 'Estacionamento Golfe',
        takeVehicle = vector3(-1380.97, 55.22, 53.67),
        spawnPoint = {
            vector4(-1400.60, 49.67, 53.26, 59.53)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyMorningWood = {
        label = 'Estacionamento Morning Wood',
        takeVehicle = vector3(-1446.87, -361.99, 43.59),
        spawnPoint = {
            vector4(-1441.78, -366.10, 43.61, 29.10)
        },
        showBlip = true,
        blipName = 'Estacionamento',
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyFisherman = {
        label = 'Estacionamento Público',
        takeVehicle = vector3(3788.85, 4450.89, 5.10),
        spawnPoint = {
            vector4(3784.24, 4450.38, 5.17, 343.00)
        },
        blipName = 'Estacionamento',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyPlumber = {
        label = 'Garagem ',
        takeVehicle = vector3(-1190.143, -950.17, 4.30),
        spawnPoint = {
            vector4(-1190.1438, -950.17, 4.30, 303.99)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyButcher = {
        label = 'Garagem Raven',
        takeVehicle = vector3(942.93, -2181.89, 30.55),
        spawnPoint = {
            vector4(945.61, -2175.67, 30.55, 56.61)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyGrandSenora = {
        label = 'Garagem Grand Senora',
        takeVehicle = vector3(2339.14, 3137.20, 48.20),
        spawnPoint = {
            vector4(2345.45, 3135.67, 48.20, 74.87)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyMontChiliad = {
        label = 'Garagem Monte Clhiliad',
        takeVehicle = vector3(-585.44, 5239.64, 70.47),
        spawnPoint = {
            vector4(-572.31, 5241.72, 70.48, 135.36)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyVinewood = {
        label = 'Garagem Vinewood',
        takeVehicle = vector3( 1375.11, 1136.01, 114.13),
        spawnPoint = {
            vector4(1366.80, 1139.14, 113.75, 85.40)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyGrapeseed = {
        label = 'Garagem Grapeseed',
        takeVehicle = vector3(2137.44, 4785.47, 40.97),
        spawnPoint = {
            vector4(2137.44, 4785.47, 40.97, 223.07)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyLittleSeoul = {
        label = 'Garagem Little Seoul',
        takeVehicle = vector3(-570.71, -1115.81, 22.17),
        spawnPoint = {
            vector4(-570.71, -1115.81, 22.17, 270.49)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyLittleSeoul2 = {
        label = 'Garagem Little Seoul',
        takeVehicle = vector3(-557.78, -999.32, 23.02),
        spawnPoint = {
            vector4(-575.13, -998.82, 22.17, 266.82)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyLaMesa = {
        label = 'Garagem La Mesa',
        takeVehicle = vector3(712.18, -1367.99, 26.08),
        spawnPoint = {
            vector4(704.74, -1370.24, 26.07, 276.22)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyRancho = {
        label = 'Garagem Rancho',
        takeVehicle = vector3(461.30, -1688.30, 29.28),
        spawnPoint = {
            vector4(459.18, -1695.95, 29.28, 315.07)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyElBurro = {
        label = 'Garagem El Burro Heights',
        takeVehicle = vector3(1531.20, -2096.10, 77.04),
        spawnPoint = {
            vector4(1520.49, -2098.70, 76.89, 275.66)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    },
    butyBuccaneer = {
        label = 'Garagem Buccaneer Way',
        takeVehicle = vector3(771.43, -2987.15, 5.81),
        spawnPoint = {
            vector4(778.82, -2983.97, 5.80, 70.57)
        },
        blipName = 'Garagem',
        showBlip = true,
        blipNumber = 357,
        blipColor = public,
        type = 'public',
        category = Config.VehicleClass['car']
    }
}
