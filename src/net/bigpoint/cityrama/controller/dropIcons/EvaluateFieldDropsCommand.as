package net.bigpoint.cityrama.controller.dropIcons
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class EvaluateFieldDropsCommand extends SimpleCommand
   {
      
      private var _startPoint:Point;
      
      public function EvaluateFieldDropsCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:FieldInfoLayerProxy = null;
         var _loc5_:Pt = null;
         var _loc2_:IObject3D = param1.getBody().tO;
         var _loc3_:ConfigPhaseDTO = param1.getBody().cP;
         if(_loc7_)
         {
            §§push(Boolean(_loc3_));
            if(_loc7_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc7_)
                  {
                     addr0051:
                     §§pop();
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr0073);
                  }
               }
               addr006f:
               §§goto(addr006d);
            }
            §§goto(addr0051);
         }
         addr006d:
         if(Boolean(_loc2_))
         {
            addr0073:
            _loc4_ = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
            _loc5_ = IsoMath.isoToScreen(new Pt(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.length / 2,_loc4_.isoView.currentZoom));
            if(_loc7_ || Boolean(this))
            {
               this._startPoint = new Point(_loc5_.x,_loc5_.y);
               if(!_loc6_)
               {
                  addr00ea:
                  this.prepareDropIcon(_loc3_);
               }
               §§goto(addr00f1);
            }
            §§goto(addr00ea);
         }
         addr00f1:
      }
      
      private function prepareDropIcon(param1:ConfigPhaseDTO) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:DropIconVO = null;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc2_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         var _loc9_:int = 0;
         var _loc10_:* = param1.listEntryOutputs;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc10_,_loc9_));
            if(!(_loc13_ || Boolean(this)))
            {
               break;
            }
            if(§§pop())
            {
               _loc4_ = §§nextvalue(_loc9_,_loc10_);
               if(_loc4_.outputAmount > 0)
               {
                  if(_loc13_)
                  {
                     _loc2_.push(_loc4_);
                  }
               }
               continue;
            }
            if(!_loc12_)
            {
               if(!(_loc12_ && Boolean(_loc2_)))
               {
                  if(_loc13_)
                  {
                     _loc9_ = 0;
                     if(_loc13_ || Boolean(_loc2_))
                     {
                        _loc10_ = _loc2_;
                        while(true)
                        {
                           §§push(§§hasnext(_loc10_,_loc9_));
                           break loop0;
                        }
                        addr056b:
                        addr0564:
                     }
                     addr056d:
                  }
                  return;
               }
               §§goto(addr056d);
            }
            §§goto(addr056b);
         }
         while(§§pop())
         {
            _loc5_ = §§nextvalue(_loc9_,_loc10_);
            _loc6_ = null;
            if(_loc13_)
            {
               §§push(0);
               if(!(_loc12_ && Boolean(_loc3_)))
               {
                  _loc3_ = §§pop();
                  if(!(_loc12_ && Boolean(_loc2_)))
                  {
                     addr00ef:
                     if(_loc5_.resourceConfig != null)
                     {
                        if(!(_loc12_ && Boolean(_loc3_)))
                        {
                           _loc6_ = new DropIconVO("",this._startPoint);
                           if(!_loc12_)
                           {
                              §§push(_loc5_.resourceConfig.type);
                              if(_loc13_)
                              {
                                 var _loc11_:* = §§pop();
                                 if(_loc13_ || Boolean(param1))
                                 {
                                    §§push(ServerResConst.RESOURCE_EXPERIENCE);
                                    if(_loc13_)
                                    {
                                       §§push(_loc11_);
                                       if(!_loc12_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                §§push(0);
                                                if(_loc12_ && Boolean(_loc2_))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr01c6:
                                                §§push(1);
                                                if(_loc13_ || Boolean(this))
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                             if(_loc13_ || Boolean(param1))
                                             {
                                                §§push(_loc11_);
                                                if(!_loc12_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc12_ && Boolean(this)))
                                                      {
                                                         §§goto(addr01c6);
                                                      }
                                                      else
                                                      {
                                                         addr0207:
                                                         §§push(2);
                                                         if(_loc13_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(_loc11_);
                                                         if(_loc13_ || Boolean(this))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc13_ || Boolean(param1))
                                                               {
                                                                  §§goto(addr0207);
                                                               }
                                                               else
                                                               {
                                                                  addr0271:
                                                                  §§push(4);
                                                                  if(_loc13_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                               if(_loc13_ || Boolean(_loc3_))
                                                               {
                                                                  §§push(_loc11_);
                                                                  if(_loc13_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc12_ && Boolean(this)))
                                                                        {
                                                                           addr0240:
                                                                           §§push(3);
                                                                           if(_loc13_ || Boolean(this))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr02a4:
                                                                           §§push(5);
                                                                           if(_loc13_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§push(_loc11_);
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§goto(addr0271);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr02e5:
                                                                                    §§push(6);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(ServerResConst.RESOURCE_HAPPINESS_POSITIVE);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       addr029a:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             §§goto(addr02a4);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr02e5);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                                                                          if(!(_loc12_ && Boolean(param1)))
                                                                                          {
                                                                                             addr02c3:
                                                                                             §§push(_loc11_);
                                                                                             if(!(_loc12_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(_loc13_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§goto(addr02e5);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0316:
                                                                                                      §§push(7);
                                                                                                      if(_loc13_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      addr02fc:
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         addr0304:
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!(_loc12_ && Boolean(param1)))
                                                                                                            {
                                                                                                               §§goto(addr0316);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0376:
                                                                                                               §§push(9);
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            addr038e:
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               loop6:
                                                                                                               switch(§§pop())
                                                                                                               {
                                                                                                                  case 0:
                                                                                                                  case 1:
                                                                                                                  case 2:
                                                                                                                  case 3:
                                                                                                                  case 4:
                                                                                                                     _loc6_.type = _loc5_.resourceConfig.type;
                                                                                                                     if(!(_loc13_ || Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr04c3:
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        addr04d3:
                                                                                                                        if(_loc6_.type == "")
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(_loc13_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              facade.sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,_loc6_);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(_loc12_ && Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc12_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                              }
                                                                                                                              addr0547:
                                                                                                                           }
                                                                                                                           loop2:
                                                                                                                           while(§§pop() < _loc3_)
                                                                                                                           {
                                                                                                                              facade.sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,_loc6_);
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc8_++;
                                                                                                                                    if(!(_loc13_ || Boolean(_loc2_)))
                                                                                                                                    {
                                                                                                                                       break loop6;
                                                                                                                                    }
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 addr0537:
                                                                                                                              }
                                                                                                                              break loop6;
                                                                                                                           }
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           addr0549:
                                                                                                                        }
                                                                                                                        §§goto(addr0547);
                                                                                                                     }
                                                                                                                     §§goto(addr0537);
                                                                                                                     break;
                                                                                                                  case 5:
                                                                                                                  case 6:
                                                                                                                  case 7:
                                                                                                                  case 8:
                                                                                                                  case 9:
                                                                                                                     break;
                                                                                                                  default:
                                                                                                                     §§goto(addr04c3);
                                                                                                               }
                                                                                                               §§goto(addr0564);
                                                                                                            }
                                                                                                            §§goto(addr0549);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                                                                                                            if(_loc13_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr033d:
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc13_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr034d:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        §§push(8);
                                                                                                                        if(_loc13_ || Boolean(param1))
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr0376);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0372:
                                                                                                                     addr0370:
                                                                                                                     if(ServerResConst.RESOURCE_POPULATION === _loc11_)
                                                                                                                     {
                                                                                                                        §§goto(addr0376);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(10);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr038e);
                                                                                                               }
                                                                                                               §§goto(addr0372);
                                                                                                            }
                                                                                                            §§goto(addr0370);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0372);
                                                                                                   }
                                                                                                   §§goto(addr033d);
                                                                                                }
                                                                                                §§goto(addr038e);
                                                                                             }
                                                                                             §§goto(addr034d);
                                                                                          }
                                                                                          §§goto(addr02fc);
                                                                                       }
                                                                                       §§goto(addr038e);
                                                                                    }
                                                                                    §§goto(addr0304);
                                                                                 }
                                                                                 §§goto(addr033d);
                                                                              }
                                                                              §§goto(addr038e);
                                                                           }
                                                                           §§goto(addr034d);
                                                                        }
                                                                        §§goto(addr033d);
                                                                     }
                                                                     §§goto(addr038e);
                                                                  }
                                                                  §§goto(addr0372);
                                                               }
                                                               §§goto(addr02fc);
                                                            }
                                                            §§goto(addr038e);
                                                         }
                                                         §§goto(addr034d);
                                                      }
                                                      §§goto(addr02c3);
                                                   }
                                                   §§goto(addr038e);
                                                }
                                                §§goto(addr029a);
                                             }
                                             §§goto(addr0370);
                                          }
                                          §§goto(addr038e);
                                       }
                                       §§goto(addr0304);
                                    }
                                    §§goto(addr0370);
                                 }
                                 §§goto(addr0240);
                              }
                              §§goto(addr04d3);
                           }
                           §§goto(addr0547);
                        }
                        else
                        {
                           addr0452:
                           _loc6_ = new DropIconVO(String(_loc5_.goodConfig.gfxId),this._startPoint,_loc7_);
                        }
                        §§goto(addr04c3);
                     }
                     else
                     {
                        §§push(_loc5_.goodConfig);
                        if(!_loc12_)
                        {
                           if(§§pop() != null)
                           {
                              if(!_loc12_)
                              {
                                 addr03e4:
                                 §§push(_loc5_.goodConfig);
                                 if(_loc13_ || Boolean(param1))
                                 {
                                    §§push(§§pop().isTaggedGoodByTagName(ServerTagConstants.GOOD_EVENT));
                                    if(!(_loc12_ && Boolean(_loc2_)))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc12_ && Boolean(_loc3_)))
                                       {
                                          addr041d:
                                          _loc7_ = §§pop();
                                          if(!_loc12_)
                                          {
                                             addr042d:
                                             addr042a:
                                             if(_loc5_.goodConfig.isMedal)
                                             {
                                                if(_loc13_)
                                                {
                                                   addr0443:
                                                   §§push(_loc5_.outputAmount);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(!(_loc12_ && Boolean(_loc3_)))
                                                   {
                                                      §§goto(addr0452);
                                                   }
                                                   else
                                                   {
                                                      addr04ac:
                                                      _loc6_ = new DropIconVO(_loc5_.assistConfig.type,this._startPoint);
                                                   }
                                                }
                                                else
                                                {
                                                   addr049b:
                                                   addr04a0:
                                                   if(_loc5_.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                                                   {
                                                      §§goto(addr04ac);
                                                   }
                                                }
                                                §§goto(addr04c3);
                                             }
                                             §§goto(addr0452);
                                          }
                                          §§goto(addr04ac);
                                       }
                                       §§goto(addr042d);
                                    }
                                    §§goto(addr041d);
                                 }
                                 §§goto(addr042a);
                              }
                              §§goto(addr049b);
                           }
                           else
                           {
                              §§push(_loc5_.assistConfig);
                              if(_loc13_ || Boolean(_loc3_))
                              {
                                 if(§§pop() != null)
                                 {
                                    if(_loc13_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr049b);
                                    }
                                    §§goto(addr04ac);
                                 }
                                 §§goto(addr04c3);
                              }
                           }
                           §§goto(addr04a0);
                        }
                        §§goto(addr042a);
                     }
                  }
                  §§goto(addr03e4);
               }
               §§goto(addr0443);
            }
            §§goto(addr00ef);
         }
         §§goto(addr056b);
      }
   }
}

