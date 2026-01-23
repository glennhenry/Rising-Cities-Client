package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.MovieClip;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   
   public class EstablishedManagerCitySquare extends EstablishedManagerDefault
   {
      
      public function EstablishedManagerCitySquare()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override protected function isDirty() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §§push(_source is PreloadableDisplayObject);
            if(!_loc3_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr0039);
                     }
                     §§goto(addr01b7);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr016e);
            }
            addr0039:
            §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push((_source as PreloadableDisplayObject).loadComplete);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(!§§pop());
                  if(_loc4_ || _loc1_)
                  {
                     addr006e:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           (_source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,handlePreloadComplete);
                           if(_loc3_)
                           {
                              addr009d:
                              §§push(this.citySquareData);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop().useConstructionAsset);
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§goto(addr00bf);
                                 }
                                 §§goto(addr0160);
                              }
                              §§goto(addr00d1);
                           }
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr009d);
                  }
                  addr00bf:
                  if(!§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(this.citySquareData);
                        if(!_loc3_)
                        {
                           addr00d1:
                           §§push(§§pop().currentEventState);
                           if(!_loc3_)
                           {
                              §§push(CitySquareFieldObjectVo.AVAILIBLE);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc3_)
                                    {
                                       var _temp_8:* = §§pop();
                                       §§push(_temp_8);
                                       §§push(_temp_8);
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§pop();
                                                if(_loc4_ || _loc1_)
                                                {
                                                   addr0119:
                                                   §§push(this.citySquareData);
                                                   if(_loc4_)
                                                   {
                                                      addr0123:
                                                      §§push(§§pop().currentEventState);
                                                      if(!_loc3_)
                                                      {
                                                         addr012b:
                                                         §§push(CitySquareFieldObjectVo.EXPIRED);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc4_)
                                                               {
                                                                  addr0160:
                                                                  var _temp_13:* = §§pop();
                                                                  §§push(_temp_13);
                                                                  §§push(_temp_13);
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     addr016e:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(this.citySquareData);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0190:
                                                                                 addr018a:
                                                                                 §§push(§§pop().currentEventState == CitySquareFieldObjectVo.NONE);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    addr019f:
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01a5:
                                                                                       var _temp_16:* = §§pop();
                                                                                       addr01a6:
                                                                                       §§push(_temp_16);
                                                                                       if(_temp_16)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr01b7:
                                                                                             §§pop();
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                addr01de:
                                                                                                addr01c9:
                                                                                                addr01c5:
                                                                                                §§push(this.citySquareData.currentEventStage == 0);
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   addr01dd:
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   try
                                                                                                   {
                                                                                                      addr01e2:
                                                                                                      (_source.presentation as MovieClip).gotoAndStop("stage_" + this.citySquareData.currentEventStage);
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         _currentSource = _source.presentation.getChildAt(1);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            _dimensionRect = _source.presentation.getChildAt(1).getBounds(_source.presentation);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               _dirty = true;
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr02d7:
                                                                                                               _dirty = true;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02de);
                                                                                                      }
                                                                                                   }
                                                                                                   catch(e:Error)
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   (_source.presentation as MovieClip).gotoAndStop(1);
                                                                                                   if(_loc4_ || Boolean(this))
                                                                                                   {
                                                                                                      _currentSource = _source.presentation.getChildAt(1);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         _dimensionRect = _source.presentation.getChildAt(1).getBounds(_source.presentation);
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr02d7);
                                                                                                         }
                                                                                                         §§goto(addr02de);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02d7);
                                                                                             }
                                                                                             §§goto(addr01e2);
                                                                                          }
                                                                                          §§goto(addr01dd);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01de);
                                                                                 }
                                                                                 §§goto(addr01b7);
                                                                              }
                                                                              §§goto(addr01c9);
                                                                           }
                                                                           §§goto(addr01e2);
                                                                        }
                                                                        §§goto(addr01dd);
                                                                     }
                                                                     §§goto(addr01a5);
                                                                  }
                                                                  §§goto(addr01a6);
                                                               }
                                                               §§goto(addr019f);
                                                            }
                                                            §§goto(addr01a5);
                                                         }
                                                         §§goto(addr0190);
                                                      }
                                                      §§goto(addr018a);
                                                   }
                                                   §§goto(addr01c9);
                                                }
                                                §§goto(addr01c5);
                                             }
                                             §§goto(addr01de);
                                          }
                                          §§goto(addr0160);
                                       }
                                       §§goto(addr016e);
                                    }
                                    §§goto(addr01dd);
                                 }
                                 §§goto(addr01de);
                              }
                              §§goto(addr0190);
                           }
                           §§goto(addr012b);
                        }
                        §§goto(addr0123);
                     }
                     §§goto(addr0119);
                  }
                  addr02de:
                  return;
               }
               §§goto(addr01b7);
            }
            addr008f:
            return;
         }
         §§goto(addr0119);
      }
      
      private function get citySquareData() : CitySquareFieldObjectVo
      {
         return _data as CitySquareFieldObjectVo;
      }
   }
}

