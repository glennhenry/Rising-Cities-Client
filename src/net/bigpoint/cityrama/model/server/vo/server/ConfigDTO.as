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
         §§push(false);
         var _loc57_:Boolean = true;
         var _loc58_:* = §§pop();
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
         if(!(_loc58_ && Boolean(param1)))
         {
            super();
            if(!(_loc58_ && Boolean(_loc2_)))
            {
               this._playfields = new Dictionary();
            }
         }
         var _loc55_:* = 0;
         var _loc56_:* = param1.p;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc56_,_loc55_));
            if(!_loc57_)
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc55_,_loc56_);
               _loc30_ = new ConfigPlayfieldDTO(_loc2_);
               if(_loc57_)
               {
                  this._playfields[_loc30_.id] = _loc30_;
               }
               continue;
            }
            if(_loc57_)
            {
               if(_loc57_ || Boolean(_loc2_))
               {
                  if(_loc57_ || Boolean(this))
                  {
                     this._playfieldsExpansions = new Dictionary();
                     if(_loc57_ || Boolean(_loc3_))
                     {
                        §§push(0);
                        if(_loc57_ || Boolean(_loc3_))
                        {
                           _loc55_ = §§pop();
                           if(_loc57_ || Boolean(param1))
                           {
                              _loc56_ = param1.pe;
                              loop1:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc56_,_loc55_));
                                 if(!_loc57_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    _loc3_ = §§nextvalue(_loc55_,_loc56_);
                                    _loc31_ = new ConfigPlayfieldExpansionDTO(_loc3_);
                                    _loc31_.log(LogEventLevel.WARN,1);
                                    if(!(_loc58_ && Boolean(_loc3_)))
                                    {
                                       this._playfieldsExpansions[_loc31_.id] = _loc31_;
                                    }
                                    continue;
                                 }
                                 if(_loc57_)
                                 {
                                    if(_loc57_)
                                    {
                                       if(_loc57_)
                                       {
                                          this._playfieldlayers = new Dictionary();
                                          if(!_loc58_)
                                          {
                                             §§push(0);
                                             if(!_loc58_)
                                             {
                                                _loc55_ = §§pop();
                                                if(_loc57_ || Boolean(param1))
                                                {
                                                   _loc56_ = param1.pl;
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc56_,_loc55_));
                                                      if(_loc58_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         _loc4_ = §§nextvalue(_loc55_,_loc56_);
                                                         _loc32_ = new ConfigPlayfieldLayerDTO(_loc4_);
                                                         if(_loc57_ || Boolean(_loc3_))
                                                         {
                                                            this._playfieldlayers[_loc32_.id] = _loc32_;
                                                         }
                                                         continue;
                                                      }
                                                      if(!(_loc58_ && Boolean(_loc2_)))
                                                      {
                                                         if(!_loc58_)
                                                         {
                                                            if(!(_loc58_ && Boolean(this)))
                                                            {
                                                               this._playfieldtypes = new Dictionary();
                                                               if(!(_loc58_ && Boolean(_loc2_)))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc58_)
                                                                  {
                                                                     _loc55_ = §§pop();
                                                                     if(_loc57_ || Boolean(param1))
                                                                     {
                                                                        _loc56_ = param1.pt;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc56_,_loc55_));
                                                                           if(_loc57_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc5_ = §§nextvalue(_loc55_,_loc56_);
                                                                                 _loc33_ = new ConfigPlayfieldTypeDTO(_loc5_);
                                                                                 if(_loc57_ || Boolean(_loc2_))
                                                                                 {
                                                                                    this._playfieldtypes[_loc33_.id] = _loc33_;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc58_ && Boolean(param1)))
                                                                              {
                                                                                 if(_loc57_)
                                                                                 {
                                                                                    if(!_loc58_)
                                                                                    {
                                                                                       this._levels = new Dictionary();
                                                                                       if(!_loc58_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc57_)
                                                                                          {
                                                                                             _loc55_ = §§pop();
                                                                                             if(!_loc58_)
                                                                                             {
                                                                                                addr03bf:
                                                                                                _loc56_ = param1.l;
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                   if(!_loc57_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      _loc6_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                      _loc34_ = new ConfigUserLevelDTO(_loc6_);
                                                                                                      if(!_loc58_)
                                                                                                      {
                                                                                                         this._levels[_loc34_.id] = _loc34_;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc58_)
                                                                                                   {
                                                                                                      addr0409:
                                                                                                      if(!(_loc58_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         if(!_loc58_)
                                                                                                         {
                                                                                                            this._items = new Dictionary();
                                                                                                            if(_loc57_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!_loc58_)
                                                                                                               {
                                                                                                                  addr0438:
                                                                                                                  _loc55_ = §§pop();
                                                                                                                  if(_loc57_)
                                                                                                                  {
                                                                                                                     _loc56_ = param1.i;
                                                                                                                     loop36:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                        if(!(_loc57_ || Boolean(param1)))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           _loc7_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                           _loc35_ = ConfigFactory.buildConfigPLayfieldItemDTO(_loc7_);
                                                                                                                           if(!_loc58_)
                                                                                                                           {
                                                                                                                              this._items[_loc35_.id] = _loc35_;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!(_loc58_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           if(_loc57_)
                                                                                                                           {
                                                                                                                              if(_loc57_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 this._assists = new Dictionary();
                                                                                                                                 if(!(_loc58_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       addr04da:
                                                                                                                                       _loc55_ = §§pop();
                                                                                                                                       if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          _loc56_ = param1.a;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                             if(_loc57_ || Boolean(_loc2_))
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                   _loc36_ = new ConfigAssistDTO(_loc8_);
                                                                                                                                                   if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                   {
                                                                                                                                                      this._assists[_loc36_.id] = _loc36_;
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(_loc57_)
                                                                                                                                                {
                                                                                                                                                   if(_loc57_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc57_)
                                                                                                                                                      {
                                                                                                                                                         this._resources = new Dictionary();
                                                                                                                                                         if(!_loc58_)
                                                                                                                                                         {
                                                                                                                                                            this._resourceIds = new Dictionary();
                                                                                                                                                            if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                            {
                                                                                                                                                               this._resourceStrings = new Dictionary();
                                                                                                                                                               if(!(_loc58_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(!_loc58_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc55_ = §§pop();
                                                                                                                                                                     if(_loc57_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc56_ = param1.r;
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                           if(!_loc58_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop29;
                                                                                                                                                                           }
                                                                                                                                                                           break loop0;
                                                                                                                                                                        }
                                                                                                                                                                        addr0612:
                                                                                                                                                                     }
                                                                                                                                                                     addr09c9:
                                                                                                                                                                     if(_loc57_)
                                                                                                                                                                     {
                                                                                                                                                                        addr09d1:
                                                                                                                                                                        this._inventories = new Dictionary();
                                                                                                                                                                        if(!(_loc58_ && Boolean(_loc2_)))
                                                                                                                                                                        {
                                                                                                                                                                           addr09e8:
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(_loc57_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc55_ = §§pop();
                                                                                                                                                                              if(!_loc58_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc56_ = param1.inv;
                                                                                                                                                                                 loop38:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                    if(!(_loc57_ || Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc16_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                       if(!_loc58_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this._inventories[_loc16_.id] = new ConfigInventoryDTO(_loc16_);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc58_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc58_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this._professionalSpecializations = new Dictionary();
                                                                                                                                                                                             if(_loc57_ || Boolean(_loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(_loc57_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0a7c:
                                                                                                                                                                                                   _loc55_ = §§pop();
                                                                                                                                                                                                   if(_loc57_ || Boolean(this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc56_ = param1.prs;
                                                                                                                                                                                                      loop31:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                         if(_loc58_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc17_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                            _loc44_ = new ConfigProfessionalSpecializationDTO(_loc17_);
                                                                                                                                                                                                            if(_loc57_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this._professionalSpecializations[_loc44_.id] = _loc44_;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0ade:
                                                                                                                                                                                                            if(_loc57_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc57_ || Boolean(_loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this._professionalAttributes = new Dictionary();
                                                                                                                                                                                                                  if(_loc57_ || Boolean(_loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                     if(_loc57_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0b15:
                                                                                                                                                                                                                        _loc55_ = §§pop();
                                                                                                                                                                                                                        if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc56_ = param1.pra;
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                              if(!(_loc57_ || Boolean(_loc2_)))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc18_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                 _loc45_ = new ConfigProfessionalAttributeDTO(_loc18_);
                                                                                                                                                                                                                                 if(_loc57_ || Boolean(this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this._professionalAttributes[_loc45_.id] = _loc45_;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0b87:
                                                                                                                                                                                                                                 if(!_loc58_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0b8f:
                                                                                                                                                                                                                                    if(_loc57_ || Boolean(this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0b9f:
                                                                                                                                                                                                                                       this._configProfessionalLevel = new Dictionary();
                                                                                                                                                                                                                                       if(!_loc58_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                          if(!_loc58_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc55_ = §§pop();
                                                                                                                                                                                                                                             if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0bc6:
                                                                                                                                                                                                                                                _loc56_ = param1.prl;
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                   if(_loc58_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop31;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc19_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                                      _loc46_ = new ConfigProfessionalLevelDTO(_loc19_);
                                                                                                                                                                                                                                                      if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this._configProfessionalLevel[_loc46_.id] = _loc46_;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc57_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr0c20:
                                                                                                                                                                                                                                                      if(!_loc58_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr0c28:
                                                                                                                                                                                                                                                         if(!_loc58_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this._boosterpacks = new Dictionary();
                                                                                                                                                                                                                                                            if(_loc57_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0c47:
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(!_loc58_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc55_ = §§pop();
                                                                                                                                                                                                                                                                  if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr0c5f:
                                                                                                                                                                                                                                                                     _loc56_ = param1.bs;
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                        if(_loc57_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc20_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                                                              _loc47_ = new ConfigBoosterDTO(_loc20_);
                                                                                                                                                                                                                                                                              if(!(_loc58_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this._boosterpacks[_loc47_.id] = _loc47_;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc58_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr0cb9:
                                                                                                                                                                                                                                                                              if(_loc57_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc57_ || Boolean(param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this._improvementBoosterPacks = new Dictionary();
                                                                                                                                                                                                                                                                                    if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr0ce8:
                                                                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                                                                       if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr0cf8:
                                                                                                                                                                                                                                                                                          _loc55_ = §§pop();
                                                                                                                                                                                                                                                                                          if(!_loc58_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr0d00:
                                                                                                                                                                                                                                                                                             _loc56_ = param1.ibs;
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                                                if(_loc57_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop31;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             loop8:
                                                                                                                                                                                                                                                                                             while(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc53_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                                                                                _loc54_ = new MapEntryDTO(_loc53_);
                                                                                                                                                                                                                                                                                                if(_loc57_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   this._flashConfig[_loc54_.key] = _loc54_;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1336:
                                                                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                                                                             addr1334:
                                                                                                                                                                                                                                                                                             addr1332:
                                                                                                                                                                                                                                                                                             addr132e:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1286:
                                                                                                                                                                                                                                                                                          if(_loc57_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr128e:
                                                                                                                                                                                                                                                                                             if(param1.c)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc58_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr129d:
                                                                                                                                                                                                                                                                                                   this._configCinema = new ConfigCinemaDTO(param1.c);
                                                                                                                                                                                                                                                                                                   if(_loc57_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr12bc:
                                                                                                                                                                                                                                                                                                      this._flashConfig = new Dictionary();
                                                                                                                                                                                                                                                                                                      if(!_loc58_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr12cb:
                                                                                                                                                                                                                                                                                                         if(param1.cf)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc57_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr12dc:
                                                                                                                                                                                                                                                                                                               _loc55_ = 0;
                                                                                                                                                                                                                                                                                                               addr12da:
                                                                                                                                                                                                                                                                                                               if(_loc57_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr12e4:
                                                                                                                                                                                                                                                                                                                  _loc56_ = param1.cf;
                                                                                                                                                                                                                                                                                                                  §§goto(addr132b);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1334);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1336);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr12da);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr12cb);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1336);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr12bc);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr129d);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr101a:
                                                                                                                                                                                                                                                                                       _loc55_ = §§pop();
                                                                                                                                                                                                                                                                                       if(_loc57_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc56_ = param1.imp;
                                                                                                                                                                                                                                                                                          loop15:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                                             if(!_loc58_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc26_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                                                                                      _loc50_ = new ConfigImprovementDTO(_loc26_);
                                                                                                                                                                                                                                                                                                      if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         this._improvements[_loc50_.id] = _loc50_;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr107c:
                                                                                                                                                                                                                                                                                                      if(!_loc58_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1084:
                                                                                                                                                                                                                                                                                                         if(!_loc58_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr108c:
                                                                                                                                                                                                                                                                                                            this._version = param1.v;
                                                                                                                                                                                                                                                                                                            if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               this._cityImprovements = new Dictionary();
                                                                                                                                                                                                                                                                                                               if(_loc57_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr10b2:
                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                                  if(!_loc58_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr10ba:
                                                                                                                                                                                                                                                                                                                     _loc55_ = §§pop();
                                                                                                                                                                                                                                                                                                                     if(_loc57_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr10c2:
                                                                                                                                                                                                                                                                                                                        _loc56_ = param1.db;
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                                                                           if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break loop1;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        loop9:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc57_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1276:
                                                                                                                                                                                                                                                                                                                                 if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1286);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr12e4);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1332);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc29_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                                                                                                              _loc52_ = new ConfigMasteryBonusDTO(_loc29_);
                                                                                                                                                                                                                                                                                                                              if(_loc57_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 this._masteryBoni[_loc52_.id] = _loc52_;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                                                                                 if(!_loc57_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break loop15;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1263:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr126c:
                                                                                                                                                                                                                                                                                                                        addr10f9:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1286);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1162:
                                                                                                                                                                                                                                                                                                                  _loc55_ = §§pop();
                                                                                                                                                                                                                                                                                                                  if(!_loc58_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr116a:
                                                                                                                                                                                                                                                                                                                     _loc56_ = param1.ft;
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                                                                        if(!_loc58_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break loop0;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr126c);
                                                                                                                                                                                                                                                                                                                     addr11a4:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1334);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr11cf:
                                                                                                                                                                                                                                                                                                               this._configCityWheelDTO = new ConfigCityWheelDTO(param1.w);
                                                                                                                                                                                                                                                                                                               if(_loc57_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr11ed:
                                                                                                                                                                                                                                                                                                                  this._masteryBoni = new Dictionary();
                                                                                                                                                                                                                                                                                                                  if(_loc57_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1204:
                                                                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                                                                     if(_loc57_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1214:
                                                                                                                                                                                                                                                                                                                        _loc55_ = §§pop();
                                                                                                                                                                                                                                                                                                                        if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1224:
                                                                                                                                                                                                                                                                                                                           _loc56_ = param1.mb;
                                                                                                                                                                                                                                                                                                                           §§goto(addr1263);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1286);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr12dc);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr12bc);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr129d);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr10b2);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1152:
                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                         if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1162);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr12dc);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr116a);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1332);
                                                                                                                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr106a:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr132e);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr10c2);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr11cf);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1152);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr10c2);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1332);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr106a);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr0feb:
                                                                                                                                                                                                                                                                  if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this._improvements = new Dictionary();
                                                                                                                                                                                                                                                                     if(!_loc58_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr100a:
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        if(!(_loc58_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr101a);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1214);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1204);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr113b:
                                                                                                                                                                                                                                                                  this._features = new Dictionary();
                                                                                                                                                                                                                                                                  if(_loc57_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1152);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr12bc);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr0d91:
                                                                                                                                                                                                                                                               _loc55_ = §§pop();
                                                                                                                                                                                                                                                               if(_loc57_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0d99:
                                                                                                                                                                                                                                                                  _loc56_ = param1.bal;
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                     if(_loc57_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop38;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break loop1;
                                                                                                                                                                                                                                                                  addr0dd9:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr10c2);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr11cf);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr11ed);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0d99);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0cb9);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break loop31;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr0f08:
                                                                                                                                                                                                                                             _loc56_ = param1.ue;
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                if(_loc58_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc24_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                                   if(_loc57_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this._upcomingEvents.push(new ConfigUpcomingEventDTO(_loc24_));
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc57_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0f4f:
                                                                                                                                                                                                                                                   if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr0f5f:
                                                                                                                                                                                                                                                      if(_loc57_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr0f67:
                                                                                                                                                                                                                                                         this._professionalTraits = new Dictionary();
                                                                                                                                                                                                                                                         if(_loc57_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr0f76:
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            if(!_loc58_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0f7e:
                                                                                                                                                                                                                                                               _loc55_ = §§pop();
                                                                                                                                                                                                                                                               if(!_loc58_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0f86:
                                                                                                                                                                                                                                                                  _loc56_ = param1.prt;
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                                                     if(_loc58_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc25_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                                                        if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this._professionalTraits[_loc25_.cpt] = new ConfigProfessionalTraitDTO(_loc25_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr0fdb:
                                                                                                                                                                                                                                                                        if(_loc57_ || Boolean(this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr0feb);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1334);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1332);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break loop0;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1286);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1214);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr12cb);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1336);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1084);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc57_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr11bf:
                                                                                                                                                                                                                                                   if(_loc57_ || Boolean(param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr11cf);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr129d);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1334);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr126c);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0cf8);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr10b2);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr0ece:
                                                                                                                                                                                                                                    this._upcomingEvents = new Vector.<ConfigUpcomingEventDTO>(0);
                                                                                                                                                                                                                                    if(!_loc58_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                       if(!(_loc58_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc55_ = §§pop();
                                                                                                                                                                                                                                          if(_loc57_ || Boolean(this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr0f08);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1334);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0f7e);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr108c);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0d99);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr11b7);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop24:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc23_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                                                 if(_loc23_.y == ServerEventTypeConst.SALE)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc58_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this._runningEvents.push(new ConfigEventSaleDTO(_loc23_));
                                                                                                                                                                                                                                       if(_loc57_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this._runningEvents.push(new ConfigEventDTO(_loc23_));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                                                                                    if(!(_loc57_ || Boolean(this)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop24;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop24;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                 addr0e9b:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc58_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0eb6:
                                                                                                                                                                                                                                 if(_loc57_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr0ece);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1124:
                                                                                                                                                                                                                                    this._version = param1.v;
                                                                                                                                                                                                                                    if(_loc57_ || Boolean(this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr113b);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1336);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1286);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr107c);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr106a);
                                                                                                                                                                                                                           addr0eac:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0f5f);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0f7e);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0c47);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1152);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr11bf);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc58_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr111c:
                                                                                                                                                                                                            if(_loc57_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1124);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr12da);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1224);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      do
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc21_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                                                            _loc48_ = new ConfigBoosterDTO(_loc21_);
                                                                                                                                                                                                            if(_loc57_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this._improvementBoosterPacks[_loc48_.id] = _loc48_;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0d52:
                                                                                                                                                                                                            if(_loc57_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this._balanceParameters = new Dictionary();
                                                                                                                                                                                                                  if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                     if(_loc57_ || Boolean(param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr0d91);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr10ba);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr0e2e:
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(_loc57_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0e36:
                                                                                                                                                                                                                     _loc55_ = §§pop();
                                                                                                                                                                                                                     if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0e46:
                                                                                                                                                                                                                        _loc56_ = param1.re;
                                                                                                                                                                                                                        §§goto(addr0e9b);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr111c);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr12dc);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr129d);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0f86);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0fdb);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(§§push(§§hasnext(_loc56_,_loc55_)), _loc57_);
                                                                                                                                                                                                      
                                                                                                                                                                                                      §§goto(addr132e);
                                                                                                                                                                                                      addr0d40:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr12e4);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0d91);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0b9f);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0f76);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr11bf);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0d52);
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop36;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr111c);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0d91);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0f67);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0c47);
                                                                                                                                                                  }
                                                                                                                                                                  addr06ee:
                                                                                                                                                                  _loc55_ = §§pop();
                                                                                                                                                                  if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                                                                                  {
                                                                                                                                                                     addr06fe:
                                                                                                                                                                     _loc56_ = param1.go;
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                        if(!(_loc58_ && Boolean(param1)))
                                                                                                                                                                        {
                                                                                                                                                                           break loop2;
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0eac);
                                                                                                                                                                     addr073e:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0f5f);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr11ed);
                                                                                                                                                            }
                                                                                                                                                            addr0e0c:
                                                                                                                                                            this._runningEvents = new Vector.<ConfigEventDTO>(0);
                                                                                                                                                            if(_loc57_ || Boolean(_loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0e2e);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr128e);
                                                                                                                                                         }
                                                                                                                                                         addr094b:
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!_loc58_)
                                                                                                                                                         {
                                                                                                                                                            addr095f:
                                                                                                                                                            _loc55_ = §§pop();
                                                                                                                                                            if(!_loc58_)
                                                                                                                                                            {
                                                                                                                                                               _loc56_ = param1.gr;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                                                  if(!(_loc57_ || Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     break loop0;
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     _loc15_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                                     _loc43_ = new ConfigGroundRestrictionDTO(_loc15_);
                                                                                                                                                                     if(_loc57_)
                                                                                                                                                                     {
                                                                                                                                                                        this._restrictions[_loc43_.id] = _loc43_;
                                                                                                                                                                     }
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc58_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     addr09c1:
                                                                                                                                                                     if(!_loc58_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr09c9);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0bc6);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1332);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0f5f);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0e36);
                                                                                                                                                      }
                                                                                                                                                      addr0934:
                                                                                                                                                      this._restrictions = new Dictionary();
                                                                                                                                                      if(_loc57_ || Boolean(param1))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr094b);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0e0c);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0c5f);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0eb6);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0d40);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0b8f);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1162);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr09d1);
                                                                                                                           }
                                                                                                                           §§goto(addr06fe);
                                                                                                                        }
                                                                                                                        §§goto(addr0eb6);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           if(_loc57_)
                                                                                                                           {
                                                                                                                              addr0df4:
                                                                                                                              if(_loc57_)
                                                                                                                              {
                                                                                                                                 addr0dfc:
                                                                                                                                 if(_loc57_ || Boolean(_loc2_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr0e0c);
                                                                                                                                 }
                                                                                                                                 §§goto(addr12cb);
                                                                                                                              }
                                                                                                                              §§goto(addr0f5f);
                                                                                                                           }
                                                                                                                           §§goto(addr0eb6);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc22_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                           _loc49_ = new ConfigBalanceDTO(_loc22_);
                                                                                                                           if(!(_loc58_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              this._balanceParameters[_loc49_.key] = _loc49_;
                                                                                                                           }
                                                                                                                           §§goto(addr0dd9);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  §§goto(addr116a);
                                                                                                               }
                                                                                                               §§goto(addr12dc);
                                                                                                            }
                                                                                                            §§goto(addr108c);
                                                                                                         }
                                                                                                         §§goto(addr129d);
                                                                                                      }
                                                                                                      §§goto(addr0d99);
                                                                                                   }
                                                                                                   if(!(_loc58_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      if(_loc57_)
                                                                                                      {
                                                                                                         addr0822:
                                                                                                         this._paymentPacks = new Dictionary();
                                                                                                         if(_loc57_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc57_)
                                                                                                            {
                                                                                                               _loc55_ = §§pop();
                                                                                                               if(!_loc58_)
                                                                                                               {
                                                                                                                  _loc56_ = param1.pp;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                     if(_loc58_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        _loc13_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                        _loc41_ = new ConfigPaymentPackDTO(_loc13_);
                                                                                                                        if(!_loc58_)
                                                                                                                        {
                                                                                                                           this._paymentPacks[_loc41_.id] = _loc41_;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!_loc58_)
                                                                                                                     {
                                                                                                                        if(!_loc58_)
                                                                                                                        {
                                                                                                                           if(!_loc58_)
                                                                                                                           {
                                                                                                                              this._permissions = new Dictionary();
                                                                                                                              if(_loc57_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 addr08b2:
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc57_)
                                                                                                                                 {
                                                                                                                                    _loc55_ = §§pop();
                                                                                                                                    if(_loc57_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       _loc56_ = param1.pr;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                          if(!(_loc58_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                _loc14_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                                _loc42_ = new ConfigPlayfieldItemPermissionDTO(_loc14_);
                                                                                                                                                if(!_loc58_)
                                                                                                                                                {
                                                                                                                                                   this._permissions[_loc42_.id] = _loc42_;
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc57_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                if(!_loc58_)
                                                                                                                                                {
                                                                                                                                                   addr092c:
                                                                                                                                                   if(!_loc58_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0934);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0f67);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1286);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0c20);
                                                                                                                                          }
                                                                                                                                          §§goto(addr106a);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr092c);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0b15);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0ce8);
                                                                                                                        }
                                                                                                                        §§goto(addr11bf);
                                                                                                                     }
                                                                                                                     §§goto(addr0d52);
                                                                                                                  }
                                                                                                                  §§goto(addr0d40);
                                                                                                               }
                                                                                                               §§goto(addr0e46);
                                                                                                            }
                                                                                                            §§goto(addr0cf8);
                                                                                                         }
                                                                                                         §§goto(addr100a);
                                                                                                      }
                                                                                                      §§goto(addr094b);
                                                                                                   }
                                                                                                   §§goto(addr0dfc);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!(_loc58_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         if(_loc57_)
                                                                                                         {
                                                                                                            if(_loc57_)
                                                                                                            {
                                                                                                               this._tags = new Dictionary();
                                                                                                               if(!_loc58_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(_loc57_)
                                                                                                                  {
                                                                                                                     _loc55_ = §§pop();
                                                                                                                     if(!(_loc58_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        _loc56_ = param1.t;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                           if(_loc58_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              _loc10_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                              _loc38_ = new ConfigTagDTO(_loc10_);
                                                                                                                              if(_loc57_ || Boolean(_loc2_))
                                                                                                                              {
                                                                                                                                 this._tags[_loc38_.tagId] = _loc38_;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!_loc58_)
                                                                                                                           {
                                                                                                                              if(_loc57_ || Boolean(_loc2_))
                                                                                                                              {
                                                                                                                                 if(!_loc58_)
                                                                                                                                 {
                                                                                                                                    this._goods = new Dictionary();
                                                                                                                                    if(_loc57_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc58_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          §§goto(addr06ee);
                                                                                                                                       }
                                                                                                                                       §§goto(addr10ba);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0ce8);
                                                                                                                                 }
                                                                                                                                 §§goto(addr128e);
                                                                                                                              }
                                                                                                                              addr07b0:
                                                                                                                              _loc56_ = param1.q;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§hasnext(_loc56_,_loc55_));
                                                                                                                                 if(!(_loc57_ || Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    break loop0;
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    _loc12_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                                                    _loc40_ = new ConfigQuestDTO(_loc12_);
                                                                                                                                    if(!_loc58_)
                                                                                                                                    {
                                                                                                                                       this._quests[_loc40_.id] = _loc40_;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!(_loc58_ && Boolean(param1)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr080a);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0b87);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0c20);
                                                                                                                        }
                                                                                                                        §§goto(addr0eac);
                                                                                                                     }
                                                                                                                     §§goto(addr1224);
                                                                                                                  }
                                                                                                                  §§goto(addr0cf8);
                                                                                                               }
                                                                                                               §§goto(addr11ed);
                                                                                                            }
                                                                                                            §§goto(addr0822);
                                                                                                         }
                                                                                                         §§goto(addr12e4);
                                                                                                      }
                                                                                                      §§goto(addr0df4);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc9_ = §§nextvalue(_loc55_,_loc56_);
                                                                                                      _loc37_ = new ConfigResourceDTO(_loc9_);
                                                                                                      if(!(_loc58_ && Boolean(this)))
                                                                                                      {
                                                                                                         this._resources[_loc37_.id] = _loc37_;
                                                                                                         if(!_loc58_)
                                                                                                         {
                                                                                                            this._resourceIds[_loc37_.type] = _loc37_.id;
                                                                                                            if(_loc57_)
                                                                                                            {
                                                                                                               addr0603:
                                                                                                               this._resourceStrings[_loc37_.id] = _loc37_.type;
                                                                                                            }
                                                                                                            §§goto(addr0612);
                                                                                                         }
                                                                                                         §§goto(addr0603);
                                                                                                      }
                                                                                                      §§goto(addr0612);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0bc6);
                                                                                          }
                                                                                          §§goto(addr04da);
                                                                                       }
                                                                                       §§goto(addr09d1);
                                                                                    }
                                                                                    §§goto(addr08b2);
                                                                                 }
                                                                                 §§goto(addr11bf);
                                                                              }
                                                                              §§goto(addr107c);
                                                                           }
                                                                           §§goto(addr106a);
                                                                        }
                                                                     }
                                                                     §§goto(addr03bf);
                                                                  }
                                                                  §§goto(addr0a7c);
                                                               }
                                                               §§goto(addr12cb);
                                                            }
                                                            §§goto(addr11ed);
                                                         }
                                                         §§goto(addr0b8f);
                                                      }
                                                      §§goto(addr0409);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc58_ && Boolean(_loc2_)))
                                                         {
                                                            if(!(_loc58_ && Boolean(param1)))
                                                            {
                                                               if(_loc57_)
                                                               {
                                                                  this._quests = new Dictionary();
                                                                  if(_loc57_ || Boolean(param1))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc57_ || Boolean(_loc2_))
                                                                     {
                                                                        _loc55_ = §§pop();
                                                                        if(_loc57_ || Boolean(param1))
                                                                        {
                                                                           §§goto(addr07b0);
                                                                        }
                                                                        §§goto(addr1084);
                                                                     }
                                                                     §§goto(addr095f);
                                                                  }
                                                                  §§goto(addr09e8);
                                                               }
                                                               §§goto(addr11cf);
                                                            }
                                                            §§goto(addr1286);
                                                         }
                                                         §§goto(addr09c1);
                                                      }
                                                      else
                                                      {
                                                         _loc11_ = §§nextvalue(_loc55_,_loc56_);
                                                         _loc39_ = ConfigFactory.buildConfigGoodDTO(_loc11_,this._tags,this._levels);
                                                         if(!_loc58_)
                                                         {
                                                            this._goods[_loc39_.id] = _loc39_;
                                                         }
                                                         §§goto(addr073e);
                                                      }
                                                   }
                                                }
                                                §§goto(addr0d00);
                                             }
                                             §§goto(addr0b15);
                                          }
                                          §§goto(addr0822);
                                       }
                                       §§goto(addr1124);
                                    }
                                    §§goto(addr0c28);
                                 }
                                 §§goto(addr0f4f);
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc57_)
                                    {
                                       §§goto(addr1114);
                                    }
                                    §§goto(addr1276);
                                 }
                                 else
                                 {
                                    _loc27_ = §§nextvalue(_loc55_,_loc56_);
                                    _loc51_ = new ConfigImprovementDTO(_loc27_);
                                    if(_loc57_)
                                    {
                                       this._cityImprovements[_loc51_.id] = _loc51_;
                                    }
                                    §§goto(addr10f9);
                                 }
                              }
                              §§goto(addr126c);
                           }
                           §§goto(addr1286);
                        }
                        §§goto(addr0438);
                     }
                     §§goto(addr094b);
                  }
                  §§goto(addr09e8);
               }
               §§goto(addr092c);
            }
            §§goto(addr0ade);
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc57_)
               {
                  §§goto(addr11b7);
               }
               §§goto(addr1276);
            }
            else
            {
               _loc28_ = §§nextvalue(_loc55_,_loc56_);
               if(_loc57_ || Boolean(param1))
               {
                  this._features[_loc28_.type] = new ConfigFeatureDTO(_loc28_);
               }
               §§goto(addr11a4);
            }
         }
         §§goto(addr126c);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._playfields = param1;
         }
      }
      
      public function get playfieldlayers() : Dictionary
      {
         return this._playfieldlayers;
      }
      
      public function set playfieldlayers(param1:Dictionary) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._playfieldlayers = param1;
         }
      }
      
      public function get playfieldtypes() : Dictionary
      {
         return this._playfieldtypes;
      }
      
      public function set playfieldtypes(param1:Dictionary) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._playfieldtypes = param1;
         }
      }
      
      public function get levels() : Dictionary
      {
         return this._levels;
      }
      
      public function set levels(param1:Dictionary) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._levels = param1;
         }
      }
      
      public function get resources() : Dictionary
      {
         return this._resources;
      }
      
      public function set resources(param1:Dictionary) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._resources = param1;
         }
      }
      
      public function get goods() : Dictionary
      {
         return this._goods;
      }
      
      public function set goods(param1:Dictionary) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._goods = param1;
         }
      }
      
      public function get quests() : Dictionary
      {
         return this._quests;
      }
      
      public function set quests(param1:Dictionary) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._quests = param1;
         }
      }
      
      public function get items() : Dictionary
      {
         return this._items;
      }
      
      public function set items(param1:Dictionary) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._items = param1;
         }
      }
      
      public function getItemsByGfxId(param1:Number) : Vector.<ConfigPlayfieldItemDTO>
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         for each(_loc3_ in this._items)
         {
            if(!_loc7_)
            {
               if(_loc3_.gfxId == param1)
               {
                  if(_loc6_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._resourceIds = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._runningEvents = param1;
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._upcomingEvents = param1;
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._assists = param1;
         }
      }
   }
}

