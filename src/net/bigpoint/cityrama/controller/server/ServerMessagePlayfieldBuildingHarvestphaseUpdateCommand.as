package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.RandomHarvestPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingHarvestphaseUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingHarvestphaseUpdateCommand()
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
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:Object = null;
         var _loc8_:PhaseDTO = null;
         var _loc9_:PhaseDTO = null;
         var _loc10_:Vector.<PhaseDTO> = null;
         var _loc11_:* = 0;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         if(!_loc17_)
         {
            if(_loc4_)
            {
               if(!_loc17_)
               {
                  addr0084:
                  if(_loc2_.json.upc)
                  {
                     if(_loc16_)
                     {
                        _loc4_.billboardObjectVo.buildingDTO.upgradeCount = _loc2_.json.upc;
                     }
                  }
               }
               var _loc12_:int = 0;
               var _loc13_:* = _loc2_.json.ph;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc13_,_loc12_));
                  if(_loc17_ && Boolean(this))
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     if(_loc16_)
                     {
                        if(_loc16_ || Boolean(_loc3_))
                        {
                           if(!_loc17_)
                           {
                              _loc12_ = 0;
                              if(_loc16_ || Boolean(this))
                              {
                                 _loc13_ = _loc5_;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc13_,_loc12_));
                                    break loop0;
                                 }
                                 addr0403:
                                 addr03fc:
                              }
                              addr0405:
                              if(_loc16_ || Boolean(param1))
                              {
                                 if(_loc4_ is IBuildUpManagerImplementation)
                                 {
                                    if(!(_loc17_ && Boolean(_loc2_)))
                                    {
                                       (_loc4_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
                                       if(!_loc17_)
                                       {
                                          addr044b:
                                          §§push(_loc4_.billboardObjectVo);
                                          if(_loc16_)
                                          {
                                             §§pop().userInteractionLocked = false;
                                             if(_loc16_ || Boolean(_loc2_))
                                             {
                                                addr046b:
                                                _loc4_.billboardObjectVo.invalidate();
                                                addr0467:
                                                if(_loc16_)
                                                {
                                                   addr0475:
                                                   _loc4_.invalidateIconStateManager(false);
                                                }
                                             }
                                             §§goto(addr047c);
                                          }
                                          §§goto(addr046b);
                                       }
                                       §§goto(addr0467);
                                    }
                                    §§goto(addr0475);
                                 }
                                 §§goto(addr044b);
                              }
                           }
                           §§goto(addr047c);
                        }
                        §§goto(addr0405);
                     }
                     §§goto(addr0403);
                  }
                  else
                  {
                     _loc7_ = §§nextvalue(_loc12_,_loc13_);
                     if(!_loc17_)
                     {
                        §§push(0);
                        if(!_loc17_)
                        {
                           var _loc14_:* = §§pop();
                           if(_loc16_ || Boolean(this))
                           {
                              §§push(_loc4_.billboardObjectVo);
                              if(!_loc17_)
                              {
                                 var _loc15_:* = §§pop().configPlayfieldItemVo.activePhases;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc15_,_loc14_));
                                    if(!(_loc16_ || Boolean(this)))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       _loc6_ = §§nextvalue(_loc14_,_loc15_);
                                       if(_loc6_.phaseId == _loc7_.pid)
                                       {
                                          if(_loc16_ || Boolean(this))
                                          {
                                             if(_loc6_.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST)
                                             {
                                                if(_loc16_)
                                                {
                                                   _loc5_.push(new RandomHarvestPhaseDTO(_loc7_,_loc6_));
                                                   if(_loc17_ && Boolean(this))
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc5_.push(new PhaseDTO(_loc7_,_loc6_));
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    if(!_loc17_)
                                    {
                                       if(!(_loc17_ && Boolean(_loc3_)))
                                       {
                                          if(_loc17_ && Boolean(this))
                                          {
                                             continue loop0;
                                          }
                                          §§push(0);
                                          if(!(_loc17_ && Boolean(param1)))
                                          {
                                             _loc14_ = §§pop();
                                             if(!(_loc17_ && Boolean(_loc2_)))
                                             {
                                                §§push(_loc4_.billboardObjectVo);
                                                if(_loc16_)
                                                {
                                                   addr01cd:
                                                   _loc15_ = §§pop().configPlayfieldItemVo.constructionPhases;
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc15_,_loc14_));
                                                      if(!_loc16_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         _loc6_ = §§nextvalue(_loc14_,_loc15_);
                                                         if(_loc6_.phaseId == _loc7_.pid)
                                                         {
                                                            if(_loc16_ || Boolean(param1))
                                                            {
                                                               _loc5_.push(new PhaseDTO(_loc7_,_loc6_));
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      if(_loc16_ || Boolean(_loc2_))
                                                      {
                                                         addr0238:
                                                         if(!_loc17_)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            _loc14_ = 0;
                                                            if(!_loc17_)
                                                            {
                                                               addr0256:
                                                               _loc15_ = _loc4_.billboardObjectVo.configPlayfieldItemVo.destructionPhases;
                                                               addr0252:
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc15_,_loc14_));
                                                                  break loop4;
                                                               }
                                                               addr0299:
                                                               addr0292:
                                                            }
                                                         }
                                                         addr029b:
                                                         continue loop0;
                                                      }
                                                      §§goto(addr0299);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr0256);
                                             }
                                             §§goto(addr029b);
                                          }
                                          §§goto(addr024a);
                                       }
                                       §§goto(addr029b);
                                    }
                                    §§goto(addr0238);
                                 }
                                 while(§§pop())
                                 {
                                    _loc6_ = §§nextvalue(_loc14_,_loc15_);
                                    if(_loc6_.phaseId == _loc7_.pid)
                                    {
                                       if(!_loc17_)
                                       {
                                          _loc5_.push(new PhaseDTO(_loc7_,_loc6_));
                                       }
                                    }
                                    §§goto(addr0292);
                                 }
                                 §§goto(addr0299);
                              }
                              §§goto(addr01cd);
                           }
                           §§goto(addr0252);
                        }
                        §§goto(addr024a);
                     }
                     §§goto(addr0248);
                  }
               }
               while(§§pop())
               {
                  _loc8_ = §§nextvalue(_loc12_,_loc13_);
                  if(_loc16_ || Boolean(_loc2_))
                  {
                     _loc14_ = 0;
                     if(_loc16_)
                     {
                        loop6:
                        for each(_loc9_ in _loc4_.billboardObjectVo.activePhases)
                        {
                           if(_loc9_.phaseId == _loc8_.phaseId)
                           {
                              _loc10_ = new Vector.<PhaseDTO>();
                              if(_loc16_)
                              {
                                 §§push(0);
                                 if(_loc16_ || Boolean(_loc3_))
                                 {
                                    _loc11_ = §§pop();
                                    if(_loc16_ || Boolean(_loc2_))
                                    {
                                    }
                                    while(true)
                                    {
                                       §§push(_loc11_);
                                    }
                                    addr03bc:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= _loc4_.billboardObjectVo.activePhases.length)
                                    {
                                       if(_loc16_)
                                       {
                                          §§push(_loc4_.billboardObjectVo);
                                          break;
                                       }
                                       continue loop6;
                                    }
                                    §§push(_loc4_.billboardObjectVo);
                                    if(_loc17_)
                                    {
                                       break;
                                    }
                                    if(§§pop().activePhases[_loc11_].phaseId != _loc9_.phaseId)
                                    {
                                       if(!_loc17_)
                                       {
                                          _loc10_.push(_loc4_.billboardObjectVo.activePhases[_loc11_]);
                                          if(!(_loc17_ && Boolean(_loc2_)))
                                          {
                                             addr03b4:
                                             _loc11_++;
                                             if(!_loc16_)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          §§goto(addr03bc);
                                       }
                                    }
                                    §§goto(addr03b4);
                                 }
                                 §§pop().activePhases = _loc10_;
                              }
                           }
                        }
                     }
                     if(!_loc17_)
                     {
                        addr03eb:
                        _loc4_.billboardObjectVo.buildingDTO.activePhases.push(_loc8_);
                     }
                     §§goto(addr03fc);
                  }
                  §§goto(addr03eb);
               }
               §§goto(addr0403);
            }
            addr047c:
            return;
         }
         §§goto(addr0084);
      }
   }
}

