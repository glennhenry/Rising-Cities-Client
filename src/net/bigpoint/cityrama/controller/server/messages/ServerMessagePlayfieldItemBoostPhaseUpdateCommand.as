package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.MysteryBuildingPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemBoostPhaseUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldItemBoostPhaseUpdateCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc6_:Object = null;
         var _loc7_:PhaseDTO = null;
         var _loc8_:PhaseDTO = null;
         var _loc9_:Vector.<PhaseDTO> = null;
         var _loc10_:* = 0;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = BillboardObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         var _loc11_:int = 0;
         var _loc12_:* = _loc2_.json.ph;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc12_,_loc11_));
            if(_loc16_)
            {
               break;
            }
            if(§§pop())
            {
               _loc6_ = §§nextvalue(_loc11_,_loc12_);
               if(_loc15_)
               {
                  _loc5_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc6_,_loc4_.billboardObjectVo.configPlayfieldItemVo));
               }
               continue;
            }
            if(_loc15_ || Boolean(this))
            {
               if(_loc15_ || Boolean(_loc2_))
               {
                  if(!(_loc16_ && Boolean(this)))
                  {
                     _loc11_ = 0;
                     if(!_loc16_)
                     {
                        addr00ee:
                        _loc12_ = _loc4_.billboardObjectVo.activePhases;
                        while(true)
                        {
                           §§push(§§hasnext(_loc12_,_loc11_));
                           break loop0;
                        }
                        addr041c:
                        addr0415:
                     }
                  }
                  return;
               }
               §§goto(addr00ee);
            }
            §§goto(addr041c);
         }
         while(§§pop())
         {
            _loc7_ = §§nextvalue(_loc11_,_loc12_);
            if(_loc15_)
            {
               var _loc13_:int = 0;
               if(_loc15_ || Boolean(this))
               {
                  loop2:
                  for each(_loc8_ in _loc5_)
                  {
                     if(!_loc16_)
                     {
                        if(_loc7_.phaseId != _loc8_.phaseId)
                        {
                           continue;
                        }
                        if(!_loc16_)
                        {
                           if(_loc8_ is MysteryBuildingPhaseDTO)
                           {
                              if(_loc15_ || Boolean(_loc2_))
                              {
                                 addr0165:
                                 MysteryBuildingPhaseDTO(_loc8_).mysteryResultFieldItemSize = MysteryBuildingPhaseDTO(_loc7_).mysteryResultFieldItemSize;
                                 if(!(_loc16_ && Boolean(this)))
                                 {
                                    addr018b:
                                    MysteryBuildingPhaseDTO(_loc8_).mysteryResultFieldItemConfigId = MysteryBuildingPhaseDTO(_loc7_).mysteryResultFieldItemConfigId;
                                 }
                              }
                           }
                           _loc9_ = new Vector.<PhaseDTO>();
                           if(!(_loc16_ && Boolean(this)))
                           {
                              §§push(0);
                              if(_loc15_)
                              {
                                 _loc10_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc10_);
                                 }
                                 addr022e:
                              }
                              while(true)
                              {
                                 if(§§pop() >= _loc4_.billboardObjectVo.activePhases.length)
                                 {
                                    if(_loc16_ && Boolean(this))
                                    {
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc4_.billboardObjectVo);
                                    if(_loc16_)
                                    {
                                       break;
                                    }
                                    if(§§pop().activePhases[_loc10_].phaseId != _loc7_.phaseId)
                                    {
                                       if(_loc15_)
                                       {
                                          _loc9_.push(_loc4_.billboardObjectVo.activePhases[_loc10_]);
                                          if(_loc15_ || Boolean(_loc2_))
                                          {
                                             addr0226:
                                             _loc10_++;
                                             if(!_loc16_)
                                             {
                                                §§goto(addr022e);
                                             }
                                          }
                                          addr024b:
                                          §§push(_loc4_.billboardObjectVo);
                                          if(_loc16_)
                                          {
                                             break;
                                          }
                                          §§pop().activePhases = _loc9_;
                                          if(!_loc16_)
                                          {
                                             §§push(_loc4_.billboardObjectVo);
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr022e);
                                    }
                                    §§goto(addr0226);
                                 }
                                 §§goto(addr024b);
                              }
                              §§pop().activePhases.push(_loc8_);
                           }
                           continue;
                        }
                        §§goto(addr0165);
                     }
                     §§goto(addr018b);
                  }
               }
               if(_loc15_ || Boolean(_loc3_))
               {
                  _loc4_.billboardObjectVo.invalidate();
                  if(!(_loc16_ && Boolean(_loc3_)))
                  {
                     _loc4_.invalidateIconStateManager(false);
                     if(_loc15_ || Boolean(_loc2_))
                     {
                        addr02b0:
                        §§push(_loc4_ is ProductionFieldObject);
                        if(_loc15_ || Boolean(param1))
                        {
                           if(§§pop())
                           {
                              if(!_loc16_)
                              {
                                 §§push((_loc4_ as ProductionFieldObject).productionFieldObjectVo);
                                 if(_loc15_ || Boolean(this))
                                 {
                                    §§push(§§pop().currentProductionPhase);
                                    if(_loc15_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc16_ && Boolean(param1)))
                                          {
                                             addr0300:
                                             §§push((_loc4_ as ProductionFieldObject).productionFieldObjectVo);
                                             if(_loc15_ || Boolean(param1))
                                             {
                                                addr031a:
                                                if(§§pop().currentProductionPhase == null)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      §§push((_loc4_ as ProductionFieldObject).productionFieldObjectVo);
                                                      if(!(_loc16_ && Boolean(param1)))
                                                      {
                                                         addr033c:
                                                         §§pop().startProductionTime();
                                                         if(!_loc16_)
                                                         {
                                                            addr035e:
                                                            sendNotification(ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED);
                                                            if(_loc16_ && Boolean(_loc3_))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr040b:
                                                            sendNotification(ApplicationNotificationConstants.ACADEMY_STATE_CHANGED);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0353:
                                                         §§pop().updateProductionTime();
                                                         if(_loc15_)
                                                         {
                                                            §§goto(addr035e);
                                                         }
                                                         else
                                                         {
                                                            addr03ca:
                                                            sendNotification(ApplicationNotificationConstants.MYSTERY_BUILDING_STATE_CHANGED);
                                                            if(_loc16_ && Boolean(_loc3_))
                                                            {
                                                               §§goto(addr040b);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr0415);
                                                   }
                                                   §§goto(addr035e);
                                                }
                                                else
                                                {
                                                   §§push((_loc4_ as ProductionFieldObject).productionFieldObjectVo);
                                                }
                                             }
                                             §§goto(addr0353);
                                          }
                                          §§goto(addr0415);
                                       }
                                       §§goto(addr035e);
                                    }
                                    §§goto(addr031a);
                                 }
                                 §§goto(addr033c);
                              }
                              §§goto(addr040b);
                           }
                           else
                           {
                              §§push(_loc4_ is ResidentialFieldObject);
                              if(_loc15_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc15_)
                                    {
                                       sendNotification(ApplicationNotificationConstants.RESIDENTIAL_BUILDING_STATE_CHANGED);
                                       if(_loc15_ || Boolean(_loc3_))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc4_ is MysteryBuildingFieldObject);
                                    if(_loc15_)
                                    {
                                       addr03b8:
                                       if(§§pop())
                                       {
                                          if(!(_loc16_ && Boolean(_loc2_)))
                                          {
                                             §§goto(addr03ca);
                                          }
                                       }
                                       else
                                       {
                                          addr03f9:
                                          if(_loc4_ is AcademyFieldObject)
                                          {
                                             if(_loc15_ || Boolean(_loc3_))
                                             {
                                                §§goto(addr040b);
                                             }
                                          }
                                       }
                                       §§goto(addr0415);
                                    }
                                    §§goto(addr03f9);
                                 }
                                 §§goto(addr0415);
                              }
                              §§goto(addr03b8);
                           }
                        }
                        §§goto(addr03b8);
                     }
                     §§goto(addr0300);
                  }
                  §§goto(addr02b0);
               }
            }
            §§goto(addr0415);
         }
         §§goto(addr041c);
      }
   }
}

