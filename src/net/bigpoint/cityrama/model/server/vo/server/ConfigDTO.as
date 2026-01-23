package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   import mx.logging.LogEventLevel;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.server.ConfigProfessionalTraitDTO;
   import net.bigpoint.cityrama.model.server.MapEntryDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.ConfigQuestDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class ConfigDTO
   {
      
      private var _playfields:Dictionary;
      
      private var _playfieldlayers:Dictionary;
      
      private var _playfieldtypes:Dictionary;
      
      private var _levels:Dictionary;
      
      private var _items:Dictionary;
      
      private var _assists:Dictionary;
      
      private var _resources:Dictionary;
      
      private var _goods:Dictionary;
      
      private var _quests:Dictionary;
      
      private var _resourceIds:Dictionary;
      
      private var _resourceStrings:Dictionary;
      
      private var _boosterpacks:Dictionary;
      
      private var _improvementBoosterPacks:Dictionary;
      
      private var _paymentPacks:Dictionary;
      
      private var _tags:Dictionary;
      
      private var _playfieldsExpansions:Dictionary;
      
      private var _permissions:Dictionary;
      
      private var _restrictions:Dictionary;
      
      private var _inventories:Dictionary;
      
      private var _professionalSpecializations:Dictionary;
      
      private var _professionalAttributes:Dictionary;
      
      private var _configProfessionalLevel:Dictionary;
      
      private var _balanceParameters:Dictionary;
      
      private var _version:Number;
      
      private var _runningEvents:Vector.<ConfigEventDTO>;
      
      private var _professionalTraits:Dictionary;
      
      private var _improvements:Dictionary;
      
      private var _cityImprovements:Dictionary;
      
      private var _upcomingEvents:Vector.<ConfigUpcomingEventDTO>;
      
      private var _features:Dictionary;
      
      private var _configCityWheelDTO:ConfigCityWheelDTO;
      
      private var _masteryBoni:Dictionary;
      
      private var _configCinema:ConfigCinemaDTO;
      
      private var _flashConfig:Dictionary;
      
      public function ConfigDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         var _loc15_:Object = null;
         var _loc16_:Object = null;
         var _loc17_:Object = null;
         var _loc18_:Object = null;
         var _loc19_:Object = null;
         var _loc20_:Object = null;
         var _loc21_:Object = null;
         var _loc22_:Object = null;
         var _loc23_:Object = null;
         var _loc24_:Object = null;
         var _loc25_:Object = null;
         var _loc26_:Object = null;
         var _loc27_:Object = null;
         var _loc28_:Object = null;
         var _loc29_:Object = null;
         var _loc30_:ConfigPlayfieldDTO = null;
         var _loc31_:ConfigPlayfieldExpansionDTO = null;
         var _loc32_:ConfigPlayfieldLayerDTO = null;
         var _loc33_:ConfigPlayfieldTypeDTO = null;
         var _loc34_:ConfigUserLevelDTO = null;
         var _loc35_:ConfigPlayfieldItemDTO = null;
         var _loc36_:ConfigAssistDTO = null;
         var _loc37_:ConfigResourceDTO = null;
         var _loc38_:ConfigTagDTO = null;
         var _loc39_:ConfigGoodDTO = null;
         var _loc40_:ConfigQuestDTO = null;
         var _loc41_:ConfigPaymentPackDTO = null;
         var _loc42_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc43_:ConfigGroundRestrictionDTO = null;
         var _loc44_:ConfigProfessionalSpecializationDTO = null;
         var _loc45_:ConfigProfessionalAttributeDTO = null;
         var _loc46_:ConfigProfessionalLevelDTO = null;
         var _loc47_:ConfigBoosterDTO = null;
         var _loc48_:ConfigBoosterDTO = null;
         var _loc49_:ConfigBalanceDTO = null;
         var _loc50_:ConfigImprovementDTO = null;
         var _loc51_:ConfigImprovementDTO = null;
         var _loc52_:ConfigMasteryBonusDTO = null;
         var _loc53_:Object = null;
         var _loc54_:MapEntryDTO = null;
         super();
         this._playfields = new Dictionary();
         for each(_loc2_ in param1.p)
         {
            _loc30_ = new ConfigPlayfieldDTO(_loc2_);
            this._playfields[_loc30_.id] = _loc30_;
         }
         this._playfieldsExpansions = new Dictionary();
         for each(_loc3_ in param1.pe)
         {
            _loc31_ = new ConfigPlayfieldExpansionDTO(_loc3_);
            _loc31_.log(LogEventLevel.WARN,1);
            this._playfieldsExpansions[_loc31_.id] = _loc31_;
         }
         this._playfieldlayers = new Dictionary();
         for each(_loc4_ in param1.pl)
         {
            _loc32_ = new ConfigPlayfieldLayerDTO(_loc4_);
            this._playfieldlayers[_loc32_.id] = _loc32_;
         }
         this._playfieldtypes = new Dictionary();
         for each(_loc5_ in param1.pt)
         {
            _loc33_ = new ConfigPlayfieldTypeDTO(_loc5_);
            this._playfieldtypes[_loc33_.id] = _loc33_;
         }
         this._levels = new Dictionary();
         for each(_loc6_ in param1.l)
         {
            _loc34_ = new ConfigUserLevelDTO(_loc6_);
            this._levels[_loc34_.id] = _loc34_;
         }
         this._items = new Dictionary();
         for each(_loc7_ in param1.i)
         {
            _loc35_ = ConfigFactory.buildConfigPLayfieldItemDTO(_loc7_);
            this._items[_loc35_.id] = _loc35_;
         }
         this._assists = new Dictionary();
         for each(_loc8_ in param1.a)
         {
            _loc36_ = new ConfigAssistDTO(_loc8_);
            this._assists[_loc36_.id] = _loc36_;
         }
         this._resources = new Dictionary();
         this._resourceIds = new Dictionary();
         this._resourceStrings = new Dictionary();
         for each(_loc9_ in param1.r)
         {
            _loc37_ = new ConfigResourceDTO(_loc9_);
            this._resources[_loc37_.id] = _loc37_;
            this._resourceIds[_loc37_.type] = _loc37_.id;
            this._resourceStrings[_loc37_.id] = _loc37_.type;
         }
         this._tags = new Dictionary();
         for each(_loc10_ in param1.t)
         {
            _loc38_ = new ConfigTagDTO(_loc10_);
            this._tags[_loc38_.tagId] = _loc38_;
         }
         this._goods = new Dictionary();
         for each(_loc11_ in param1.go)
         {
            _loc39_ = ConfigFactory.buildConfigGoodDTO(_loc11_,this._tags,this._levels);
            this._goods[_loc39_.id] = _loc39_;
         }
         this._quests = new Dictionary();
         for each(_loc12_ in param1.q)
         {
            _loc40_ = new ConfigQuestDTO(_loc12_);
            this._quests[_loc40_.id] = _loc40_;
         }
         this._paymentPacks = new Dictionary();
         for each(_loc13_ in param1.pp)
         {
            _loc41_ = new ConfigPaymentPackDTO(_loc13_);
            this._paymentPacks[_loc41_.id] = _loc41_;
         }
         this._permissions = new Dictionary();
         for each(_loc14_ in param1.pr)
         {
            _loc42_ = new ConfigPlayfieldItemPermissionDTO(_loc14_);
            this._permissions[_loc42_.id] = _loc42_;
         }
         this._restrictions = new Dictionary();
         for each(_loc15_ in param1.gr)
         {
            _loc43_ = new ConfigGroundRestrictionDTO(_loc15_);
            this._restrictions[_loc43_.id] = _loc43_;
         }
         this._inventories = new Dictionary();
         for each(_loc16_ in param1.inv)
         {
            this._inventories[_loc16_.id] = new ConfigInventoryDTO(_loc16_);
         }
         this._professionalSpecializations = new Dictionary();
         for each(_loc17_ in param1.prs)
         {
            _loc44_ = new ConfigProfessionalSpecializationDTO(_loc17_);
            this._professionalSpecializations[_loc44_.id] = _loc44_;
         }
         this._professionalAttributes = new Dictionary();
         for each(_loc18_ in param1.pra)
         {
            _loc45_ = new ConfigProfessionalAttributeDTO(_loc18_);
            this._professionalAttributes[_loc45_.id] = _loc45_;
         }
         this._configProfessionalLevel = new Dictionary();
         for each(_loc19_ in param1.prl)
         {
            _loc46_ = new ConfigProfessionalLevelDTO(_loc19_);
            this._configProfessionalLevel[_loc46_.id] = _loc46_;
         }
         this._boosterpacks = new Dictionary();
         for each(_loc20_ in param1.bs)
         {
            _loc47_ = new ConfigBoosterDTO(_loc20_);
            this._boosterpacks[_loc47_.id] = _loc47_;
         }
         this._improvementBoosterPacks = new Dictionary();
         for each(_loc21_ in param1.ibs)
         {
            _loc48_ = new ConfigBoosterDTO(_loc21_);
            this._improvementBoosterPacks[_loc48_.id] = _loc48_;
         }
         this._balanceParameters = new Dictionary();
         for each(_loc22_ in param1.bal)
         {
            _loc49_ = new ConfigBalanceDTO(_loc22_);
            this._balanceParameters[_loc49_.key] = _loc49_;
         }
         this._runningEvents = new Vector.<ConfigEventDTO>(0);
         for each(_loc23_ in param1.re)
         {
            if(_loc23_.y == ServerEventTypeConst.SALE)
            {
               this._runningEvents.push(new ConfigEventSaleDTO(_loc23_));
            }
            else
            {
               this._runningEvents.push(new ConfigEventDTO(_loc23_));
            }
         }
         this._upcomingEvents = new Vector.<ConfigUpcomingEventDTO>(0);
         for each(_loc24_ in param1.ue)
         {
            this._upcomingEvents.push(new ConfigUpcomingEventDTO(_loc24_));
         }
         this._professionalTraits = new Dictionary();
         for each(_loc25_ in param1.prt)
         {
            this._professionalTraits[_loc25_.cpt] = new ConfigProfessionalTraitDTO(_loc25_);
         }
         this._improvements = new Dictionary();
         for each(_loc26_ in param1.imp)
         {
            _loc50_ = new ConfigImprovementDTO(_loc26_);
            this._improvements[_loc50_.id] = _loc50_;
         }
         this._version = param1.v;
         this._cityImprovements = new Dictionary();
         for each(_loc27_ in param1.db)
         {
            _loc51_ = new ConfigImprovementDTO(_loc27_);
            this._cityImprovements[_loc51_.id] = _loc51_;
         }
         this._version = param1.v;
         this._features = new Dictionary();
         for each(_loc28_ in param1.ft)
         {
            this._features[_loc28_.type] = new ConfigFeatureDTO(_loc28_);
         }
         this._configCityWheelDTO = new ConfigCityWheelDTO(param1.w);
         this._masteryBoni = new Dictionary();
         for each(_loc29_ in param1.mb)
         {
            _loc52_ = new ConfigMasteryBonusDTO(_loc29_);
            this._masteryBoni[_loc52_.id] = _loc52_;
         }
         if(param1.c)
         {
            this._configCinema = new ConfigCinemaDTO(param1.c);
         }
         this._flashConfig = new Dictionary();
         if(param1.cf)
         {
            for each(_loc53_ in param1.cf)
            {
               _loc54_ = new MapEntryDTO(_loc53_);
               this._flashConfig[_loc54_.key] = _loc54_;
            }
         }
      }
      
      public function get balanceParameters() : Dictionary
      {
         return this._balanceParameters;
      }
      
      public function get playfields() : Dictionary
      {
         return this._playfields;
      }
      
      public function set playfields(param1:Dictionary) : void
      {
         this._playfields = param1;
      }
      
      public function get playfieldlayers() : Dictionary
      {
         return this._playfieldlayers;
      }
      
      public function set playfieldlayers(param1:Dictionary) : void
      {
         this._playfieldlayers = param1;
      }
      
      public function get playfieldtypes() : Dictionary
      {
         return this._playfieldtypes;
      }
      
      public function set playfieldtypes(param1:Dictionary) : void
      {
         this._playfieldtypes = param1;
      }
      
      public function get levels() : Dictionary
      {
         return this._levels;
      }
      
      public function set levels(param1:Dictionary) : void
      {
         this._levels = param1;
      }
      
      public function get resources() : Dictionary
      {
         return this._resources;
      }
      
      public function set resources(param1:Dictionary) : void
      {
         this._resources = param1;
      }
      
      public function get goods() : Dictionary
      {
         return this._goods;
      }
      
      public function set goods(param1:Dictionary) : void
      {
         this._goods = param1;
      }
      
      public function get quests() : Dictionary
      {
         return this._quests;
      }
      
      public function set quests(param1:Dictionary) : void
      {
         this._quests = param1;
      }
      
      public function get items() : Dictionary
      {
         return this._items;
      }
      
      public function set items(param1:Dictionary) : void
      {
         this._items = param1;
      }
      
      public function getItemsByGfxId(param1:Number) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         for each(_loc3_ in this._items)
         {
            if(_loc3_.gfxId == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function log(param1:int = 0, param2:int = 0) : void
      {
      }
      
      public function get resourceIds() : Dictionary
      {
         return this._resourceIds;
      }
      
      public function set resourceIds(param1:Dictionary) : void
      {
         this._resourceIds = param1;
      }
      
      public function get resourceStrings() : Dictionary
      {
         return this._resourceStrings;
      }
      
      public function get paymentPacks() : Dictionary
      {
         return this._paymentPacks;
      }
      
      public function get tags() : Dictionary
      {
         return this._tags;
      }
      
      public function get playfieldsExpansions() : Dictionary
      {
         return this._playfieldsExpansions;
      }
      
      public function get permissions() : Dictionary
      {
         return this._permissions;
      }
      
      public function get restrictions() : Dictionary
      {
         return this._restrictions;
      }
      
      public function get professionalSpecializations() : Dictionary
      {
         return this._professionalSpecializations;
      }
      
      public function get professionalAttributes() : Dictionary
      {
         return this._professionalAttributes;
      }
      
      public function get boosterpacks() : Dictionary
      {
         return this._boosterpacks;
      }
      
      public function get runningEvents() : Vector.<ConfigEventDTO>
      {
         return this._runningEvents;
      }
      
      public function set runningEvents(param1:Vector.<ConfigEventDTO>) : void
      {
         this._runningEvents = param1;
      }
      
      public function get version() : Number
      {
         return this._version;
      }
      
      public function get configProfessionalLevel() : Dictionary
      {
         return this._configProfessionalLevel;
      }
      
      public function get professionalTraits() : Dictionary
      {
         return this._professionalTraits;
      }
      
      public function get improvements() : Dictionary
      {
         return this._improvements;
      }
      
      public function get improvementBoosterPacks() : Dictionary
      {
         return this._improvementBoosterPacks;
      }
      
      public function get upcomingEvents() : Vector.<ConfigUpcomingEventDTO>
      {
         return this._upcomingEvents;
      }
      
      public function set upcomingEvents(param1:Vector.<ConfigUpcomingEventDTO>) : void
      {
         this._upcomingEvents = param1;
      }
      
      public function get features() : Dictionary
      {
         return this._features;
      }
      
      public function get inventories() : Dictionary
      {
         return this._inventories;
      }
      
      public function get configCityWheelDTO() : ConfigCityWheelDTO
      {
         return this._configCityWheelDTO;
      }
      
      public function get masteryBoni() : Dictionary
      {
         return this._masteryBoni;
      }
      
      public function get configCinema() : ConfigCinemaDTO
      {
         return this._configCinema;
      }
      
      public function get cityImprovements() : Dictionary
      {
         return this._cityImprovements;
      }
      
      public function get flashConfig() : Dictionary
      {
         return this._flashConfig;
      }
      
      public function get assists() : Dictionary
      {
         return this._assists;
      }
      
      public function set assists(param1:Dictionary) : void
      {
         this._assists = param1;
      }
   }
}

