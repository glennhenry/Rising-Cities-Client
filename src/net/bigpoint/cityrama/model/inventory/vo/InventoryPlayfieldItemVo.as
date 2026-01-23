package net.bigpoint.cityrama.model.inventory.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.RandomUtilities;
   
   public class InventoryPlayfieldItemVo
   {
      
      public static const BLOCKED_CONSTRUCTION:String = "BLOCKED_CONSTRUCTION";
      
      public static const BLOCKED_EMERGENCY:String = "BLOCKED_EMERGENCY";
      
      public static const BLOCKED_TYPE:String = "BLOCKED_TYPE";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         BLOCKED_CONSTRUCTION = "BLOCKED_CONSTRUCTION";
         if(!_loc1_)
         {
            BLOCKED_EMERGENCY = "BLOCKED_EMERGENCY";
            if(_loc2_ || InventoryPlayfieldItemVo)
            {
               addr004c:
               BLOCKED_TYPE = "BLOCKED_TYPE";
            }
         }
         return;
      }
      §§goto(addr004c);
      
      private var _buildingDTO:BuildingDTO;
      
      private var _decorationVo:DecorationVo;
      
      private var _improvementVector:Vector.<BriskDynaVo>;
      
      private var _canBePlacedOnCurrentPlayfield:Boolean;
      
      private var _blockedReason:String = "";
      
      public function InventoryPlayfieldItemVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function get buildingDTO() : BuildingDTO
      {
         return this._buildingDTO;
      }
      
      public function set buildingDTO(param1:BuildingDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._buildingDTO = param1;
         }
      }
      
      public function get decorationVo() : DecorationVo
      {
         return this._decorationVo;
      }
      
      public function set decorationVo(param1:DecorationVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._decorationVo = param1;
         }
      }
      
      private function get residentType() : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(_loc4_ || _loc2_)
         {
            §§push(this._buildingDTO);
            if(_loc4_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     addr004e:
                     if(this._buildingDTO.activePhases)
                     {
                        §§goto(addr0062);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr0062);
               }
               addr00d5:
               return "";
            }
            §§goto(addr004e);
         }
         addr0062:
         var _loc2_:int = 0;
         var _loc3_:* = this._buildingDTO.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(_loc1_.config);
                  if(_loc5_ && _loc3_)
                  {
                     break;
                  }
                  if(§§pop().phaseType == ServerPhaseTypes.RESIDENT)
                  {
                     if(_loc4_)
                     {
                        §§push(_loc1_.config);
                        break;
                     }
                  }
               }
               continue;
            }
         }
         return §§pop().listEntryOutputs[0].resourceConfig.type;
      }
      
      public function get residentGfx() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(this.residentType != "")
            {
               var _loc1_:* = this.residentType;
               addr0074:
               if(!(_loc2_ && _loc3_))
               {
                  §§push(ServerResConst.RESOURCE_ACADEMICS);
                  if(!_loc2_)
                  {
                     §§push(_loc1_);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc2_)
                           {
                              addr00b4:
                              §§push(0);
                              if(_loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr00f3:
                              §§push(1);
                              if(_loc2_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(ServerResConst.RESOURCE_RICHMEN);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00d1:
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr00f3);
                                    }
                                    else
                                    {
                                       addr0108:
                                       §§push(2);
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                    addr011f:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          return new BriskDynaVo("gui_ui_inventory","residents_students");
                                       case 1:
                                          return new BriskDynaVo("gui_ui_inventory","residents_richmen");
                                       case 2:
                                          return new BriskDynaVo("gui_ui_inventory","residents_worker");
                                       default:
                                          §§goto(addr0132);
                                    }
                                 }
                                 else
                                 {
                                    addr0104:
                                    addr0103:
                                    if(ServerResConst.RESOURCE_WORKERS === _loc1_)
                                    {
                                       §§goto(addr0108);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                    §§goto(addr011f);
                                 }
                                 §§goto(addr0108);
                              }
                              §§goto(addr0104);
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr011f);
                     }
                     §§goto(addr0104);
                  }
                  §§goto(addr00d1);
               }
               §§goto(addr00b4);
            }
            addr0132:
            return null;
         }
         §§goto(addr0074);
      }
      
      public function get bgGfxVo() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.configItem);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0047:
                     addr0039:
                     if(this.configItem.specialHighlighting)
                     {
                        if(_loc1_)
                        {
                           return new BriskDynaVo("gui_ui_inventory","bg_playfieldItem_gold");
                        }
                        §§goto(addr0079);
                     }
                  }
                  return new BriskDynaVo("gui_ui_inventory","bg_playfieldItem_blue");
               }
               addr0079:
               return null;
            }
            §§goto(addr0047);
         }
         §§goto(addr0039);
      }
      
      public function get improvementGfx() : Vector.<BriskDynaVo>
      {
         return this._improvementVector;
      }
      
      public function get configItem() : ConfigPlayfieldItemDTO
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._decorationVo);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr004e);
                  }
               }
               §§push(this._buildingDTO);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr0086:
                        return this._buildingDTO.config;
                        addr0082:
                     }
                  }
                  return null;
               }
               §§goto(addr0086);
            }
            addr004e:
            return this._decorationVo.config;
         }
         §§goto(addr0082);
      }
      
      public function set improvementVector(param1:Vector.<BriskDynaVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._improvementVector = param1;
         }
      }
      
      public function get canBePlacedOnCurrentPlayfield() : Boolean
      {
         return this._canBePlacedOnCurrentPlayfield;
      }
      
      public function set canBePlacedOnCurrentPlayfield(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._canBePlacedOnCurrentPlayfield = param1;
         }
      }
      
      public function get itemId() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this.buildingDTO);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr004d:
                     §§push(this.buildingDTO.id);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0064:
                     §§push(this.decorationVo);
                     if(_loc1_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008c:
                              return this.decorationVo.id;
                              addr008a:
                           }
                        }
                        return -1;
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0064);
            }
            §§goto(addr004d);
         }
         §§goto(addr0064);
      }
      
      public function get playfieldItemGfxVo() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this.decorationVo)
            {
               if(_loc2_)
               {
                  §§push(§§findproperty(BriskDynaVo));
                  §§push(RandomUtilities.getLibFromGFx(this.itemGfxId));
                  §§push("FieldItem_");
                  if(_loc2_)
                  {
                     §§push(§§pop() + this.itemGfxId);
                     if(_loc2_ || _loc1_)
                     {
                        addr004b:
                        §§push(§§pop() + "_level1_big");
                     }
                     return new §§pop().BriskDynaVo(§§pop(),§§pop());
                  }
                  §§goto(addr004b);
               }
            }
         }
         if(this.buildingDTO)
         {
            if(_loc2_)
            {
               §§push(§§findproperty(BriskDynaVo));
               §§push(RandomUtilities.getLibFromGFx(this.itemGfxId));
               §§push("FieldItem_");
               if(_loc2_ || Boolean(this))
               {
                  §§push(this.itemGfxId);
                  if(_loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc1_ && _loc2_))
                     {
                        addr00a4:
                        §§push("_level");
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc1_)
                           {
                              §§goto(addr00e5);
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr00e4);
                     }
                     addr00e5:
                     §§push(this.buildingDTO.buildingLevel);
                     if(!(_loc1_ && _loc1_))
                     {
                        addr00d0:
                        §§push(§§pop() + 1);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        addr00e1:
                        addr00e4:
                        §§push(§§pop() + "_big");
                     }
                     return new §§pop().BriskDynaVo(§§pop(),§§pop());
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00a4);
            }
         }
         return null;
      }
      
      public function get isBlocked() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(_loc4_ || _loc2_)
         {
            if(this.sortCategory == "")
            {
               if(!_loc5_)
               {
                  addr0036:
                  this._blockedReason = BLOCKED_TYPE;
                  if(!_loc5_)
                  {
                     §§push(true);
                     if(!_loc5_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr0075);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0086);
            }
            else
            {
               §§push(this.buildingDTO);
               if(_loc4_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        addr0075:
                        addr0079:
                        if(this.buildingDTO.emergencyDTO)
                        {
                           if(!_loc5_)
                           {
                              addr0086:
                              this._blockedReason = BLOCKED_EMERGENCY;
                              if(_loc4_)
                              {
                                 addr0094:
                                 return true;
                              }
                           }
                        }
                        §§goto(addr0095);
                     }
                     addr0095:
                     var _loc2_:int = 0;
                     var _loc3_:* = this.buildingDTO.activePhases;
                     for each(_loc1_ in _loc3_)
                     {
                        if(!_loc5_)
                        {
                           §§push(_loc1_.config);
                           if(_loc4_)
                           {
                              §§push(§§pop().phaseType);
                              if(_loc4_)
                              {
                                 §§push(ServerPhaseTypes.CREATE_ACTIVATE);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       var _temp_4:* = §§pop();
                                       §§push(_temp_4);
                                       §§push(_temp_4);
                                       if(!_loc5_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§pop();
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc1_.config);
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      addr011d:
                                                      §§push(§§pop().phaseType);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                                         if(_loc4_ || Boolean(_loc1_))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr0149:
                                                               var _temp_8:* = §§pop();
                                                               addr014a:
                                                               §§push(_temp_8);
                                                               if(!_temp_8)
                                                               {
                                                                  if(!(_loc5_ && Boolean(_loc2_)))
                                                                  {
                                                                     addr015c:
                                                                     §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr0179);
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr0180);
                                                            }
                                                            §§goto(addr015c);
                                                         }
                                                         addr0179:
                                                         §§goto(addr0169);
                                                      }
                                                      addr0169:
                                                      §§goto(addr0166);
                                                   }
                                                   addr0166:
                                                }
                                                §§goto(addr0163);
                                             }
                                             §§goto(addr015c);
                                          }
                                          §§goto(addr0149);
                                       }
                                       §§goto(addr014a);
                                    }
                                    §§goto(addr0149);
                                 }
                                 §§goto(addr0179);
                              }
                              §§goto(addr0169);
                           }
                           §§goto(addr011d);
                        }
                        addr0163:
                        §§push(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL);
                        if(_loc4_)
                        {
                           addr0180:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              this._blockedReason = BLOCKED_CONSTRUCTION;
                              if(!_loc4_)
                              {
                                 continue;
                              }
                           }
                           return true;
                        }
                     }
                     §§goto(addr01ac);
                  }
                  addr01ac:
                  return false;
               }
            }
            §§goto(addr0079);
         }
         §§goto(addr0036);
      }
      
      public function get sortCategory() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.configItem);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.configItem);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop().tags.indexOf(ServerTagConstants.RESIDENTIAL) != -1)
                        {
                           if(!_loc1_)
                           {
                              §§push(ServerTagConstants.RESIDENTIAL);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr0275);
                           }
                           §§goto(addr02a5);
                        }
                        else
                        {
                           §§push(this.configItem);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(§§pop().tags.indexOf(ServerTagConstants.SHOP) != -1)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(ServerTagConstants.SHOP);
                                    if(_loc2_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr0136:
                                    §§push(ServerTagConstants.DECORATION);
                                    if(_loc1_ && _loc1_)
                                    {
                                       §§goto(addr02a5);
                                    }
                                 }
                                 return §§pop();
                              }
                              §§push(this.configItem);
                              if(!_loc1_)
                              {
                                 addr00b9:
                                 §§push(§§pop().tags.indexOf(ServerTagConstants.DECORATION) == -1);
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    §§push(!§§pop());
                                    if(_loc2_ || _loc2_)
                                    {
                                       var _temp_10:* = §§pop();
                                       §§push(_temp_10);
                                       §§push(_temp_10);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§pop();
                                                if(_loc2_)
                                                {
                                                   addr0100:
                                                   §§push(this.configItem);
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      §§push(§§pop().tags.indexOf(ServerTagConstants.SECURITY_DEVICE) == -1);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr012d:
                                                         if(§§pop())
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr0136);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0275);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.configItem);
                                                            if(_loc2_)
                                                            {
                                                               addr0161:
                                                               §§push(§§pop().tags.indexOf(ServerTagConstants.POLICE_DEPARTMENT) == -1);
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     addr018b:
                                                                     var _temp_16:* = §§pop();
                                                                     §§push(_temp_16);
                                                                     §§push(_temp_16);
                                                                     if(!_loc1_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc1_)
                                                                              {
                                                                                 addr01a0:
                                                                                 §§push(this.configItem);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(§§pop().tags.indexOf(ServerTagConstants.HOSPITAL) == -1);
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr01c3:
                                                                                          var _temp_17:* = §§pop();
                                                                                          §§push(_temp_17);
                                                                                          §§push(_temp_17);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§push(this.configItem);
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         addr01e1:
                                                                                                         §§push(§§pop().tags.indexOf(ServerTagConstants.FIRE_DEPARTMENT) == -1);
                                                                                                         if(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr01fd);
                                                                                                         }
                                                                                                         §§goto(addr020b);
                                                                                                      }
                                                                                                      §§goto(addr0279);
                                                                                                   }
                                                                                                   §§goto(addr0275);
                                                                                                }
                                                                                                §§goto(addr0296);
                                                                                             }
                                                                                             §§goto(addr020b);
                                                                                          }
                                                                                          §§goto(addr0211);
                                                                                       }
                                                                                       addr01fd:
                                                                                       §§push(!§§pop());
                                                                                       if(!(_loc1_ && _loc2_))
                                                                                       {
                                                                                          addr020b:
                                                                                          var _temp_20:* = §§pop();
                                                                                          §§push(_temp_20);
                                                                                          §§push(_temp_20);
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             addr0211:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!(_loc1_ && _loc2_))
                                                                                                {
                                                                                                   §§goto(addr0222);
                                                                                                }
                                                                                                §§goto(addr0265);
                                                                                             }
                                                                                             §§goto(addr0253);
                                                                                          }
                                                                                          §§goto(addr0254);
                                                                                       }
                                                                                       §§goto(addr0222);
                                                                                    }
                                                                                    §§goto(addr0295);
                                                                                 }
                                                                                 §§goto(addr0279);
                                                                              }
                                                                              §§goto(addr0228);
                                                                           }
                                                                           addr0222:
                                                                           §§pop();
                                                                           if(!_loc1_)
                                                                           {
                                                                              addr0228:
                                                                              §§push(this.configItem);
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr0231:
                                                                                 §§push(§§pop().tags.indexOf(ServerTagConstants.SCHOOL) == -1);
                                                                                 if(!(_loc1_ && _loc1_))
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       addr0253:
                                                                                       var _temp_23:* = §§pop();
                                                                                       addr0254:
                                                                                       §§push(_temp_23);
                                                                                       if(!_temp_23)
                                                                                       {
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             §§goto(addr0265);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0296);
                                                                                    }
                                                                                    addr0265:
                                                                                    §§pop();
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr0275:
                                                                                       addr0296:
                                                                                       addr0279:
                                                                                       §§push(this.configItem.tags.indexOf(ServerTagConstants.SECURITY_DEVICE) == -1);
                                                                                       if(!(_loc1_ && _loc2_))
                                                                                       {
                                                                                          addr0295:
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             §§goto(addr02a5);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02a6);
                                                                                 }
                                                                                 §§goto(addr0295);
                                                                              }
                                                                              §§goto(addr0279);
                                                                           }
                                                                           §§goto(addr02a6);
                                                                        }
                                                                        §§goto(addr01c3);
                                                                     }
                                                                     §§goto(addr0254);
                                                                  }
                                                                  §§goto(addr01c3);
                                                               }
                                                               §§goto(addr01fd);
                                                            }
                                                            §§goto(addr01e1);
                                                         }
                                                         §§goto(addr0296);
                                                      }
                                                      §§goto(addr01fd);
                                                   }
                                                   §§goto(addr0231);
                                                }
                                                §§goto(addr0136);
                                             }
                                             §§goto(addr018b);
                                          }
                                          §§goto(addr012d);
                                       }
                                       §§goto(addr0211);
                                    }
                                    §§goto(addr018b);
                                 }
                                 §§goto(addr0253);
                              }
                              §§goto(addr0161);
                              addr02a5:
                              return PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY;
                           }
                           §§goto(addr00b9);
                        }
                     }
                     §§goto(addr0279);
                  }
                  §§goto(addr01a0);
               }
               addr02a6:
               return "";
            }
            §§goto(addr0279);
         }
         §§goto(addr0100);
      }
      
      public function get itemGfxId() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.decorationVo);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr0045:
                     §§push(this.decorationVo.config.gfxId);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0081:
                     addr0085:
                     return this.buildingDTO.config.gfxId;
                  }
                  return §§pop();
               }
               addr0067:
               §§push(this.buildingDTO);
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0081);
                     }
                  }
                  return 0;
               }
               §§goto(addr0085);
            }
            §§goto(addr0045);
         }
         §§goto(addr0067);
      }
      
      public function get itemLocaleId() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.decorationVo);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr0046:
                     §§push(this.decorationVo.config.localeId);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr0084);
                  }
               }
               else
               {
                  §§push(this.buildingDTO);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr0083:
                           return this.buildingDTO.config.localeId;
                           addr007e:
                           addr007a:
                        }
                     }
                     addr0084:
                     return "";
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0083);
            }
            §§goto(addr0046);
         }
         §§goto(addr007a);
      }
      
      public function get blockedReason() : String
      {
         return this._blockedReason;
      }
      
      public function get departmentGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:ConfigSecurityGradeDTO = null;
         if(!_loc9_)
         {
            if(this.configItem)
            {
               §§goto(addr002b);
            }
            return null;
         }
         addr002b:
         var _loc3_:int = 0;
         var _loc4_:* = this.configItem.tags;
         while(true)
         {
            if(§§hasnext(_loc4_,_loc3_))
            {
               §§push(§§nextvalue(_loc3_,_loc4_));
               if(_loc8_ || Boolean(_loc2_))
               {
                  _loc1_ = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§push(_loc1_);
                  if(!_loc9_)
                  {
                     §§push(ServerTagConstants.POLICE_DEPARTMENT);
                     if(_loc8_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc8_)
                           {
                              return new BriskDynaVo("gui_ui_inventory","emergency_police");
                           }
                           break;
                        }
                        §§push(_loc1_);
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           §§push(ServerTagConstants.FIRE_DEPARTMENT);
                           if(_loc8_)
                           {
                              addr00a8:
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                              }
                              §§push(_loc1_);
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 addr00d4:
                                 §§push(ServerTagConstants.HOSPITAL);
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc8_ || Boolean(_loc2_))
                                       {
                                          return new BriskDynaVo("gui_ui_inventory","emergency_hospital");
                                       }
                                    }
                                    else
                                    {
                                       addr0112:
                                       addr010d:
                                       if(_loc1_ != ServerTagConstants.SECURITY_DEVICE)
                                       {
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                    }
                                    var _loc5_:int = 0;
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       for each(_loc2_ in this.configItem.configSecurityGrades)
                                       {
                                          if(!(_loc9_ && Boolean(_loc2_)))
                                          {
                                             var _loc7_:* = _loc2_.type;
                                             if(!_loc9_)
                                             {
                                                §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                if(!(_loc9_ && Boolean(this)))
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc9_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc8_ || Boolean(_loc2_))
                                                         {
                                                            addr01e4:
                                                            §§push(0);
                                                            if(_loc9_ && Boolean(_loc1_))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr022c:
                                                            §§push(2);
                                                            if(_loc8_ || Boolean(this))
                                                            {
                                                            }
                                                         }
                                                         addr0257:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               return new BriskDynaVo("gui_ui_inventory","emergency_fire");
                                                            case 1:
                                                               §§goto(addr0177);
                                                            case 2:
                                                               return new BriskDynaVo("gui_ui_inventory","emergency_hospital");
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                         if(!_loc9_)
                                                         {
                                                            addr0203:
                                                            §§push(_loc7_);
                                                            if(!_loc9_)
                                                            {
                                                               addr020b:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc8_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr022c);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0228:
                                                                  addr0226:
                                                                  if(ServerTagConstants.HOSPITAL === _loc7_)
                                                                  {
                                                                     §§goto(addr022c);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(3);
                                                                  }
                                                               }
                                                               §§goto(addr0257);
                                                            }
                                                            §§goto(addr0228);
                                                         }
                                                         §§goto(addr0226);
                                                      }
                                                      §§goto(addr022c);
                                                   }
                                                   §§goto(addr020b);
                                                }
                                                §§goto(addr0203);
                                             }
                                             §§goto(addr01e4);
                                          }
                                          addr0177:
                                          return new BriskDynaVo("gui_ui_inventory","emergency_police");
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr0112);
                              }
                              §§goto(addr010d);
                           }
                           §§goto(addr0112);
                        }
                        §§goto(addr010d);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr00d4);
            }
         }
         return new BriskDynaVo("gui_ui_inventory","emergency_fire");
      }
   }
}

