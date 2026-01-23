package net.bigpoint.cityrama.model.inventory.vo
{
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   
   public class InventoryItemVo
   {
      
      private var _dto:InventoryItemDTO;
      
      private var _bagType:String;
      
      public function InventoryItemVo(param1:InventoryItemDTO, param2:String)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               this._dto = param1;
               if(_loc4_ || _loc3_)
               {
                  addr0040:
                  this._bagType = param2;
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      public function get bagType() : String
      {
         return this._bagType;
      }
      
      public function get amount() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.bagType);
            if(!_loc1_)
            {
               §§push(InventoryProxy.INVENTORY_BAG_TYPE_GOOD);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && Boolean(this)))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              §§pop();
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(this.goodDTO);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       addr0074:
                                       if(§§pop())
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr0089:
                                             §§push(this.goodDTO.amount);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr011f);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.bagType);
                                          if(_loc2_)
                                          {
                                             addr00b0:
                                             §§push(InventoryProxy.INVENTORY_BAG_TYPE_PERMISSION);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                addr00cd:
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   addr00db:
                                                   var _temp_11:* = §§pop();
                                                   addr00dc:
                                                   §§push(_temp_11);
                                                   if(_temp_11)
                                                   {
                                                      if(!(_loc1_ && Boolean(this)))
                                                      {
                                                         §§pop();
                                                         if(!_loc1_)
                                                         {
                                                            addr00f3:
                                                            §§push(this.permissionDTO);
                                                            if(_loc2_ || Boolean(this))
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc2_)
                                                               {
                                                                  addr010a:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        addr0117:
                                                                        §§push(this.permissionDTO.permissionsLeft);
                                                                        if(_loc2_)
                                                                        {
                                                                           addr011f:
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01a3:
                                                                        return this._dto.amount;
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§push(this.bagType);
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr012e:
                                                                     §§push(InventoryProxy.INVENTORY_BAG_TYPE_PLAYFIELDITEM);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr0139:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§goto(addr0147);
                                                                           }
                                                                           §§goto(addr016d);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0192:
                                                                           addr018c:
                                                                           if(this.bagType == InventoryProxy.INVENTORY_BAG_TYPE_IMPROVEMENT)
                                                                           {
                                                                              if(_loc2_ || Boolean(this))
                                                                              {
                                                                                 §§goto(addr01a3);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr01ab);
                                                                     }
                                                                     §§goto(addr0192);
                                                                  }
                                                                  §§goto(addr018c);
                                                                  §§goto(addr01a3);
                                                               }
                                                               §§goto(addr0147);
                                                            }
                                                            §§goto(addr0117);
                                                         }
                                                         §§goto(addr01ab);
                                                      }
                                                      §§goto(addr0147);
                                                   }
                                                }
                                                §§goto(addr010a);
                                             }
                                             §§goto(addr0139);
                                          }
                                          §§goto(addr012e);
                                       }
                                       §§goto(addr01a3);
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr0089);
                              }
                              §§goto(addr0150);
                           }
                           §§goto(addr00db);
                        }
                        §§goto(addr0074);
                     }
                     §§goto(addr00dc);
                  }
                  addr0147:
                  if(this.deleteMe)
                  {
                     if(_loc2_)
                     {
                        addr0150:
                        §§push(0);
                        if(!(_loc1_ && _loc2_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr01ab:
                        return 0;
                     }
                  }
                  else
                  {
                     addr016d:
                     §§push(1);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  return §§pop();
               }
               §§goto(addr00cd);
            }
            §§goto(addr00b0);
         }
         §§goto(addr00f3);
      }
      
      public function get buildingDTO() : BuildingDTO
      {
         return this._dto.buildingDTO;
      }
      
      public function get decorationVo() : DecorationVo
      {
         return this._dto.decorationVo;
      }
      
      public function get goodDTO() : GoodDTO
      {
         return this._dto.goodDTO;
      }
      
      public function get permissionDTO() : PlayfieldItemPermissionDTO
      {
         return this._dto.permissionDTO;
      }
      
      public function get improvementDTO() : ImprovementDTO
      {
         return this._dto.improvementDTO;
      }
      
      public function get itemId() : Number
      {
         return this._dto.itemId;
      }
      
      public function get deleteMe() : Boolean
      {
         return this._dto.shouldBeRemoved;
      }
      
      public function get dto() : InventoryItemDTO
      {
         return this._dto;
      }
   }
}

