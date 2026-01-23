package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class EstablishedManagerClientFieldObject extends EstablishedManagerDefault
   {
      
      private var _clientFieldObjectVo:ClientFieldObjectVo;
      
      public function EstablishedManagerClientFieldObject()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
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
            this._clientFieldObjectVo = param1 as ClientFieldObjectVo;
            if(_loc4_)
            {
               _data = param1;
               if(!(_loc5_ && Boolean(param1)))
               {
                  _target = param2;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr006b:
                     _source = param3;
                     if(!(_loc5_ && Boolean(param2)))
                     {
                        addr0080:
                        invalidate();
                     }
                  }
                  return;
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr0080);
      }
      
      override protected function isDirty() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(_source == null)
            {
               if(!_loc2_)
               {
                  return;
               }
               addr0119:
               redraw();
            }
            else
            {
               §§push(_source is PreloadableDisplayObject);
               if(_loc1_ || Boolean(this))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§pop();
                        if(_loc1_ || Boolean(this))
                        {
                           addr0076:
                           §§push((_source as PreloadableDisplayObject).loadComplete);
                           if(_loc1_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 (_source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,handlePreloadComplete);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§goto(addr00a7);
                                 }
                                 else
                                 {
                                    _currentSource = _source.presentation.getChildAt(1);
                                    addr00c8:
                                    if(!_loc2_)
                                    {
                                       _dimensionRect = _source.presentation.getChildAt(1).getBounds(_source.presentation);
                                       if(!_loc2_)
                                       {
                                          §§goto(addr010d);
                                       }
                                       §§goto(addr0119);
                                    }
                                    addr010d:
                                    _dirty = true;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr0119);
                                    }
                                    §§goto(addr0120);
                                 }
                              }
                              §§goto(addr0120);
                           }
                           else
                           {
                              (_source.presentation as MovieClip).gotoAndStop(this._clientFieldObjectVo.assetFrame);
                              if(_loc1_)
                              {
                                 §§goto(addr00c8);
                              }
                           }
                        }
                        §§goto(addr010d);
                     }
                  }
               }
               §§goto(addr0076);
            }
            addr0120:
            return;
         }
         addr00a7:
      }
   }
}

