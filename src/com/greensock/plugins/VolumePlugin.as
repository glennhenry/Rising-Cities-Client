package com.greensock.plugins
{
   import com.greensock.*;
   import flash.media.SoundTransform;
   
   public class VolumePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         API = 1;
      }
      
      protected var _target:Object;
      
      protected var _st:SoundTransform;
      
      public function VolumePlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc2_)
            {
               this.propName = "volume";
               if(_loc2_)
               {
                  addr003c:
                  this.overwriteProps = ["volume"];
               }
               return;
            }
         }
         §§goto(addr003c);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(isNaN(param2));
            if(_loc4_ || param2)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(!(_loc5_ && Boolean(this)))
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || Boolean(param3))
                     {
                        §§pop();
                        if(_loc4_ || Boolean(param3))
                        {
                           §§push(Boolean(param1.hasOwnProperty("volume")));
                           if(!_loc5_)
                           {
                              addr0085:
                              var _temp_7:* = §§pop();
                              addr0086:
                              §§push(_temp_7);
                              if(!_temp_7)
                              {
                                 if(!_loc5_)
                                 {
                                    addr0090:
                                    §§pop();
                                    if(_loc4_)
                                    {
                                       addr0097:
                                       §§push(!param1.hasOwnProperty("soundTransform"));
                                       if(!_loc5_)
                                       {
                                          addr00a6:
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(false);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr00c1);
                                                }
                                             }
                                             else
                                             {
                                                addr00c8:
                                                _target = param1;
                                                if(_loc4_)
                                                {
                                                   addr00d5:
                                                   _st = _target.soundTransform;
                                                   if(!_loc5_)
                                                   {
                                                      addr00e8:
                                                      addTween(_st,"volume",_st.volume,param2,"volume");
                                                   }
                                                   §§goto(addr0100);
                                                }
                                                §§goto(addr00e8);
                                             }
                                             §§goto(addr0100);
                                          }
                                          §§goto(addr00c8);
                                       }
                                       §§goto(addr0100);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 addr0100:
                                 return true;
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr00d5);
                     }
                     addr00c1:
                     return §§pop();
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0086);
            }
            §§goto(addr0085);
         }
         §§goto(addr0097);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            updateTweens(param1);
            if(!_loc3_)
            {
               _target.soundTransform = _st;
            }
         }
      }
   }
}

