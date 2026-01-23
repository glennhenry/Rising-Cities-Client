package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class EstablishedManagerMysteryBuilding extends EstablishedManagerDefault
   {
      
      private var _mysteryBuildingVo:MysteryBuildingObjectVo;
      
      public function EstablishedManagerMysteryBuilding()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function prepare(param1:MatrixObject3dVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            super.prepare(param1,param2,param3);
            if(!(_loc5_ && Boolean(this)))
            {
               addr003e:
               this._mysteryBuildingVo = param1 as MysteryBuildingObjectVo;
            }
            return;
         }
         §§goto(addr003e);
      }
      
      override protected function isDirty() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(_source is PreloadableDisplayObject);
            if(_loc2_ || _loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_ || _loc2_)
                        {
                           §§push((_source as PreloadableDisplayObject).loadComplete);
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(!§§pop());
                              if(!_loc1_)
                              {
                                 addr0064:
                                 if(§§pop())
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       (_source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,handlePreloadComplete);
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          addr0165:
                                          addr0169:
                                          §§push(this._mysteryBuildingVo.unwrapProgressIsRunning);
                                          if(!_loc1_)
                                          {
                                             addr0179:
                                             addr0171:
                                             §§push(!§§pop());
                                             if(!_loc1_)
                                             {
                                                addr0177:
                                                §§push(§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   addr0182:
                                                   (_source.presentation as MovieClip).gotoAndStop(this._mysteryBuildingVo.mysteryResultFieldItemSize);
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      addr01ae:
                                                      _currentSource = _source.presentation.getChildAt(1);
                                                      if(_loc2_)
                                                      {
                                                         _dimensionRect = _source.presentation.getChildAt(1).getBounds(_source.presentation);
                                                         if(!_loc1_)
                                                         {
                                                            addr01e9:
                                                            _dirty = true;
                                                         }
                                                         §§goto(addr01f0);
                                                      }
                                                      §§goto(addr01e9);
                                                   }
                                                   §§goto(addr01f0);
                                                }
                                                §§goto(addr01e9);
                                             }
                                             §§goto(addr01f0);
                                          }
                                          §§goto(addr0177);
                                       }
                                    }
                                    return;
                                 }
                                 §§push(this._mysteryBuildingVo);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§push(§§pop() == null);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§push(!§§pop());
                                       if(!_loc1_)
                                       {
                                          var _temp_11:* = §§pop();
                                          §§push(_temp_11);
                                          §§push(_temp_11);
                                          if(_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§pop();
                                                   if(_loc2_)
                                                   {
                                                      §§push(this._mysteryBuildingVo);
                                                      if(_loc2_)
                                                      {
                                                         addr00f9:
                                                         §§push(!§§pop().useConstructionAsset);
                                                         if(!_loc1_)
                                                         {
                                                            addr0102:
                                                            var _temp_13:* = §§pop();
                                                            §§push(_temp_13);
                                                            §§push(_temp_13);
                                                            if(_loc2_)
                                                            {
                                                               addr0108:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     addr0111:
                                                                     §§pop();
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(this._mysteryBuildingVo);
                                                                        if(_loc2_)
                                                                        {
                                                                           var _temp_14:* = §§pop();
                                                                           §§push(_temp_14);
                                                                           if(_temp_14)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(this._mysteryBuildingVo);
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    addr013d:
                                                                                    §§push(§§pop().isHarvestReady);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr0146:
                                                                                       §§push(§§pop());
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr014d:
                                                                                          var _temp_16:* = §§pop();
                                                                                          addr014e:
                                                                                          §§push(_temp_16);
                                                                                          if(_temp_16)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§goto(addr0157);
                                                                                             }
                                                                                             §§goto(addr0177);
                                                                                          }
                                                                                          §§goto(addr0179);
                                                                                       }
                                                                                       addr0157:
                                                                                       §§pop();
                                                                                       if(_loc2_ || Boolean(this))
                                                                                       {
                                                                                          §§goto(addr0165);
                                                                                       }
                                                                                       §§goto(addr01f0);
                                                                                    }
                                                                                    §§goto(addr0177);
                                                                                 }
                                                                                 §§goto(addr0169);
                                                                              }
                                                                              addr01f0:
                                                                              return;
                                                                           }
                                                                           §§goto(addr0146);
                                                                        }
                                                                        §§goto(addr013d);
                                                                     }
                                                                     §§goto(addr01ae);
                                                                  }
                                                                  §§goto(addr014d);
                                                               }
                                                               §§goto(addr0179);
                                                            }
                                                            §§goto(addr014e);
                                                         }
                                                         §§goto(addr0179);
                                                      }
                                                      §§goto(addr0169);
                                                   }
                                                   §§goto(addr0182);
                                                }
                                                §§goto(addr014d);
                                             }
                                             §§goto(addr0102);
                                          }
                                          §§goto(addr0108);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr0157);
                                 }
                                 §§goto(addr00f9);
                                 §§goto(addr0179);
                              }
                              §§goto(addr0171);
                           }
                           §§goto(addr0157);
                        }
                        §§goto(addr01ae);
                     }
                     §§goto(addr0111);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr014e);
            }
            §§goto(addr0171);
         }
         §§goto(addr0182);
      }
   }
}

