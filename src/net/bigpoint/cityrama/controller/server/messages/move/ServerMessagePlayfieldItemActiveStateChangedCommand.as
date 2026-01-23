package net.bigpoint.cityrama.controller.server.messages.move
{
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemActiveStateChangedCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldItemActiveStateChangedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:IPlaneObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:Number = NaN;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:PlaneProxy = super.facade.retrieveProxy(PlaneProxy.NAME) as PlaneProxy;
         var _loc4_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         var _loc5_:MessageVo = MessageVo(param1.getBody());
         if(!_loc5_.json)
         {
            if(!_loc16_)
            {
               return;
            }
         }
         var _loc6_:Vector.<Number> = new Vector.<Number>();
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:* = 0;
         var _loc14_:* = _loc5_.json.act.a;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc14_,_loc13_));
            if(!_loc15_)
            {
               break;
            }
            if(§§pop())
            {
               _loc8_ = §§nextvalue(_loc13_,_loc14_);
               if(!(_loc16_ && Boolean(param1)))
               {
                  _loc6_.push(_loc8_ as Number);
               }
               continue;
            }
            if(!(_loc16_ && Boolean(this)))
            {
               if(!_loc16_)
               {
                  if(!_loc16_)
                  {
                     §§push(0);
                     if(!(_loc16_ && Boolean(param1)))
                     {
                        _loc13_ = §§pop();
                        if(_loc15_)
                        {
                           _loc14_ = _loc5_.json.act.d;
                           while(true)
                           {
                              §§push(§§hasnext(_loc14_,_loc13_));
                              if(_loc15_)
                              {
                                 if(§§pop())
                                 {
                                    _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                    if(_loc15_)
                                    {
                                       _loc7_.push(_loc9_ as Number);
                                    }
                                    continue;
                                 }
                                 if(_loc15_ || Boolean(_loc2_))
                                 {
                                    if(!_loc16_)
                                    {
                                       if(!(_loc16_ && Boolean(_loc3_)))
                                       {
                                          addr0179:
                                          §§push(0);
                                          if(_loc15_ || Boolean(_loc2_))
                                          {
                                             _loc13_ = §§pop();
                                             if(!(_loc16_ && Boolean(this)))
                                             {
                                                addr0199:
                                                _loc14_ = _loc6_;
                                                if(_loc15_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                      if(!(_loc16_ && Boolean(_loc3_)))
                                                      {
                                                         break loop0;
                                                      }
                                                      break;
                                                   }
                                                   while(§§pop())
                                                   {
                                                      _loc12_ = §§nextvalue(_loc13_,_loc14_);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         _loc11_ = _loc2_.getBillboardById(_loc12_);
                                                         if(!_loc11_)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               _loc10_ = _loc2_.getPlaneObjectById(_loc12_);
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     _loc10_.objectVo.isConnectedToStreet = false;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr043b:
                                                               addr0441:
                                                               if(_loc11_ is IEmergencyInfrastructure)
                                                               {
                                                                  addr0445:
                                                                  _loc4_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                                                                  _loc4_.removeObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                               break loop6;
                                                            }
                                                            addr0466:
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc11_.billboardObjectVo);
                                                            if(!_loc16_)
                                                            {
                                                               §§pop().isConnectedToStreet = false;
                                                               if(!_loc16_)
                                                               {
                                                                  addr03ad:
                                                                  _loc11_.billboardObjectVo.resetHarvestTimer();
                                                                  if(!(_loc16_ && Boolean(_loc3_)))
                                                                  {
                                                                     _loc11_.invalidateIconStateManager();
                                                                     if(_loc15_ || Boolean(_loc3_))
                                                                     {
                                                                        §§push(_loc11_ is ResidentialFieldObject);
                                                                        if(!_loc16_)
                                                                        {
                                                                           var _temp_14:* = §§pop();
                                                                           §§push(_temp_14);
                                                                           if(!_temp_14)
                                                                           {
                                                                              if(!(_loc16_ && Boolean(param1)))
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc16_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§push(_loc11_ is ShopFieldObject);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr040e:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr0418:
                                                                                             this.deactivateNeeds(_loc11_);
                                                                                             if(_loc15_ || Boolean(_loc3_))
                                                                                             {
                                                                                                §§goto(addr043b);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0445);
                                                                                       }
                                                                                       §§goto(addr043b);
                                                                                    }
                                                                                    §§goto(addr0441);
                                                                                 }
                                                                                 §§goto(addr043b);
                                                                              }
                                                                              §§goto(addr0441);
                                                                           }
                                                                        }
                                                                        §§goto(addr040e);
                                                                     }
                                                                     §§goto(addr0445);
                                                                  }
                                                                  §§goto(addr043b);
                                                               }
                                                               §§goto(addr0418);
                                                            }
                                                            §§goto(addr03ad);
                                                         }
                                                         §§goto(addr043b);
                                                      }
                                                   }
                                                   addr0471:
                                                   return;
                                                   addr02ee:
                                                   addr046f:
                                                   addr0469:
                                                   addr046d:
                                                }
                                                while(true)
                                                {
                                                   _loc11_ = _loc2_.getBillboardById(_loc12_);
                                                   if(!_loc11_)
                                                   {
                                                      if(!(_loc16_ && Boolean(param1)))
                                                      {
                                                         _loc10_ = _loc2_.getPlaneObjectById(_loc12_);
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               break;
                                                            }
                                                            addr0238:
                                                            _loc3_.updateObject(_loc10_);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc10_.objectVo);
                                                            if(_loc15_ || Boolean(param1))
                                                            {
                                                               §§pop().isConnectedToStreet = true;
                                                               if(_loc15_)
                                                               {
                                                                  _loc10_.objectVo.groundDTO.active = true;
                                                                  addr0217:
                                                                  if(_loc15_ || Boolean(param1))
                                                                  {
                                                                     §§goto(addr0238);
                                                                  }
                                                               }
                                                               §§goto(addr02ee);
                                                            }
                                                            §§goto(addr0217);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc11_.billboardObjectVo.isConnectedToStreet = true;
                                                      if(_loc15_ || Boolean(_loc3_))
                                                      {
                                                         _loc11_.invalidateIconStateManager();
                                                         if(!_loc16_)
                                                         {
                                                            §§push(_loc11_ is ResidentialFieldObject);
                                                            if(_loc15_ || Boolean(param1))
                                                            {
                                                               var _temp_25:* = §§pop();
                                                               §§push(_temp_25);
                                                               if(!_temp_25)
                                                               {
                                                                  if(_loc15_ || Boolean(_loc2_))
                                                                  {
                                                                     §§pop();
                                                                     if(_loc15_ || Boolean(_loc3_))
                                                                     {
                                                                        addr029b:
                                                                        §§push(_loc11_ is ShopFieldObject);
                                                                        if(_loc15_ || Boolean(param1))
                                                                        {
                                                                           addr02af:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc15_ || Boolean(param1))
                                                                              {
                                                                                 this.activateNeeds(_loc11_);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr02cf:
                                                                                    addr02d5:
                                                                                    if(_loc11_ is IEmergencyInfrastructure)
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr02df:
                                                                                          _loc4_.addObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr02ee);
                                                                              }
                                                                              §§goto(addr02df);
                                                                           }
                                                                           §§goto(addr02cf);
                                                                        }
                                                                        §§goto(addr02d5);
                                                                     }
                                                                     §§goto(addr02df);
                                                                  }
                                                                  §§goto(addr02d5);
                                                               }
                                                            }
                                                            §§goto(addr02af);
                                                         }
                                                         §§goto(addr029b);
                                                      }
                                                      §§goto(addr02df);
                                                   }
                                                   §§goto(addr02ee);
                                                }
                                                return;
                                                addr01b1:
                                             }
                                             addr033b:
                                             _loc14_ = _loc7_;
                                             if(_loc15_ || Boolean(param1))
                                             {
                                                §§goto(addr0466);
                                             }
                                             §§goto(addr035b);
                                          }
                                          addr032b:
                                          _loc13_ = §§pop();
                                          if(_loc15_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr033b);
                                          }
                                          §§goto(addr046f);
                                       }
                                       addr0329:
                                       §§goto(addr032b);
                                       §§push(0);
                                    }
                                    §§goto(addr0199);
                                 }
                                 if(_loc15_ || Boolean(_loc2_))
                                 {
                                    addr0321:
                                    if(!_loc16_)
                                    {
                                       §§goto(addr0329);
                                    }
                                    §§goto(addr0471);
                                 }
                                 §§goto(addr033b);
                              }
                              §§goto(addr0469);
                           }
                        }
                        §§goto(addr0321);
                     }
                     §§goto(addr032b);
                  }
                  §§goto(addr0179);
               }
               §§goto(addr033b);
            }
            §§goto(addr046d);
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc15_ || Boolean(_loc2_))
               {
                  §§goto(addr0311);
               }
               §§goto(addr046d);
            }
            else
            {
               _loc12_ = §§nextvalue(_loc13_,_loc14_);
               §§goto(addr01b1);
            }
         }
         §§goto(addr0469);
      }
      
      public function deactivateNeeds(param1:BillboardObject) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:ShopFieldObject = null;
         var _loc2_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            §§push(param1 is ResidentialFieldObject);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr006b:
                     _loc3_ = param1 as ShopFieldObject;
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§push(_loc3_.shopFieldObjectVo);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           §§pop().formerPosition = param1.billboardObjectVo.matrix3dCoordinates;
                           if(_loc5_)
                           {
                              _loc2_.updateShopsOldResidentials((param1 as ShopFieldObject).shopFieldObjectVo);
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00d8);
                           }
                           addr00cc:
                           _loc2_.removeShop(_loc3_);
                           if(_loc5_)
                           {
                              addr00e0:
                              (param1 as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                              addr00d8:
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr00d8);
                  }
               }
               else
               {
                  addr005a:
                  if(param1 is ShopFieldObject)
                  {
                     §§goto(addr006b);
                  }
               }
               §§goto(addr00e4);
            }
            §§goto(addr005a);
         }
         addr00e4:
      }
      
      public function activateNeeds(param1:BillboardObject) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:ShopFieldObject = null;
         var _loc2_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(param1 is ResidentialFieldObject);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr0050:
                     _loc2_.addResidential((param1 as ResidentialFieldObject).residentialFieldObjectVo);
                     if(!(_loc5_ || Boolean(this)))
                     {
                        addr0086:
                        _loc3_ = param1 as ShopFieldObject;
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§push(_loc3_.shopFieldObjectVo);
                           if(_loc5_)
                           {
                              §§pop().formerPosition = param1.billboardObjectVo.matrix3dCoordinates;
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 _loc2_.addShop(param1 as ShopFieldObject);
                                 if(_loc5_)
                                 {
                                    _loc2_.updateShop((param1 as ShopFieldObject).shopFieldObjectVo);
                                    if(!(_loc4_ && Boolean(_loc3_)))
                                    {
                                       addr00fc:
                                       (param1 as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                                       addr00f4:
                                    }
                                    §§goto(addr0100);
                                 }
                                 §§goto(addr00f4);
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr00fc);
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr0100);
                  }
                  §§goto(addr0086);
               }
               else
               {
                  addr0082:
                  if(param1 is ShopFieldObject)
                  {
                     §§goto(addr0086);
                  }
               }
               addr0100:
               return;
            }
            §§goto(addr0082);
         }
         §§goto(addr0050);
      }
   }
}

