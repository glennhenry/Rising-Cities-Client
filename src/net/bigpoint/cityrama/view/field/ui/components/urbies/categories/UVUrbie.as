package net.bigpoint.cityrama.view.field.ui.components.urbies.categories
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableUVObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUVMapStrategy;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUVMapable;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.UVMapStrategy;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.event.UVMapStrategyEvent;
   
   public class UVUrbie extends UrbieObject implements IUVMapable
   {
      
      private var _uvmapStrategy:IUVMapStrategy;
      
      private var _timeoutID:uint;
      
      public function UVUrbie(param1:PreloadableUVObject, param2:UrbieLifeVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(_loc4_)
            {
               _directionStrategy.addEventListener("directionSet",this.handleDirectionSet);
               if(!_loc3_)
               {
                  if(param2.icon)
                  {
                     if(_loc4_)
                     {
                        param2.icon.visible = false;
                        if(!(_loc3_ && Boolean(param2)))
                        {
                           §§goto(addr0065);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00ab);
                  }
                  addr0065:
                  this._uvmapStrategy = new UVMapStrategy(param1);
                  if(!_loc3_)
                  {
                     this._uvmapStrategy.addEventListener(UVMapStrategyEvent.STRATEGY_MAPPING_COMPLETE,this.handleMappingComplete,false,0,true);
                     if(_loc4_)
                     {
                        addr009d:
                        param2.walker.pausePath();
                        if(_loc4_)
                        {
                           addr00ab:
                           assetReady = false;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00bf:
                              this._timeoutID = setTimeout(this.cancelMapping,10000);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00bf);
                     }
                  }
                  addr00d3:
                  return;
               }
            }
            §§goto(addr009d);
         }
         §§goto(addr00bf);
      }
      
      private function cancelMapping() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            assetReady = true;
            if(!_loc2_)
            {
               SimpleWalker(this.urbieLifeVo.walker).pathComplete();
            }
         }
      }
      
      public function handleMappingComplete(param1:UVMapStrategyEvent = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            clearTimeout(this._timeoutID);
            if(_loc2_)
            {
               addr0030:
               super.framesetStrategy.setSheet(param1.compiledSheet);
               if(!_loc3_)
               {
                  urbieLifeVo.walker.resumePath();
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(directionStrategy.direction)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(directionStrategy.direction != "north")
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 directionStrategy.playDirectionAnimation(new Point(1,0));
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00db:
                                    assetReady = true;
                                    if(_loc2_ || Boolean(param1))
                                    {
                                       addr00ef:
                                       if(!urbieLifeVo.icon)
                                       {
                                       }
                                    }
                                    §§goto(addr00f9);
                                 }
                                 §§goto(addr00ef);
                              }
                              §§goto(addr00f9);
                           }
                           else
                           {
                              directionStrategy.playDirectionAnimation(new Point(-1,0));
                              if(!_loc3_)
                              {
                                 §§goto(addr00db);
                              }
                           }
                           §§goto(addr00ef);
                        }
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr00db);
            }
            addr00f9:
            return;
         }
         §§goto(addr0030);
      }
      
      public function handlePreloadingComplete(param1:Object) : void
      {
      }
      
      private function handleDirectionSet(param1:Event) : void
      {
      }
      
      override public function destroy() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.destroy();
            if(_loc2_ || _loc2_)
            {
               addr0032:
               this._uvmapStrategy.removeEventListener(UVMapStrategyEvent.STRATEGY_MAPPING_COMPLETE,this.handleMappingComplete);
            }
            return;
         }
         §§goto(addr0032);
      }
   }
}

