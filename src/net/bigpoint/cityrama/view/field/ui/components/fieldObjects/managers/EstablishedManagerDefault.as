package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManager;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   import net.bigpoint.util.RenderHelper;
   
   public class EstablishedManagerDefault implements IEstablishedManager
   {
      
      protected var _data:MatrixObject3dVo;
      
      protected var _billboardData:BillboardObjectVo;
      
      protected var _target:DisplayObjectContainer;
      
      protected var _source:*;
      
      protected var _currentSource:DisplayObjectContainer;
      
      protected var _dirty:Boolean;
      
      protected var _dimensionRect:Rectangle;
      
      protected var _listenerAdded:Boolean;
      
      public function EstablishedManagerDefault()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function prepare(param1:MatrixObject3dVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            this._data = param1;
            if(!(_loc5_ && Boolean(param1)))
            {
               this._billboardData = param1 as BillboardObjectVo;
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§goto(addr005a);
               }
               §§goto(addr0085);
            }
         }
         addr005a:
         this._target = param2;
         if(!(_loc5_ && Boolean(param2)))
         {
            this._source = param3;
            if(_loc4_)
            {
               addr0085:
               this._listenerAdded = false;
               if(!(_loc5_ && Boolean(param1)))
               {
                  addr0098:
                  this.invalidate();
               }
               §§goto(addr009d);
            }
            §§goto(addr0098);
         }
         addr009d:
      }
      
      public function invalidate() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.nullcheck("EstablishedManagerDefault, prepare before invalidate!");
            if(!(_loc2_ && _loc2_))
            {
               this.isDirty();
               if(_loc1_)
               {
                  if(this._dirty)
                  {
                     if(_loc1_)
                     {
                        addr004e:
                        this.redraw();
                     }
                  }
                  §§goto(addr0053);
               }
            }
            §§goto(addr004e);
         }
         addr0053:
      }
      
      protected function handlePreloadComplete(param1:*) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            (this._source as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
            if(_loc2_ || _loc2_)
            {
               addr004d:
               this.invalidate();
            }
            return;
         }
         §§goto(addr004d);
      }
      
      protected function isDirty() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ExpansionFieldObjectVo = null;
         if(!_loc3_)
         {
            §§push(this._source is PreloadableDisplayObject);
            if(_loc2_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               §§push(_temp_1);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc2_ || Boolean(this))
                        {
                           §§push((this._source as PreloadableDisplayObject).loadComplete);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(!§§pop());
                              if(_loc2_ || _loc3_)
                              {
                                 addr006c:
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       §§push(this._listenerAdded);
                                       if(_loc2_)
                                       {
                                          addr0086:
                                          if(!§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                (this._source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
                                                if(_loc2_)
                                                {
                                                   this._listenerAdded = true;
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr00b3);
                                                   }
                                                   else
                                                   {
                                                      addr00b9:
                                                      §§push(this._billboardData);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() == null);
                                                         if(_loc2_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc2_)
                                                            {
                                                               addr00cf:
                                                               var _temp_6:* = §§pop();
                                                               §§push(_temp_6);
                                                               §§push(_temp_6);
                                                               if(_loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§pop();
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           §§push(this._billboardData);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop().useConstructionAsset);
                                                                              if(!(_loc3_ && Boolean(_loc1_)))
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr011b:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          (this._source.presentation as MovieClip).gotoAndStop(this._billboardData.currentLevel);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr0147:
                                                                                             this._currentSource = this._source.presentation.getChildAt(1);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   §§goto(addr0193);
                                                                                                }
                                                                                                §§goto(addr019d);
                                                                                             }
                                                                                             §§goto(addr0261);
                                                                                          }
                                                                                          §§goto(addr02a6);
                                                                                       }
                                                                                       addr0193:
                                                                                       this._dirty = true;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr019d:
                                                                                          var _temp_13:* = this._source;
                                                                                          §§push(_temp_13);
                                                                                          if(_temp_13)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!(_loc3_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                addr01b9:
                                                                                                addr01b5:
                                                                                                §§push(!this._billboardData);
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   addr01c8:
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr01cf:
                                                                                                      var _temp_16:* = §§pop();
                                                                                                      §§push(_temp_16);
                                                                                                      §§push(_temp_16);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         addr01d5:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               addr01e6:
                                                                                                               §§pop();
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push((this._source as PreloadableDisplayObject).loadComplete);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr01fc:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr020b:
                                                                                                                        var _temp_19:* = §§pop();
                                                                                                                        addr020c:
                                                                                                                        §§push(_temp_19);
                                                                                                                        if(_temp_19)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              addr0215:
                                                                                                                              §§pop();
                                                                                                                              if(_loc2_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§goto(addr0223);
                                                                                                                              }
                                                                                                                              §§goto(addr0283);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0232);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0215);
                                                                                                               }
                                                                                                               §§goto(addr02a6);
                                                                                                            }
                                                                                                            §§goto(addr0215);
                                                                                                         }
                                                                                                         §§goto(addr020b);
                                                                                                      }
                                                                                                      §§goto(addr020c);
                                                                                                   }
                                                                                                   §§goto(addr0232);
                                                                                                }
                                                                                                §§goto(addr01e6);
                                                                                             }
                                                                                             §§goto(addr02a6);
                                                                                          }
                                                                                          §§goto(addr01c8);
                                                                                       }
                                                                                       §§goto(addr0223);
                                                                                    }
                                                                                    §§goto(addr019d);
                                                                                 }
                                                                                 §§goto(addr0232);
                                                                              }
                                                                              §§goto(addr01cf);
                                                                           }
                                                                           §§goto(addr01b9);
                                                                        }
                                                                        §§goto(addr0295);
                                                                     }
                                                                     §§goto(addr01fc);
                                                                  }
                                                                  §§goto(addr011b);
                                                               }
                                                               §§goto(addr01d5);
                                                            }
                                                            §§goto(addr01e6);
                                                         }
                                                         §§goto(addr0215);
                                                      }
                                                      §§goto(addr01b9);
                                                   }
                                                }
                                                addr0223:
                                                §§push(this._target.numChildren == 0);
                                                if(!_loc3_)
                                                {
                                                   addr0232:
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         this._currentSource = this._source.presentation.getChildAt(1);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr0261:
                                                            this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
                                                            if(!_loc3_)
                                                            {
                                                               addr0283:
                                                               this._dirty = true;
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  addr0295:
                                                                  §§push(this._data);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr02a2);
                                                                  }
                                                                  §§goto(addr02aa);
                                                               }
                                                               §§goto(addr02a6);
                                                            }
                                                            §§goto(addr0295);
                                                         }
                                                         §§goto(addr0283);
                                                      }
                                                      §§goto(addr02a6);
                                                   }
                                                   §§goto(addr0295);
                                                }
                                                §§goto(addr02a2);
                                             }
                                             §§goto(addr01b5);
                                          }
                                          §§goto(addr00b3);
                                       }
                                       §§goto(addr00cf);
                                    }
                                    addr00b3:
                                    return;
                                 }
                                 §§goto(addr00b9);
                              }
                           }
                           addr02a2:
                           if(§§pop() is ExpansionFieldObjectVo)
                           {
                              addr02aa:
                              _loc1_ = this._data as ExpansionFieldObjectVo;
                              addr02a6:
                              if(!_loc3_)
                              {
                                 if(_loc1_.config.gfxId > 1000)
                                 {
                                    if(!_loc3_)
                                    {
                                       (this._source.presentation as MovieClip).gotoAndStop("Expansion" + _loc1_.configPlayfieldItemVo.gfxId);
                                       if(_loc2_)
                                       {
                                          this._currentSource = this._source.presentation.getChildAt(1);
                                          addr02e9:
                                          if(_loc2_)
                                          {
                                             this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
                                             if(!_loc3_)
                                             {
                                                addr032f:
                                                this._dirty = true;
                                             }
                                             §§goto(addr0334);
                                          }
                                          §§goto(addr032f);
                                       }
                                       §§goto(addr0334);
                                    }
                                    §§goto(addr02e9);
                                 }
                              }
                           }
                           addr0334:
                           return;
                        }
                        §§goto(addr0261);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr020c);
            }
            §§goto(addr01cf);
         }
         §§goto(addr0147);
      }
      
      protected function redraw() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(this._target.numChildren <= 0)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr0099);
            }
            this._target.removeChildAt(0);
         }
         while(!_loc1_);
         
         this._target.addChild(RenderHelper.getRendered(this._currentSource,this._dimensionRect));
         if(_loc2_)
         {
            if(this._target is SmartObjectContainer)
            {
               if(_loc2_ || Boolean(this))
               {
                  (this._target as SmartObjectContainer).invalidate();
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr0099:
                     this._dirty = false;
                     §§goto(addr009e);
                  }
               }
               addr009e:
               return;
            }
         }
         §§goto(addr0099);
      }
      
      private function nullcheck(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this._data == null);
            if(!(_loc2_ && Boolean(this)))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(!_temp_4)
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§goto(addr0060);
                     }
                     §§goto(addr0069);
                  }
               }
            }
            addr0060:
            if(this._target == null)
            {
               if(!_loc2_)
               {
                  addr0069:
                  throw new RamaCityError(param1);
               }
            }
            §§goto(addr0072);
         }
         addr0072:
      }
   }
}

