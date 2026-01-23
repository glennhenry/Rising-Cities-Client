package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   import net.bigpoint.util.LocaUtils;
   
   public class PlayfieldItemUiInfolayerContentVo extends AbstractUIInfolayerContentVo
   {
      
      protected var _data:ConfigPlayfieldItemDTO;
      
      private var _currentTimeStamp:Number;
      
      private var _permission:PlayfieldItemPermissionDTO;
      
      private var _masteryChallenge:MasteryChallengeDTO;
      
      private var _userLevel:int;
      
      private var _isReward:Boolean;
      
      private var _infoLayerConfigPlayfieldItemVo:InfoLayerConfigPlayfieldItemVo;
      
      public function PlayfieldItemUiInfolayerContentVo(param1:uint, param2:Point, param3:ConfigPlayfieldItemDTO, param4:MasteryChallengeDTO = null, param5:String = "", param6:Number = 0)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(!(_loc7_ && Boolean(param1)))
         {
            super(param1,param2,param5);
            if(!(_loc7_ && Boolean(param2)))
            {
               this._data = param3;
               if(_loc8_ || Boolean(this))
               {
                  addr0066:
                  this._currentTimeStamp = param6;
                  if(!(_loc7_ && Boolean(param2)))
                  {
                     addr007b:
                     this._masteryChallenge = param4;
                     if(!_loc7_)
                     {
                        this._infoLayerConfigPlayfieldItemVo = new InfoLayerConfigPlayfieldItemVo(param3);
                     }
                  }
               }
               return;
            }
            §§goto(addr007b);
         }
         §§goto(addr0066);
      }
      
      override public function get headerString() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(LocaUtils);
         §§push("rcl.playfielditems.name");
         §§push("rcl.playfielditems.name.");
         if(!_loc2_)
         {
            §§push(§§pop() + this._data.localeId);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() + ".capital");
            }
         }
         return §§pop().getString(§§pop(),§§pop());
      }
      
      public function get userPermissionStock() : int
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._permission);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr003a);
                  }
               }
               §§push(this._permission);
            }
            return §§pop().permissionsLeft;
         }
         addr003a:
         throw new RamaCityError("set the permission !");
      }
      
      public function get needsPermissions() : Boolean
      {
         return this._permission.config.initialPermissions > -1;
      }
      
      public function get buyablePermissionStock() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._permission);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     throw new RamaCityError("set the permission !");
                  }
                  addr00ba:
                  §§push(1);
               }
               else
               {
                  §§push(this._permission);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr005a:
                     §§push(§§pop().config);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(§§pop().buyCap);
                        if(_loc1_)
                        {
                           §§push(-1);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr00a1:
                                    addr009f:
                                    §§push(this._permission.config.buyCap);
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr00b8:
                                       return §§pop() - this._permission.permissionsBought;
                                       addr00b1:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr009f);
               }
               addr00bc:
               return §§pop();
            }
            §§goto(addr005a);
         }
         §§goto(addr00ba);
      }
      
      public function get buyCap() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._permission);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0041);
                  }
               }
               §§push(this._permission);
            }
            return §§pop().config.buyCap;
         }
         addr0041:
         throw new RamaCityError("set the permission !");
      }
      
      public function set permission(param1:PlayfieldItemPermissionDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._permission = param1;
         }
      }
      
      public function get specialText() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._data);
            if(!_loc1_)
            {
               if(§§pop().tags.indexOf(ServerTagConstants.MYSTERY) != -1)
               {
                  if(!_loc1_)
                  {
                     §§push(LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.specials.mysterybuilding"));
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                     §§goto(addr00a0);
                  }
               }
               else
               {
                  §§push(this._data);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     if(§§pop().tags.indexOf(ServerTagConstants.BUILDING_EVENTSQUARE) != -1)
                     {
                        if(!_loc1_)
                        {
                           addr008f:
                           §§push(LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.specials.eventsquare"));
                           if(!_loc1_)
                           {
                              addr00a0:
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr00db:
                           return LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.cinema.text.available");
                        }
                        return §§pop();
                     }
                     §§goto(addr00bc);
                     §§goto(addr00db);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr00db);
            }
            addr00bc:
            if(this._data.tags.indexOf(ServerTagConstants.CINEMA) != -1)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  §§goto(addr00db);
               }
            }
            return null;
         }
         §§goto(addr008f);
      }
      
      public function get configSecurityGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return this._data.configSecurityGrades.sort(MainLayerProxy.sortSecurityGradesOnOrderId);
      }
      
      public function get unlockLevel() : int
      {
         return this._data.unlockLevel;
      }
      
      public function set userLevel(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._userLevel = param1;
         }
      }
      
      public function get isUnlocked() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._userLevel);
            if(!(_loc1_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     throw new RamaCityError("set the userlevel !");
                  }
               }
               addr0046:
               §§push(this._userLevel);
            }
            return §§pop() >= this._data.unlockLevel;
         }
         §§goto(addr0046);
      }
      
      public function set isReward(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._isReward = param1;
         }
      }
      
      public function get isReward() : Boolean
      {
         return this._isReward;
      }
      
      public function get masteryChallenge() : MasteryChallengeDTO
      {
         return this._masteryChallenge;
      }
      
      public function get configMasteryChallenge() : ConfigMasteryChallengeDTO
      {
         return this._data.configMasteryChallengeDTO;
      }
      
      public function get isPremium() : Boolean
      {
         return this._data.isPremium;
      }
      
      public function get infoLayerConfigPlayfieldItemVo() : InfoLayerConfigPlayfieldItemVo
      {
         return this._infoLayerConfigPlayfieldItemVo;
      }
   }
}

