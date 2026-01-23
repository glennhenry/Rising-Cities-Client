package net.bigpoint.cityrama.controller.field
{
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.controller.EventAssetPackageLoaderFactory;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CitySquareInfieldOperationCommand extends SimpleCommand implements ICommand
   {
      
      private var _currentAsset:PreloadableDisplayObject;
      
      private var _citySquareDirty:Boolean;
      
      public function CitySquareInfieldOperationCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc7_:GameConfigProxy = null;
         var _loc8_:TimerProxy = null;
         var _loc9_:EventQuestVo = null;
         var _loc10_:* = NaN;
         var _loc11_:ProductionFieldObject = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:CitySquareFieldObject = _loc2_.getCitySquare();
         var _loc4_:FileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         if(_loc15_)
         {
            if(_loc3_ == null)
            {
               if(_loc15_)
               {
                  §§goto(addr006d);
               }
            }
            else
            {
               this._citySquareDirty = false;
            }
            var _loc5_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
            var _loc6_:CvTagProxy = super.facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
            if(!_loc14_)
            {
               if(_loc5_.expiredEventQuest != null)
               {
                  if(_loc15_ || Boolean(this))
                  {
                     §§push(this);
                     §§push(_loc3_.citySquareFieldObjectVo.currentEventState == CitySquareFieldObjectVo.EXPIRED);
                     if(!(_loc14_ && Boolean(this)))
                     {
                        §§push(!§§pop());
                     }
                     §§pop()._citySquareDirty = §§pop();
                     if(_loc15_)
                     {
                        addr00e5:
                        _loc7_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                        _loc8_ = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                        _loc9_ = _loc5_.expiredEventQuest;
                        §§push(_loc9_.quests[0].questDto.endTimeStamp + _loc7_.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value);
                        if(!(_loc14_ && Boolean(param1)))
                        {
                           _loc10_ = §§pop();
                           if(_loc15_)
                           {
                              §§push(Boolean(_loc9_));
                              if(_loc15_)
                              {
                                 var _temp_6:* = §§pop();
                                 §§push(_temp_6);
                                 if(_temp_6)
                                 {
                                    if(!(_loc14_ && Boolean(_loc3_)))
                                    {
                                       addr0169:
                                       §§pop();
                                       if(!_loc14_)
                                       {
                                          addr0178:
                                          addr0175:
                                          if(_loc8_.currentTimeStamp < _loc10_)
                                          {
                                             if(!(_loc14_ && Boolean(_loc3_)))
                                             {
                                                addr018a:
                                                §§push(_loc3_.citySquareFieldObjectVo);
                                                if(_loc15_)
                                                {
                                                   §§push(CitySquareFieldObjectVo.EXPIRED);
                                                   if(!_loc14_)
                                                   {
                                                      §§pop().currentEventState = §§pop();
                                                      if(_loc15_ || Boolean(param1))
                                                      {
                                                      }
                                                      addr01d0:
                                                      this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,true,true));
                                                   }
                                                   else
                                                   {
                                                      addr01bf:
                                                      §§pop().currentEventState = §§pop();
                                                      if(!(_loc14_ && Boolean(_loc2_)))
                                                      {
                                                         §§goto(addr01d0);
                                                      }
                                                   }
                                                   §§goto(addr05d2);
                                                }
                                                else
                                                {
                                                   addr01b9:
                                                   §§push(CitySquareFieldObjectVo.NONE);
                                                }
                                                §§goto(addr01bf);
                                             }
                                             §§goto(addr05d2);
                                          }
                                          else
                                          {
                                             §§push(_loc3_.citySquareFieldObjectVo);
                                          }
                                          §§goto(addr01b9);
                                       }
                                       §§goto(addr018a);
                                    }
                                 }
                                 §§goto(addr0178);
                              }
                              §§goto(addr0169);
                           }
                           §§goto(addr01d0);
                        }
                        §§goto(addr0175);
                     }
                     else
                     {
                        addr03b1:
                        §§push(_loc3_.citySquareFieldObjectVo);
                        if(!_loc14_)
                        {
                           addr03bb:
                           §§push(_loc5_.runningEventQuest);
                           if(_loc15_)
                           {
                              §§pop().currentEventGfxId = §§pop().quests[0].config.gfxId;
                              if(!_loc14_)
                              {
                                 addr03e8:
                                 _loc3_.citySquareFieldObjectVo.currentEventStage = _loc5_.runningEventQuest.currentActiveStage;
                                 addr03e5:
                                 addr03e0:
                                 addr03dc:
                                 if(!_loc14_)
                                 {
                                    addr03f1:
                                    this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(EventAssetPackageLoaderFactory.SWF_LOADER_EVENT_PREFIX + _loc5_.runningEventQuest.quests[0].config.gfxId,_loc5_.runningEventQuest.quests[0].config.gfxId.toString() + "_FieldItem",true,true));
                                    if(!_loc14_)
                                    {
                                       addr0446:
                                       §§push(this._currentAsset);
                                       if(_loc15_ || Boolean(_loc2_))
                                       {
                                          addr0458:
                                          addr045b:
                                          if(!§§pop().loadComplete)
                                          {
                                             if(!_loc14_)
                                             {
                                                addr046f:
                                                this._currentAsset.addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.delayedChangeAsset);
                                                addr0469:
                                                addr0465:
                                             }
                                          }
                                          §§goto(addr0476);
                                       }
                                       §§goto(addr0469);
                                    }
                                    §§goto(addr0465);
                                 }
                                 §§goto(addr0446);
                              }
                              addr0476:
                              for each(_loc11_ in _loc2_.productionBuildingList)
                              {
                                 _loc11_.productionFieldObjectVo.currentRunningEventGFXId = _loc5_.currentRunningEventQuestGfxId;
                              }
                              if(_loc14_ && Boolean(_loc3_))
                              {
                              }
                              §§goto(addr05d2);
                           }
                           §§goto(addr03e5);
                        }
                        §§goto(addr03e0);
                     }
                  }
                  §§goto(addr00e5);
               }
               else if(_loc5_.finishedEventQuest != null)
               {
                  if(_loc15_ || Boolean(_loc2_))
                  {
                     §§push(this);
                     §§push(_loc3_.citySquareFieldObjectVo.currentEventState == CitySquareFieldObjectVo.FINISHED);
                     if(!(_loc14_ && Boolean(this)))
                     {
                        §§push(!§§pop());
                     }
                     §§pop()._citySquareDirty = §§pop();
                     if(_loc15_ || Boolean(this))
                     {
                        §§push(_loc3_.citySquareFieldObjectVo);
                        if(_loc15_)
                        {
                           §§push(CitySquareFieldObjectVo.FINISHED);
                           if(_loc15_ || Boolean(this))
                           {
                              §§pop().currentEventState = §§pop();
                              if(!_loc14_)
                              {
                                 §§push(_loc3_.citySquareFieldObjectVo);
                                 if(!_loc14_)
                                 {
                                    addr027b:
                                    §§push(_loc5_.finishedEventQuest.currentRewardStage);
                                    if(!_loc14_)
                                    {
                                       §§pop().currentEventStage = §§pop();
                                       if(_loc15_)
                                       {
                                          this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(EventAssetPackageLoaderFactory.SWF_LOADER_EVENT_PREFIX + _loc5_.finishedEventQuest.quests[0].config.gfxId,_loc5_.finishedEventQuest.quests[0].config.gfxId.toString() + "_FieldItem",true,true));
                                          if(!(_loc14_ && Boolean(this)))
                                          {
                                             §§push(this._currentAsset);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop().loadComplete);
                                                if(_loc15_ || Boolean(_loc3_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc15_ || Boolean(_loc3_))
                                                      {
                                                         §§push(this._currentAsset);
                                                         if(!_loc14_)
                                                         {
                                                            addr0334:
                                                            §§push(PreloadableDisplayObject.PRELOADING_COMPLETE);
                                                            if(!_loc14_)
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.delayedChangeAsset);
                                                               if(_loc14_ && Boolean(param1))
                                                               {
                                                                  §§goto(addr03b1);
                                                               }
                                                               §§goto(addr05d2);
                                                            }
                                                            §§goto(addr046f);
                                                         }
                                                         §§goto(addr0458);
                                                      }
                                                      else
                                                      {
                                                         addr0371:
                                                         §§push(this);
                                                         §§push(_loc3_.citySquareFieldObjectVo.currentEventState == CitySquareFieldObjectVo.RUNNING);
                                                         if(_loc15_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         §§pop()._citySquareDirty = §§pop();
                                                         if(_loc15_)
                                                         {
                                                            §§push(_loc3_.citySquareFieldObjectVo);
                                                            if(!(_loc14_ && Boolean(_loc2_)))
                                                            {
                                                               addr03a8:
                                                               §§pop().currentEventState = CitySquareFieldObjectVo.RUNNING;
                                                               if(!_loc14_)
                                                               {
                                                                  §§goto(addr03b1);
                                                               }
                                                               §§goto(addr03f1);
                                                            }
                                                            §§goto(addr03bb);
                                                         }
                                                      }
                                                      §§goto(addr03dc);
                                                   }
                                                   §§goto(addr05d2);
                                                }
                                                §§goto(addr045b);
                                             }
                                             §§goto(addr0334);
                                          }
                                          §§goto(addr03dc);
                                       }
                                       §§goto(addr03b1);
                                    }
                                    §§goto(addr03e8);
                                 }
                                 §§goto(addr03bb);
                              }
                              §§goto(addr05d2);
                           }
                           §§goto(addr03a8);
                        }
                        §§goto(addr027b);
                     }
                     §§goto(addr0446);
                  }
                  §§goto(addr03b1);
               }
               else if(_loc5_.runningEventQuest != null)
               {
                  if(_loc15_ || Boolean(_loc2_))
                  {
                     §§goto(addr0371);
                  }
                  §§goto(addr0465);
               }
               else if(_loc5_.availableEventQuests.length != 0)
               {
                  if(!_loc14_)
                  {
                     §§push(this);
                     §§push(_loc3_.citySquareFieldObjectVo.currentEventState == CitySquareFieldObjectVo.AVAILIBLE);
                     if(!_loc14_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop()._citySquareDirty = §§pop();
                     if(_loc15_ || Boolean(_loc2_))
                     {
                        §§push(_loc3_.citySquareFieldObjectVo);
                        if(_loc15_)
                        {
                           §§push(CitySquareFieldObjectVo.AVAILIBLE);
                           if(!(_loc14_ && Boolean(_loc3_)))
                           {
                              §§pop().currentEventState = §§pop();
                              if(!_loc14_)
                              {
                                 this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,true,true));
                                 if(_loc14_ && Boolean(_loc2_))
                                 {
                                    addr05cf:
                                    _loc3_.citySquareFieldObjectVo.currentEventState = CitySquareFieldObjectVo.NONE;
                                    addr05c9:
                                    addr05c5:
                                 }
                              }
                              §§goto(addr05d2);
                           }
                           §§goto(addr05cf);
                        }
                        §§goto(addr05c9);
                     }
                     else
                     {
                        addr05a6:
                        §§push(this);
                        §§push(_loc3_.citySquareFieldObjectVo.currentEventState == CitySquareFieldObjectVo.NONE);
                        if(!_loc14_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop()._citySquareDirty = §§pop();
                        if(_loc15_)
                        {
                           §§goto(addr05c5);
                        }
                     }
                  }
               }
               else
               {
                  this._currentAsset = new PreloadableDisplayObject(new Sprite(),_loc4_.service.getLoaderForObjectInstance(_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,_loc3_.citySquareFieldObjectVo.configPlayfieldItemVo.animatedSwfName,true,true));
                  if(!(_loc14_ && Boolean(_loc2_)))
                  {
                     §§goto(addr05a6);
                  }
               }
               addr05d2:
               this.delayedChangeAsset();
               return;
            }
            §§goto(addr0371);
         }
         addr006d:
      }
      
      private function delayedChangeAsset(param1:Event = null) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || Boolean(this))
         {
            this._currentAsset.removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.delayedChangeAsset);
         }
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(_loc5_ || Boolean(this))
         {
            if(!_loc2_)
            {
               if(_loc5_)
               {
                  addr0069:
                  TweenMax.delayedCall(2,this.delayedChangeAsset);
                  if(!_loc6_)
                  {
                     return;
                  }
               }
            }
            var _loc3_:CitySquareFieldObject = _loc2_.getCitySquare();
            var _loc4_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
            if(_loc5_)
            {
               if(_loc3_ != null)
               {
                  if(!(_loc6_ && Boolean(this)))
                  {
                     addr00bd:
                     _loc3_.changeInfieldAsset(this._currentAsset);
                     if(!_loc6_)
                     {
                        _loc3_.invalidateEstablishedManager();
                        if(_loc5_)
                        {
                           addr00d8:
                           _loc3_.invalidateIconStateManager();
                        }
                        §§goto(addr00dd);
                     }
                  }
                  §§goto(addr00d8);
               }
               addr00dd:
               return;
            }
            §§goto(addr00bd);
         }
         §§goto(addr0069);
      }
   }
}

