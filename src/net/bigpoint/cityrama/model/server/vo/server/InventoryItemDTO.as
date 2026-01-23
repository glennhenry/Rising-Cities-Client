package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class InventoryItemDTO
   {
      
      private var _id:Number;
      
      private var _buildingDTO:BuildingDTO;
      
      private var _decorationVo:DecorationVo;
      
      private var _improvementDTO:ImprovementDTO;
      
      private var _goodDTO:GoodDTO;
      
      private var _permissionDTO:PlayfieldItemPermissionDTO;
      
      private var _shouldBeRemoved:Boolean;
      
      private var _amount:Number;
      
      public function InventoryItemDTO(param1:Object, param2:ConfigPlayfieldItemDTO = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super();
            if(_loc3_ || Boolean(param2))
            {
               this._id = param1.bid;
               if(_loc3_)
               {
                  if(param1.b)
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        if(!param2)
                        {
                           throw new ArgumentError("No Config for BuildingDTO!");
                        }
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0069:
                           this._buildingDTO = new BuildingDTO(param1.b,param2);
                           if(_loc3_ || Boolean(this))
                           {
                              addr00a6:
                              if(param1.d)
                              {
                                 if(_loc3_)
                                 {
                                    if(!param2)
                                    {
                                       throw new ArgumentError("No Config for DecorationVo!");
                                    }
                                    if(_loc3_)
                                    {
                                       this._decorationVo = new DecorationVo(param1.d,param2);
                                       addr00be:
                                       if(!_loc4_)
                                       {
                                          addr0100:
                                          if(param1.imp)
                                          {
                                             if(!(_loc4_ && Boolean(param1)))
                                             {
                                                §§goto(addr0117);
                                             }
                                          }
                                          §§goto(addr0135);
                                       }
                                       §§goto(addr01bb);
                                    }
                                    §§goto(addr0135);
                                 }
                                 addr0117:
                                 this._improvementDTO = new ImprovementDTO(param1.imp);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    addr0135:
                                    if(param1.g)
                                    {
                                       if(_loc3_ || Boolean(this))
                                       {
                                          this._goodDTO = ConfigFactory.buildGoodDTO(param1.g);
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr016a:
                                             if(param1.p)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr018e:
                                                   this._permissionDTO = ConfigFactory.buildPermissionDTO(param1.p);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr01a5);
                                                   }
                                                   §§goto(addr01bb);
                                                }
                                             }
                                             §§goto(addr01a5);
                                          }
                                          §§goto(addr018e);
                                       }
                                       addr01a5:
                                       this._shouldBeRemoved = param1.del;
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          addr01bb:
                                          this._amount = param1.a;
                                       }
                                       §§goto(addr01c5);
                                    }
                                    §§goto(addr016a);
                                 }
                                 addr01c5:
                                 return;
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr0135);
                     }
                     §§goto(addr018e);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr01a5);
            }
            §§goto(addr0069);
         }
         §§goto(addr00be);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get buildingDTO() : BuildingDTO
      {
         return this._buildingDTO;
      }
      
      public function get decorationVo() : DecorationVo
      {
         return this._decorationVo;
      }
      
      public function get improvementDTO() : ImprovementDTO
      {
         return this._improvementDTO;
      }
      
      public function get goodDTO() : GoodDTO
      {
         return this._goodDTO;
      }
      
      public function get permissionDTO() : PlayfieldItemPermissionDTO
      {
         return this._permissionDTO;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function get shouldBeRemoved() : Boolean
      {
         return this._shouldBeRemoved;
      }
      
      public function get itemId() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.buildingDTO);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr003b:
                     §§push(this.buildingDTO.id);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr010f:
                     §§push(this.permissionDTO);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              addr0128:
                              return this.permissionDTO.permissionConfigId;
                              addr0125:
                              addr0121:
                           }
                        }
                        return -1;
                     }
                     §§goto(addr0125);
                  }
               }
               else
               {
                  §§push(this.decorationVo);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           addr0066:
                           §§push(this.decorationVo.id);
                           if(_loc1_ || _loc1_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr008d:
                           §§push(this.goodDTO);
                           if(_loc1_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr00ab:
                                    §§push(this.goodDTO.configId);
                                    if(_loc1_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr00c1:
                                    §§push(this.improvementDTO);
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00e7:
                                             §§push(this.improvementDTO.configId);
                                             if(_loc1_ || _loc1_)
                                             {
                                                §§goto(addr0101);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr010f);
                                          }
                                          §§goto(addr0128);
                                       }
                                       §§goto(addr010f);
                                    }
                                    §§goto(addr00e7);
                                 }
                                 §§goto(addr0128);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr0101);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0066);
               }
               addr0101:
               return §§pop();
            }
            §§goto(addr003b);
         }
         §§goto(addr0121);
      }
   }
}

