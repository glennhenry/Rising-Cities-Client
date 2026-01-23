package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.errors.IllegalOperationError;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentVo;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.util.RandomUtilities;
   
   public class ConfigPlayfieldItemDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _gfxId:Number;
      
      private var _buildMode:Number;
      
      private var _itemType:Number;
      
      private var _preload:Boolean;
      
      private var _levelId:Number;
      
      private var _sellable:Boolean;
      
      private var _buyable:Boolean;
      
      private var _giftable:Boolean;
      
      private var _walkable:Boolean;
      
      private var _driveable:Boolean;
      
      private var _moveable:Boolean;
      
      private var _destroyable:Boolean;
      
      private var _sizeX:Number;
      
      private var _sizeY:Number;
      
      private var _zLevels:Vector.<Number>;
      
      private var _constructionPhases:Vector.<ConfigPhaseDTO>;
      
      private var _activePhases:Vector.<ConfigPhaseDTO>;
      
      private var _globalBuffs:Vector.<ConfigOutputDTO>;
      
      private var _upgradeConfig:ConfigUpgradeVo;
      
      private var _needShopConfigs:Vector.<ConfigNeedDTO>;
      
      private var _destructionPhases:Vector.<ConfigPhaseDTO>;
      
      private var _animatedSwfName:String;
      
      private var _animatedSwfPath:String;
      
      private var _unlockLevel:Number;
      
      private var _upgradeable:Boolean;
      
      private var _maxHarvestCount:int;
      
      private var _nextConfigId:Number;
      
      private var _permissionConfigId:Number;
      
      private var _permissionConfig:ConfigPlayfieldItemPermissionDTO;
      
      private var _playfieldRestrictions:Vector.<ConfigPlayfieldItemPlayfieldRestrictionDTO>;
      
      private var _needRequireConfigs:Vector.<ConfigNeedRequireDTO>;
      
      private var _tagIds:Vector.<Number>;
      
      private var _localeId:String;
      
      private var _specialHighlighting:Boolean;
      
      private var _isPremium:Boolean;
      
      private var _maxResidents:Number;
      
      private var _residents:Vector.<ResidentVo>;
      
      private var _configSecurityGrades:Vector.<ConfigSecurityGradeDTO>;
      
      private var _maxProfessionalAmount:int;
      
      private var _isUpgrade:Boolean = false;
      
      private var _upgradeLevel:int = -1;
      
      private var _virtualObjectOverride:String;
      
      private var _educationSteps:Vector.<ConfigEducationStepDTO>;
      
      private var _tags:Vector.<String>;
      
      private var _educationBasicTime:uint;
      
      private var _configInventoryBagId:int;
      
      private var _improvementSlots:Vector.<ConfigPlayfieldItemImprovementSlotDTO>;
      
      private var _configMasteryChallengeDTO:ConfigMasteryChallengeDTO;
      
      private var _mysteryOutputPossiblities:Vector.<ConfigOutputDTO>;
      
      public function ConfigPlayfieldItemDTO(param1:Object = null)
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Number = NaN;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         if(!(_loc18_ && Boolean(param1)))
         {
            super();
            if(_loc17_)
            {
               if(param1 == null)
               {
                  if(_loc17_)
                  {
                     return;
                  }
               }
               else
               {
                  this._id = param1.id;
                  if(_loc17_)
                  {
                     this._gfxId = param1.gf;
                     if(!(_loc18_ && Boolean(this)))
                     {
                        this._buildMode = param1.bm;
                        if(!(_loc18_ && Boolean(this)))
                        {
                           addr00c0:
                           this._itemType = param1.it;
                           if(!(_loc18_ && Boolean(param1)))
                           {
                              this._preload = param1.fp;
                              if(!(_loc18_ && Boolean(param1)))
                              {
                                 addr00ef:
                                 this._levelId = param1.l;
                                 if(_loc17_ || Boolean(param1))
                                 {
                                    this._sellable = param1.s;
                                    if(!_loc18_)
                                    {
                                       addr0115:
                                       this._buyable = param1.b;
                                       if(_loc17_)
                                       {
                                          this._giftable = param1.g;
                                          if(!_loc18_)
                                          {
                                             this._moveable = param1.m;
                                             if(_loc17_ || Boolean(_loc2_))
                                             {
                                                addr014a:
                                                this._localeId = param1.fl;
                                                if(_loc17_)
                                                {
                                                   addr0159:
                                                   this._maxHarvestCount = param1.upc;
                                                   if(_loc17_ || Boolean(_loc2_))
                                                   {
                                                      addr0171:
                                                      this._nextConfigId = param1.uic;
                                                      if(!(_loc18_ && Boolean(_loc2_)))
                                                      {
                                                         this._upgradeable = param1.up;
                                                         if(!(_loc18_ && Boolean(_loc2_)))
                                                         {
                                                            addr019f:
                                                            this._destroyable = param1.d;
                                                            if(!_loc18_)
                                                            {
                                                               this._walkable = param1.w;
                                                               if(!_loc18_)
                                                               {
                                                                  addr01bd:
                                                                  this._driveable = param1.dr;
                                                                  if(!(_loc18_ && Boolean(param1)))
                                                                  {
                                                                     addr01d4:
                                                                     this._sizeX = param1.x;
                                                                     if(!(_loc18_ && Boolean(this)))
                                                                     {
                                                                        addr01eb:
                                                                        this._sizeY = param1.y;
                                                                        if(!(_loc18_ && Boolean(_loc2_)))
                                                                        {
                                                                           addr0202:
                                                                           this._permissionConfigId = param1.cpi;
                                                                           if(_loc17_)
                                                                           {
                                                                              this._maxProfessionalAmount = param1.ps;
                                                                              if(!_loc18_)
                                                                              {
                                                                                 addr0222:
                                                                                 this._configSecurityGrades = new Vector.<ConfigSecurityGradeDTO>();
                                                                              }
                                                                              addr0230:
                                                                              var _loc15_:* = 0;
                                                                              var _loc16_:* = param1.csg;
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc16_,_loc15_));
                                                                                 if(!(_loc17_ || Boolean(param1)))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc2_ = §§nextvalue(_loc15_,_loc16_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       this._configSecurityGrades.push(new ConfigSecurityGradeDTO(_loc2_));
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc17_ || Boolean(param1))
                                                                                 {
                                                                                    if(_loc17_ || Boolean(_loc2_))
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          this._zLevels = new Vector.<Number>();
                                                                                          if(!(_loc18_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc17_ || Boolean(_loc2_))
                                                                                             {
                                                                                                _loc15_ = §§pop();
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   _loc16_ = param1.z;
                                                                                                   if(!(_loc18_ && Boolean(param1)))
                                                                                                   {
                                                                                                      loop1:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(!(_loc18_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     this._constructionPhases = new Vector.<ConfigPhaseDTO>();
                                                                                                                     if(!(_loc18_ && Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        if(param1.cph != null)
                                                                                                                        {
                                                                                                                           if(!(_loc18_ && Boolean(param1)))
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    addr0373:
                                                                                                                                    _loc16_ = param1.cph;
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          _loc4_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             this._constructionPhases.push(new ConfigPhaseDTO(_loc4_));
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             addr03ba:
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                addr03c2:
                                                                                                                                                this._activePhases = new Vector.<ConfigPhaseDTO>();
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   if(param1.aph != null)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!(_loc18_ && Boolean(_loc3_)))
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               _loc16_ = param1.aph;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                                                        if(_loc17_ || Boolean(_loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           this._activePhases.push(new ConfigPhaseDTO(_loc5_));
                                                                                                                                                                        }
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc17_ || Boolean(_loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc17_ || Boolean(param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr0475:
                                                                                                                                                                              this._destructionPhases = new Vector.<ConfigPhaseDTO>();
                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0489:
                                                                                                                                                                                 if(param1.dph != null)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc17_ || Boolean(_loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr04a1:
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                          if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc16_ = param1.dph;
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop0;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0a83);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr04ed:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr0889:
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0891:
                                                                                                                                                                                             this._educationBasicTime = param1.et;
                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr08a1:
                                                                                                                                                                                                this._configInventoryBagId = param1.cibi;
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr08b1:
                                                                                                                                                                                                   this._improvementSlots = new Vector.<ConfigPlayfieldItemImprovementSlotDTO>();
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(param1.sl)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr08d4:
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr08e4:
                                                                                                                                                                                                                  _loc16_ = param1.sl;
                                                                                                                                                                                                                  loop4:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop14:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc12_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this._improvementSlots.push(new ConfigPlayfieldItemImprovementSlotDTO(_loc12_));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc17_ || Boolean(_loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr092b:
                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0933:
                                                                                                                                                                                                                                 if(_loc17_ || Boolean(this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0943:
                                                                                                                                                                                                                                    this._improvementSlots.sort(this.sortOrder);
                                                                                                                                                                                                                                    if(_loc17_ || Boolean(_loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr095e:
                                                                                                                                                                                                                                       this._playfieldRestrictions = new Vector.<ConfigPlayfieldItemPlayfieldRestrictionDTO>();
                                                                                                                                                                                                                                       if(_loc17_ || Boolean(_loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr097a:
                                                                                                                                                                                                                                          if(param1.cpr)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0989:
                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0991:
                                                                                                                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                                                                                                                   if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr09a1:
                                                                                                                                                                                                                                                      _loc16_ = param1.cpr;
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop14;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr0a83:
                                                                                                                                                                                                                                                      addr0a89:
                                                                                                                                                                                                                                                      loop6:
                                                                                                                                                                                                                                                      while(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc14_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this._mysteryOutputPossiblities.push(new ConfigOutputDTO(_loc14_));
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                      addr09cd:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr0a56:
                                                                                                                                                                                                                                                   _loc16_ = param1.myst;
                                                                                                                                                                                                                                                   §§goto(addr0a80);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr0a42:
                                                                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr0a56);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0a89);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr09f0:
                                                                                                                                                                                                                                       if(param1.ma)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr09ff:
                                                                                                                                                                                                                                             this._configMasteryChallengeDTO = new ConfigMasteryChallengeDTO(param1.ma);
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0a16:
                                                                                                                                                                                                                                                this._mysteryOutputPossiblities = new Vector.<ConfigOutputDTO>();
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0a29:
                                                                                                                                                                                                                                                   if(param1.myst)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc18_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr0a40:
                                                                                                                                                                                                                                                         §§goto(addr0a42);
                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0a89);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0a40);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0a29);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0a16);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0a40);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr09a1);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0a89);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr0919:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop1;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0a56);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0991);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0a29);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr095e);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0a40);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0a16);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr08d4);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr097a);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr0771:
                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                       if(!(_loc18_ && Boolean(param1)))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0781:
                                                                                                                                                                                          _loc16_ = param1.tag;
                                                                                                                                                                                          if(_loc17_ || Boolean(_loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                if(_loc18_ && Boolean(_loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr07d6:
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr07de:
                                                                                                                                                                                                            this._maxResidents = this.getMaxResidents();
                                                                                                                                                                                                            if(!(_loc18_ && Boolean(param1)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(param1.edc)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this._educationSteps = new Vector.<ConfigEducationStepDTO>();
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        if(!(_loc18_ && Boolean(_loc3_)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr082a:
                                                                                                                                                                                                                           _loc15_ = §§pop();
                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc16_ = param1.edc;
                                                                                                                                                                                                                              loop9:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc11_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                                                                                                                          if(_loc17_ || Boolean(param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this._educationSteps.push(new ConfigEducationStepDTO(_loc11_));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop9;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0879:
                                                                                                                                                                                                                                          if(!(_loc18_ && Boolean(param1)))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr0889);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0933);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0a89);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr086f:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0a83);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0889);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0991);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr097a);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0989);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0891);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr095e);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr08d4);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0889);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr092b);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc10_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0919);
                                                                                                                                                                                             addr07b3:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this._tagIds.push(_loc10_);
                                                                                                                                                                                             §§goto(addr07b3);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0a89);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr0539:
                                                                                                                                                                                    if(param1.gbu != null)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(_loc17_ || Boolean(param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0559:
                                                                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                                                                             if(_loc17_ || Boolean(param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc16_ = param1.gbu;
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop18;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0a83);
                                                                                                                                                                                                addr0594:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0a89);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0771);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr095e);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr05bf:
                                                                                                                                                                                    this._upgradeConfig = new ConfigUpgradeVo(param1.ug);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr05d5:
                                                                                                                                                                                       this._needShopConfigs = new Vector.<ConfigNeedDTO>();
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(param1.nd != null)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc17_ || Boolean(this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0601:
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0619:
                                                                                                                                                                                                      _loc16_ = param1.nd;
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                         if(_loc18_ && Boolean(_loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop1;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc8_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this._needShopConfigs.push(new ConfigNeedDTO(_loc8_));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0668:
                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0670:
                                                                                                                                                                                                                  this._needRequireConfigs = new Vector.<ConfigNeedRequireDTO>();
                                                                                                                                                                                                                  if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(param1.nq != null)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc18_ && Boolean(param1)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr06a4:
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr06ac:
                                                                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                                                                              if(_loc17_ || Boolean(param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc16_ = param1.nq;
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                                                    if(_loc18_ && Boolean(this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop1;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc9_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this._needRequireConfigs.push(new ConfigNeedRequireDTO(_loc9_));
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0703:
                                                                                                                                                                                                                                       if(_loc17_ || Boolean(_loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc17_ || Boolean(_loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr0723:
                                                                                                                                                                                                                                             this._tags = new Vector.<String>();
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this._tagIds = new Vector.<Number>();
                                                                                                                                                                                                                                                if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0751:
                                                                                                                                                                                                                                                   if(param1.tag != null)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr0769:
                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr0771);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0a42);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr095e);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr07de);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr09f0);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr08a1);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr08b1);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0a56);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0a89);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr07d6);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr082a);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0a16);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0723);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr06a4);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr08b1);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0781);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr092b);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0668);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr06ac);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr09f0);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0670);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr095e);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr08d4);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr0525:
                                                                                                                                                                                 this._globalBuffs = new Vector.<ConfigOutputDTO>();
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr0539);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr06a4);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0943);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0601);
                                                                                                                                                                        }
                                                                                                                                                                        addr051d:
                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr0525);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr05d5);
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc18_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr051d);
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr05bf);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr095e);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr086f);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0619);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0771);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr09ff);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0475);
                                                                                                                                                }
                                                                                                                                                §§goto(addr08d4);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0769);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0933);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0879);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr05b7);
                                                                                                                                             }
                                                                                                                                             §§goto(addr08e4);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0703);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             this._globalBuffs.push(new ConfigOutputDTO(_loc7_));
                                                                                                                                          }
                                                                                                                                          §§goto(addr0594);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0933);
                                                                                                                              }
                                                                                                                              §§goto(addr0559);
                                                                                                                           }
                                                                                                                           §§goto(addr05d5);
                                                                                                                        }
                                                                                                                        §§goto(addr03c2);
                                                                                                                     }
                                                                                                                     §§goto(addr04a1);
                                                                                                                  }
                                                                                                                  §§goto(addr0751);
                                                                                                               }
                                                                                                               §§goto(addr03ba);
                                                                                                            }
                                                                                                            §§goto(addr0879);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc3_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                            if(_loc18_ && Boolean(param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§goto(addr09f0);
                                                                                                                  }
                                                                                                                  §§goto(addr0a16);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0a89);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc13_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               this._playfieldRestrictions.push(new ConfigPlayfieldItemPlayfieldRestrictionDTO(_loc13_));
                                                                                                            }
                                                                                                            §§goto(addr09cd);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0a83);
                                                                                                      addr0304:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this._zLevels.push(_loc3_);
                                                                                                      §§goto(addr0304);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0373);
                                                                                             }
                                                                                             §§goto(addr0991);
                                                                                          }
                                                                                          §§goto(addr0489);
                                                                                       }
                                                                                       §§goto(addr0601);
                                                                                    }
                                                                                    §§goto(addr0889);
                                                                                 }
                                                                                 §§goto(addr0500);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§goto(addr0500);
                                                                                    }
                                                                                    §§goto(addr0879);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc6_ = §§nextvalue(_loc15_,_loc16_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       this._destructionPhases.push(new ConfigPhaseDTO(_loc6_));
                                                                                    }
                                                                                    §§goto(addr04ed);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0a83);
                                                                           }
                                                                           §§goto(addr0222);
                                                                        }
                                                                        §§goto(addr0230);
                                                                     }
                                                                  }
                                                                  §§goto(addr0222);
                                                               }
                                                               §§goto(addr01d4);
                                                            }
                                                            §§goto(addr01eb);
                                                         }
                                                         §§goto(addr0222);
                                                      }
                                                      §§goto(addr01bd);
                                                   }
                                                   §§goto(addr019f);
                                                }
                                                §§goto(addr01d4);
                                             }
                                             §§goto(addr0171);
                                          }
                                          §§goto(addr0222);
                                       }
                                       §§goto(addr0159);
                                    }
                                    §§goto(addr014a);
                                 }
                                 §§goto(addr0222);
                              }
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr0230);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr0202);
               }
               §§goto(addr0222);
            }
            §§goto(addr00ef);
         }
         §§goto(addr0222);
      }
      
      private function getMaxResidents() : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Vector.<ConfigPhaseDTO> = this.getAllPhasesByType(ServerPhaseTypes.RESIDENT);
         if(_loc2_ || _loc2_)
         {
            §§push(_loc1_ == null);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0061:
                        §§pop();
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr00a9);
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0061);
            }
            addr0075:
            if(_loc1_.length > 0)
            {
               if(!_loc3_)
               {
                  addr008a:
                  if(_loc1_[0].listEntryOutputs[0])
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr00a9:
                        return _loc1_[0].listEntryOutputs[0].outputAmount;
                     }
                  }
               }
            }
            return 0;
         }
         §§goto(addr008a);
      }
      
      private function sortOrder(param1:ConfigPlayfieldItemImprovementSlotDTO, param2:ConfigPlayfieldItemImprovementSlotDTO) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(param1.orderId);
            if(_loc4_)
            {
               §§push(param2.orderId);
               if(_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(1);
                        if(!(_loc3_ && _loc3_))
                        {
                           return §§pop();
                        }
                        addr0082:
                        addr0086:
                        if(§§pop() < param2.orderId)
                        {
                           if(!_loc3_)
                           {
                              addr008f:
                              §§push(-1);
                              if(!(_loc3_ && Boolean(param2)))
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr009f:
                              §§push(0);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr008f);
                  }
                  else
                  {
                     addr0062:
                     §§push(param1.orderId);
                     if(_loc4_ || Boolean(param2))
                     {
                        §§goto(addr0082);
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0086);
            }
            addr00a1:
            return §§pop();
         }
         §§goto(addr0062);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._id = param1;
         }
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._gfxId = param1;
         }
      }
      
      public function get itemType() : Number
      {
         throw new IllegalOperationError("Deprecated use class or tags instead");
      }
      
      public function set itemType(param1:Number) : void
      {
         throw new IllegalOperationError("Deprecated use class or tags instead");
      }
      
      public function get preload() : Boolean
      {
         return this._preload;
      }
      
      public function set preload(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._preload = param1;
         }
      }
      
      public function get buildMode() : Number
      {
         return this._buildMode;
      }
      
      public function set buildMode(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._buildMode = param1;
         }
      }
      
      public function get levelId() : Number
      {
         return this._levelId;
      }
      
      public function set levelId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._levelId = param1;
         }
      }
      
      public function get sellable() : Boolean
      {
         return this._sellable;
      }
      
      public function set sellable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._sellable = param1;
         }
      }
      
      public function get buyable() : Boolean
      {
         return this._buyable;
      }
      
      public function set buyable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._buyable = param1;
         }
      }
      
      public function get giftable() : Boolean
      {
         return this._giftable;
      }
      
      public function set giftable(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._giftable = param1;
         }
      }
      
      public function get moveable() : Boolean
      {
         return this._moveable;
      }
      
      public function set moveable(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._moveable = param1;
         }
      }
      
      public function get destroyable() : Boolean
      {
         return this._destroyable;
      }
      
      public function set destroyable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._destroyable = param1;
         }
      }
      
      public function get walkable() : Boolean
      {
         return this._walkable;
      }
      
      public function set walkable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._walkable = param1;
         }
      }
      
      public function get driveable() : Boolean
      {
         return this._driveable;
      }
      
      public function set driveable(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._driveable = param1;
         }
      }
      
      public function get sizeX() : Number
      {
         return this._sizeX;
      }
      
      public function set sizeX(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._sizeX = param1;
         }
      }
      
      public function get sizeY() : Number
      {
         return this._sizeY;
      }
      
      public function set sizeY(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._sizeY = param1;
         }
      }
      
      public function get zLevels() : Vector.<Number>
      {
         return this._zLevels;
      }
      
      public function set zLevels(param1:Vector.<Number>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._zLevels = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get destructionPhases() : Vector.<ConfigPhaseDTO>
      {
         return this._destructionPhases;
      }
      
      public function get needShopConfigs() : Vector.<ConfigNeedDTO>
      {
         return this._needShopConfigs;
      }
      
      public function get upgradeConfig() : ConfigUpgradeVo
      {
         return this._upgradeConfig;
      }
      
      public function get globalBuffs() : Vector.<ConfigOutputDTO>
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:Boolean = false;
         var _loc6_:ConfigOutputDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:* = false;
         var _loc9_:ConfigOutputDTO = null;
         var _loc1_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         var _loc10_:int = 0;
         var _loc11_:* = this.constructionPhases;
         while(true)
         {
            §§push(§§hasnext(_loc11_,_loc10_));
            if(_loc16_ && Boolean(_loc2_))
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc10_,_loc11_);
               if(!_loc16_)
               {
                  var _loc12_:int = 0;
                  if(!(_loc16_ && Boolean(_loc2_)))
                  {
                     loop1:
                     for each(_loc4_ in _loc2_.listEntryOutputs)
                     {
                        §§push(_loc4_.resourceConfig);
                        if(!(_loc16_ && Boolean(_loc1_)))
                        {
                           if(§§pop() == null)
                           {
                              continue;
                           }
                           if(_loc17_)
                           {
                              addr0125:
                              var _loc14_:* = _loc4_.resourceConfig.type;
                              if(!_loc16_)
                              {
                                 §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                                 if(_loc17_)
                                 {
                                    §§push(_loc14_);
                                    if(_loc17_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc17_ || Boolean(_loc2_))
                                          {
                                             addr0154:
                                             §§push(0);
                                             if(_loc17_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr0206:
                                             §§push(4);
                                             if(_loc16_ && Boolean(_loc3_))
                                             {
                                             }
                                          }
                                          addr0226:
                                          while(true)
                                          {
                                             loop9:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                case 1:
                                                case 2:
                                                case 3:
                                                case 4:
                                                   _loc5_ = false;
                                                   if(!_loc16_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(!_loc16_)
                                                         {
                                                            break;
                                                         }
                                                         break loop9;
                                                      }
                                                      for each(_loc6_ in _loc1_)
                                                      {
                                                         if(_loc6_.configId == _loc4_.configId)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               _loc5_ = true;
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      if(_loc17_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.push(_loc4_);
                                                         }
                                                      }
                                                      addr00ba:
                                                   }
                                                   continue loop1;
                                                default:
                                                   continue loop1;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                          if(!_loc16_)
                                          {
                                             §§push(_loc14_);
                                             if(!(_loc16_ && Boolean(_loc2_)))
                                             {
                                                addr017b:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc17_)
                                                   {
                                                      §§push(1);
                                                      if(_loc17_ || Boolean(_loc1_))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr01ef:
                                                      §§push(3);
                                                      if(_loc17_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc14_);
                                                      if(_loc17_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc17_ || Boolean(_loc1_))
                                                            {
                                                               §§push(2);
                                                               if(_loc17_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr01ef);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerResConst.RESOURCE_HAPPINESS_POSITIVE);
                                                            if(!(_loc16_ && Boolean(_loc1_)))
                                                            {
                                                               addr01dd:
                                                               §§push(_loc14_);
                                                               if(!_loc16_)
                                                               {
                                                                  addr01e5:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§goto(addr01ef);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0206);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0202:
                                                                     addr0200:
                                                                     if(ServerResConst.RESOURCE_POPULATION === _loc14_)
                                                                     {
                                                                        §§goto(addr0206);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(5);
                                                                     }
                                                                     §§goto(addr0226);
                                                                  }
                                                                  §§goto(addr0206);
                                                               }
                                                               §§goto(addr0202);
                                                            }
                                                            §§goto(addr0200);
                                                         }
                                                         §§goto(addr0226);
                                                      }
                                                      §§goto(addr0202);
                                                   }
                                                   §§goto(addr01dd);
                                                }
                                                §§goto(addr0226);
                                             }
                                             §§goto(addr01e5);
                                          }
                                          §§goto(addr01dd);
                                       }
                                       §§goto(addr0206);
                                    }
                                    §§goto(addr017b);
                                 }
                                 §§goto(addr0200);
                              }
                              §§goto(addr0154);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr0125);
                     }
                  }
               }
               continue;
            }
            if(!(_loc16_ && Boolean(_loc1_)))
            {
               if(!_loc16_)
               {
                  if(_loc17_ || Boolean(_loc1_))
                  {
                     _loc10_ = 0;
                     addr04ec:
                     if(_loc17_)
                     {
                        addr029b:
                        _loc11_ = this.activePhases;
                        §§push(§§hasnext(_loc11_,_loc10_));
                        break;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr029b);
            }
            §§goto(addr04ec);
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc10_,_loc11_);
            if(_loc17_)
            {
               if(_loc3_.phaseType == ServerPhaseTypes.ACTIVATION)
               {
                  if(!_loc16_)
                  {
                     _loc12_ = 0;
                     if(!_loc16_)
                     {
                        loop6:
                        for each(_loc7_ in _loc3_.listEntryOutputs)
                        {
                           §§push(_loc7_.resourceConfig);
                           if(_loc17_)
                           {
                              if(§§pop() == null)
                              {
                                 continue;
                              }
                              if(_loc16_ && Boolean(this))
                              {
                                 continue;
                              }
                              §§push(_loc7_.resourceConfig);
                           }
                           _loc14_ = §§pop().type;
                           if(_loc17_)
                           {
                              §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                              if(!(_loc16_ && Boolean(this)))
                              {
                                 §§push(_loc14_);
                                 if(!_loc16_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc16_)
                                       {
                                          §§push(0);
                                          if(_loc16_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0479:
                                          §§push(3);
                                          if(_loc16_ && Boolean(_loc2_))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                       if(!(_loc16_ && Boolean(_loc2_)))
                                       {
                                          addr03ed:
                                          §§push(_loc14_);
                                          if(_loc17_ || Boolean(_loc2_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc17_ || Boolean(_loc1_))
                                                {
                                                   §§push(1);
                                                   if(_loc17_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr04a7:
                                                   §§push(4);
                                                   if(_loc17_)
                                                   {
                                                   }
                                                }
                                                addr04bf:
                                                while(true)
                                                {
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                      case 1:
                                                      case 2:
                                                      case 3:
                                                      case 4:
                                                         §§push(0);
                                                         if(!_loc16_)
                                                         {
                                                            for each(_loc9_ in _loc1_)
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(RandomUtilities.isEqual(_loc9_,_loc7_));
                                                               if(_loc17_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc16_ && Boolean(this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(true);
                                                                     if(!(_loc16_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr035f:
                                                                        _loc8_ = §§pop();
                                                                        if(!_loc16_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(false);
                                                                  }
                                                                  _loc8_ = §§pop();
                                                                  continue;
                                                               }
                                                               §§goto(addr035f);
                                                            }
                                                            if(_loc17_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc17_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            _loc1_.push(_loc7_);
                                                            break;
                                                         }
                                                         continue;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc14_);
                                                   if(!_loc16_)
                                                   {
                                                      addr042e:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            addr0438:
                                                            §§push(2);
                                                            if(_loc16_ && Boolean(this))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr04a7);
                                                         }
                                                         §§goto(addr04bf);
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerResConst.RESOURCE_HAPPINESS_POSITIVE);
                                                         if(_loc17_ || Boolean(_loc1_))
                                                         {
                                                            addr045f:
                                                            §§push(_loc14_);
                                                            if(!_loc16_)
                                                            {
                                                               addr0467:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc17_ || Boolean(_loc2_))
                                                                  {
                                                                     §§goto(addr0479);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr04a7);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr04a3:
                                                                  addr04a1:
                                                                  if(ServerResConst.RESOURCE_POPULATION === _loc14_)
                                                                  {
                                                                     §§goto(addr04a7);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(5);
                                                                  }
                                                                  §§goto(addr04bf);
                                                               }
                                                               §§goto(addr04a7);
                                                            }
                                                            §§goto(addr04a3);
                                                         }
                                                         §§goto(addr04a1);
                                                      }
                                                   }
                                                   §§goto(addr0467);
                                                }
                                                §§goto(addr04a1);
                                             }
                                             §§goto(addr04a7);
                                          }
                                          §§goto(addr04a3);
                                       }
                                       §§goto(addr045f);
                                    }
                                    §§goto(addr04bf);
                                 }
                                 §§goto(addr042e);
                              }
                              §§goto(addr03ed);
                           }
                           §§goto(addr0438);
                        }
                     }
                  }
               }
            }
            §§push(§§hasnext(_loc11_,_loc10_));
         }
         §§goto(addr04ea);
      }
      
      public function get activePhases() : Vector.<ConfigPhaseDTO>
      {
         return this._activePhases;
      }
      
      public function getActivePhaseByOrderId(param1:int) : ConfigPhaseDTO
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._activePhases;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.phaseOrderId == param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get constructionPhases() : Vector.<ConfigPhaseDTO>
      {
         return this._constructionPhases;
      }
      
      public function getConstructionPhaseByOrderId(param1:int) : ConfigPhaseDTO
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this._constructionPhases)
         {
            if(_loc5_ || Boolean(_loc3_))
            {
               if(_loc2_.phaseOrderId == param1)
               {
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function set animatedSwfPath(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._animatedSwfPath = param1;
         }
      }
      
      public function get animatedSwfPath() : String
      {
         return this._animatedSwfPath;
      }
      
      public function get animatedSwfName() : String
      {
         return this._animatedSwfName;
      }
      
      public function set animatedSwfName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._animatedSwfName = param1;
         }
      }
      
      public function set unlockLevel(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._unlockLevel = param1;
         }
      }
      
      public function get unlockLevel() : Number
      {
         return this._unlockLevel;
      }
      
      public function getFirstPhaseByType(param1:String) : ConfigPhaseDTO
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:* = 0;
         var _loc4_:* = this._activePhases;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!_loc6_)
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(_loc6_ || Boolean(_loc2_))
               {
                  if(_loc2_.phaseType == param1)
                  {
                     if(!_loc5_)
                     {
                        return _loc2_;
                     }
                  }
               }
               continue;
            }
            if(_loc6_)
            {
               if(_loc6_)
               {
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        _loc3_ = §§pop();
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           _loc4_ = this._constructionPhases;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                              if(§§pop())
                              {
                                 _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                 if(!_loc5_)
                                 {
                                    if(_loc2_.phaseType == param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          return _loc2_;
                                       }
                                    }
                                 }
                                 continue;
                              }
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr0104);
                              }
                              §§goto(addr0153);
                           }
                        }
                        addr00eb:
                        if(_loc6_)
                        {
                           addr00f5:
                           _loc3_ = 0;
                           addr00f3:
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              addr0104:
                              _loc4_ = this._destructionPhases;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 break loop0;
                              }
                              addr0153:
                              addr014c:
                           }
                           addr0155:
                        }
                        return null;
                     }
                     §§goto(addr00f5);
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr0155);
            }
            §§goto(addr0153);
         }
         while(§§pop())
         {
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(!(_loc5_ && Boolean(this)))
            {
               if(_loc2_.phaseType == param1)
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     return _loc2_;
                  }
               }
            }
            §§goto(addr014c);
         }
         §§goto(addr0153);
      }
      
      public function getAllPhasesByType(param1:String) : Vector.<ConfigPhaseDTO>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc2_:Vector.<ConfigPhaseDTO> = new Vector.<ConfigPhaseDTO>();
         var _loc4_:* = 0;
         var _loc5_:* = this._activePhases;
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(_loc6_ && Boolean(_loc3_))
            {
               break;
            }
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc4_,_loc5_);
               if(!(_loc6_ && Boolean(param1)))
               {
                  if(_loc3_.phaseType == param1)
                  {
                     if(_loc7_)
                     {
                        _loc2_.push(_loc3_);
                     }
                  }
               }
               continue;
            }
            if(!(_loc6_ && Boolean(this)))
            {
               if(_loc7_)
               {
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           addr00bb:
                           _loc5_ = this._constructionPhases;
                           while(true)
                           {
                              §§push(§§hasnext(_loc5_,_loc4_));
                              if(!_loc7_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    if(_loc3_.phaseType == param1)
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc2_.push(_loc3_);
                                       }
                                    }
                                 }
                                 continue;
                              }
                              if(_loc7_)
                              {
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr0183);
                              }
                              §§goto(addr0181);
                           }
                           break;
                        }
                        addr0115:
                        if(_loc7_ || Boolean(param1))
                        {
                           addr0127:
                           _loc4_ = 0;
                           if(_loc7_ || Boolean(this))
                           {
                              _loc5_ = this._destructionPhases;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc5_,_loc4_));
                                 break loop2;
                              }
                              addr0181:
                              addr017a:
                           }
                           addr0183:
                        }
                        §§goto(addr0185);
                     }
                     §§goto(addr0127);
                  }
                  addr0185:
                  return _loc2_;
               }
               §§goto(addr00bb);
            }
            §§goto(addr0181);
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc4_,_loc5_);
            if(!(_loc6_ && Boolean(param1)))
            {
               if(_loc3_.phaseType == param1)
               {
                  if(!_loc6_)
                  {
                     addr0175:
                     _loc2_.push(_loc3_);
                  }
               }
               §§goto(addr017a);
            }
            §§goto(addr0175);
         }
         §§goto(addr0181);
      }
      
      public function get upgradeable() : Boolean
      {
         return this._upgradeable;
      }
      
      public function get maxHarvestCount() : int
      {
         return this._maxHarvestCount;
      }
      
      public function get permissionConfigId() : Number
      {
         return this._permissionConfigId;
      }
      
      public function get nextConfigId() : Number
      {
         return this._nextConfigId;
      }
      
      public function set nextConfigId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._nextConfigId = param1;
         }
      }
      
      public function get needRequireConfigs() : Vector.<ConfigNeedRequireDTO>
      {
         return this._needRequireConfigs;
      }
      
      public function set needRequireConfigs(param1:Vector.<ConfigNeedRequireDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._needRequireConfigs = param1;
         }
      }
      
      public function get tagIds() : Vector.<Number>
      {
         return this._tagIds;
      }
      
      public function get tags() : Vector.<String>
      {
         return this._tags;
      }
      
      public function set tags(param1:Vector.<String>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._tags = param1;
         }
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get permissionConfig() : ConfigPlayfieldItemPermissionDTO
      {
         return this._permissionConfig;
      }
      
      public function set permissionConfig(param1:ConfigPlayfieldItemPermissionDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._permissionConfig = param1;
         }
      }
      
      public function get specialHighlighting() : Boolean
      {
         return this._specialHighlighting;
      }
      
      public function set specialHighlighting(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._specialHighlighting = param1;
         }
      }
      
      public function get isPremium() : Boolean
      {
         return this._isPremium;
      }
      
      public function set isPremium(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._isPremium = param1;
         }
      }
      
      public function get maxResidents() : Number
      {
         return this._maxResidents;
      }
      
      public function get residents() : Vector.<ResidentVo>
      {
         return this._residents;
      }
      
      public function set residents(param1:Vector.<ResidentVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._residents = param1;
         }
      }
      
      public function get isUpgrade() : Boolean
      {
         return this._isUpgrade;
      }
      
      public function set isUpgrade(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._isUpgrade = param1;
         }
      }
      
      public function get configSecurityGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return this._configSecurityGrades;
      }
      
      public function get maxProfessionalAmount() : int
      {
         return this._maxProfessionalAmount;
      }
      
      public function get virtualObjectOverride() : String
      {
         return this._virtualObjectOverride;
      }
      
      public function set virtualObjectOverride(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._virtualObjectOverride = param1;
         }
      }
      
      public function get educationSteps() : Vector.<ConfigEducationStepDTO>
      {
         return this._educationSteps;
      }
      
      public function get educationBasicTime() : uint
      {
         return this._educationBasicTime;
      }
      
      public function get configInventoryBagId() : int
      {
         return this._configInventoryBagId;
      }
      
      public function get improvementSlots() : Vector.<ConfigPlayfieldItemImprovementSlotDTO>
      {
         return this._improvementSlots;
      }
      
      public function get playfieldRestrictions() : Vector.<ConfigPlayfieldItemPlayfieldRestrictionDTO>
      {
         return this._playfieldRestrictions;
      }
      
      public function get configMasteryChallengeDTO() : ConfigMasteryChallengeDTO
      {
         return this._configMasteryChallengeDTO;
      }
      
      public function get mysteryOutputPossiblities() : Vector.<ConfigOutputDTO>
      {
         return this._mysteryOutputPossiblities;
      }
      
      public function get upgradeLevel() : int
      {
         return this._upgradeLevel;
      }
      
      public function set upgradeLevel(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._upgradeLevel = param1;
         }
      }
      
      public function get baseValueForRCConstructionCost() : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ConfigOutputDTO = null;
         var _loc1_:Vector.<ConfigPhaseDTO> = this.getAllPhasesByType(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
         if(!_loc4_)
         {
            §§push(_loc1_ == null);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  addr004f:
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§goto(addr0062);
                     }
                  }
                  §§goto(addr006e);
               }
               addr0062:
               §§pop();
               if(_loc3_)
               {
                  addr006e:
                  if(_loc1_.length > 0)
                  {
                     _loc2_ = _loc1_[0].getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_REALCURRENCY);
                     §§goto(addr0072);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr0072);
            }
            §§goto(addr004f);
         }
         addr0072:
         if(!_loc4_)
         {
            if(_loc2_ != null)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr00ae);
               }
            }
            addr00b3:
            return -1;
         }
         addr00ae:
         return _loc2_.outputAmount;
      }
   }
}

