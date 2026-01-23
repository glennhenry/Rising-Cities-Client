package net.bigpoint.cityrama.view.field.ui.components.urbies.walkers
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.FriendlyWalker;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   
   public class FriendlyRisy extends FriendlyWalker
   {
      
      public static const CELL_CHANGED:String = "CELL_CHANGED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         CELL_CHANGED = "CELL_CHANGED";
      }
      
      public var urbiObj:UrbieObject;
      
      public function FriendlyRisy(param1:String, param2:String)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function cellChanged() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.cellChanged();
            if(!_loc1_)
            {
               dispatchEvent(new Event(CELL_CHANGED,false,true));
            }
         }
      }
      
      override public function cellUpdate() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:IWalker = null;
         if(!_loc7_)
         {
            if(!friends.length)
            {
               if(_loc6_ || Boolean(_loc1_))
               {
                  §§goto(addr0036);
               }
            }
            var _loc2_:Point = this.getMovingDirection();
            var _loc3_:IntPoint = new IntPoint(Math.floor((this.urbiObj.x + this.urbiObj.width / 2 + _loc2_.x) / PathWalkManager.instance.terrain.tileSize),Math.floor((this.urbiObj.y + this.urbiObj.length / 2 + _loc2_.y) / PathWalkManager.instance.terrain.tileSize));
            for each(_loc1_ in PathWalkManager.instance.walkerContainer.walkers)
            {
               if(!(_loc6_ || Boolean(_loc1_)))
               {
                  continue;
               }
               if(friends.indexOf(getDefinitionByName(getQualifiedClassName(_loc1_))) == -1)
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     continue;
                  }
                  addr016d:
                  §§push(_loc1_.currentCell);
               }
               else
               {
                  if(_loc1_ === this)
                  {
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        continue;
                     }
                     addr01bf:
                     friendsMetList.push(_loc1_);
                     if(_loc7_ && Boolean(_loc2_))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr0171:
                     §§push(_loc1_.currentCell);
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop().x);
                        if(!_loc7_)
                        {
                           §§push(_loc3_.x);
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc7_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc7_)
                                 {
                                    addr0153:
                                    var _temp_8:* = §§pop();
                                    §§push(_temp_8);
                                    if(!_temp_8)
                                    {
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          §§pop();
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr016d);
                                       }
                                    }
                                 }
                                 addr0186:
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    if(friendsMetList.indexOf(_loc1_) != -1)
                                    {
                                       continue;
                                    }
                                    if(_loc6_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr01bf);
                                    }
                                 }
                                 addr01d5:
                                 friendMet();
                                 continue;
                              }
                              §§goto(addr0153);
                           }
                           addr0176:
                           §§push(§§pop() == §§pop());
                           if(!(_loc7_ && Boolean(this)))
                           {
                              §§push(!§§pop());
                           }
                           §§goto(addr0186);
                        }
                        addr0173:
                        §§goto(addr0176);
                        §§push(_loc3_.y);
                     }
                     §§goto(addr0173);
                     §§push(§§pop().y);
                  }
                  §§goto(addr01d5);
               }
               §§goto(addr0171);
            }
            return;
         }
         addr0036:
      }
      
      private function getMovingDirection() : Point
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            §§push(nextCell == null);
            if(_loc3_ || Boolean(_loc1_))
            {
               §§push(!§§pop());
               if(!(_loc4_ && Boolean(this)))
               {
                  addr003e:
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr0070:
                           §§push(currentCell == null);
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 §§push(currentCell.x - nextCell.x);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc3_)
                                       {
                                          addr00b4:
                                          _loc2_ = currentCell.y - nextCell.y;
                                          addr00b3:
                                          addr009e:
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             return new Point(-18 * _loc1_,-18 * _loc2_);
                                          }
                                       }
                                       §§goto(addr00d1);
                                    }
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00b3);
                              }
                           }
                        }
                        addr00d1:
                        return new Point(0,0);
                     }
                  }
               }
               §§goto(addr0070);
            }
            §§goto(addr003e);
         }
         §§goto(addr009e);
      }
   }
}

