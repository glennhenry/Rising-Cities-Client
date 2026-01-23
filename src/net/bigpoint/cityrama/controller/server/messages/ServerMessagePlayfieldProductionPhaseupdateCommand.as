package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldProductionPhaseupdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldProductionPhaseupdateCommand()
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
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc7_:Object = null;
         var _loc8_:PhaseDTO = null;
         var _loc9_:PhaseDTO = null;
         var _loc10_:Vector.<PhaseDTO> = null;
         var _loc11_:* = 0;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProductionFieldObject = ProductionFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         var _loc6_:Boolean = true;
         if(!(_loc16_ && Boolean(this)))
         {
            if(_loc4_.productionFieldObjectVo.currentProductionPhase != null)
            {
               if(!_loc16_)
               {
                  _loc6_ = false;
               }
            }
         }
         var _loc12_:int = 0;
         var _loc13_:* = _loc2_.json.ph;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc13_,_loc12_));
            if(_loc16_)
            {
               break;
            }
            if(§§pop())
            {
               _loc7_ = §§nextvalue(_loc12_,_loc13_);
               if(!(_loc16_ && Boolean(_loc2_)))
               {
                  _loc5_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc7_,_loc4_.billboardObjectVo.configPlayfieldItemVo));
               }
               continue;
            }
            if(_loc17_ || Boolean(this))
            {
               if(!(_loc16_ && Boolean(_loc3_)))
               {
                  if(_loc17_ || Boolean(_loc2_))
                  {
                     _loc12_ = 0;
                     if(!_loc16_)
                     {
                        addr0122:
                        _loc13_ = _loc4_.billboardObjectVo.activePhases;
                        while(true)
                        {
                           §§push(§§hasnext(_loc13_,_loc12_));
                           break loop0;
                        }
                        addr0240:
                        addr0239:
                     }
                     if(_loc17_)
                     {
                        if(_loc4_.billboardObjectVo.activePhases.length == 0)
                        {
                           if(!_loc16_)
                           {
                              addr025f:
                              _loc4_.billboardObjectVo.activePhases = _loc5_;
                              if(_loc17_)
                              {
                                 addr027a:
                                 if(_loc6_)
                                 {
                                    if(_loc17_)
                                    {
                                       §§goto(addr0286);
                                    }
                                    §§goto(addr02b0);
                                 }
                                 §§goto(addr0295);
                              }
                           }
                           addr0286:
                           _loc4_.productionFieldObjectVo.startProductionTime();
                           if(_loc17_)
                           {
                              addr0295:
                              _loc4_.billboardObjectVo.invalidate();
                              if(_loc17_)
                              {
                                 _loc4_.invalidateIconStateManager(false);
                                 if(_loc17_)
                                 {
                                    addr02b0:
                                    sendNotification(ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED);
                                 }
                                 §§goto(addr02ba);
                              }
                              §§goto(addr02b0);
                           }
                           addr02ba:
                           return;
                        }
                        §§goto(addr027a);
                     }
                  }
                  §§goto(addr025f);
               }
               §§goto(addr0122);
            }
            §§goto(addr0240);
         }
         while(§§pop())
         {
            _loc8_ = §§nextvalue(_loc12_,_loc13_);
            if(!(_loc16_ && Boolean(_loc3_)))
            {
               var _loc14_:int = 0;
               if(!_loc16_)
               {
                  loop2:
                  for each(_loc9_ in _loc5_)
                  {
                     if(_loc16_)
                     {
                        continue;
                     }
                     if(_loc8_.phaseId == _loc9_.phaseId)
                     {
                        if(_loc16_)
                        {
                           continue;
                        }
                        _loc10_ = new Vector.<PhaseDTO>();
                        if(!_loc16_)
                        {
                           §§push(0);
                           if(_loc17_)
                           {
                              _loc11_ = §§pop();
                              if(!(_loc16_ && Boolean(this)))
                              {
                                 while(true)
                                 {
                                    §§push(_loc11_);
                                    addr0203:
                                    while(true)
                                    {
                                       if(§§pop() >= _loc4_.billboardObjectVo.activePhases.length)
                                       {
                                          if(_loc17_)
                                          {
                                             break;
                                          }
                                          addr021f:
                                          _loc4_.billboardObjectVo.buildingDTO.activePhases.push(_loc9_);
                                          continue loop2;
                                       }
                                       if(_loc4_.billboardObjectVo.activePhases[_loc11_].phaseId != _loc8_.phaseId)
                                       {
                                          if(_loc17_)
                                          {
                                             _loc10_.push(_loc4_.billboardObjectVo.activePhases[_loc11_]);
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                    }
                                    addr0216:
                                    _loc4_.billboardObjectVo.activePhases = _loc10_;
                                    §§goto(addr021f);
                                 }
                                 addr0201:
                              }
                              while(true)
                              {
                                 _loc11_++;
                                 if(_loc16_)
                                 {
                                    break;
                                 }
                                 §§goto(addr0201);
                              }
                              §§goto(addr0216);
                           }
                           §§goto(addr0203);
                        }
                        §§goto(addr0201);
                     }
                     §§goto(addr021f);
                  }
               }
            }
            §§goto(addr0239);
         }
         §§goto(addr0240);
      }
   }
}

