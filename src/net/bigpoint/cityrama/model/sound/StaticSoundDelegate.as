package net.bigpoint.cityrama.model.sound
{
   import org.puremvc.as3.patterns.facade.Facade;
   
   public class StaticSoundDelegate
   {
      
      public static const BUTTON_CLICK:String = "BTNCLICK";
      
      public static const OPEN_POPUP:String = "OPEN_POPUP";
      
      public static const RC_SPEND:String = "RC_SPEND";
      
      public static const DEXTRO_SPEND:String = "DEXTRO_SPEND";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         BUTTON_CLICK = "BTNCLICK";
         if(_loc1_ || _loc2_)
         {
            OPEN_POPUP = "OPEN_POPUP";
            if(!_loc2_)
            {
               addr0044:
               RC_SPEND = "RC_SPEND";
               if(_loc1_ || StaticSoundDelegate)
               {
                  DEXTRO_SPEND = "DEXTRO_SPEND";
               }
            }
         }
         return;
      }
      §§goto(addr0044);
      
      public function StaticSoundDelegate()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function playSound(param1:String) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:SoundProxy = Facade.getInstance().retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc3_:* = param1;
         if(_loc4_ || Boolean(param1))
         {
            §§push(BUTTON_CLICK);
            if(_loc4_ || Boolean(_loc3_))
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr0120:
                        §§push(3);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr0138);
                  }
                  else
                  {
                     §§push(OPEN_POPUP);
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           addr00b6:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(1);
                                 if(_loc5_ && StaticSoundDelegate)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0120);
                              }
                              §§goto(addr0138);
                           }
                           else
                           {
                              §§push(RC_SPEND);
                              if(!_loc5_)
                              {
                                 addr00dd:
                                 §§push(_loc3_);
                                 if(_loc4_ || StaticSoundDelegate)
                                 {
                                    addr00ec:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_ || Boolean(_loc3_))
                                       {
                                          addr010c:
                                          §§push(2);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0120);
                                       }
                                       §§goto(addr0138);
                                    }
                                    else
                                    {
                                       §§goto(addr011c);
                                    }
                                 }
                                 addr011c:
                              }
                              §§goto(addr011b);
                           }
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr00dd);
                  }
               }
               §§goto(addr00b6);
            }
            addr011b:
            if(DEXTRO_SPEND === _loc3_)
            {
               §§goto(addr0120);
            }
            else
            {
               §§push(4);
            }
            addr0138:
            switch(§§pop())
            {
               case 0:
               case 1:
                  _loc2_.playButtonClick();
                  if(_loc5_)
                  {
                  }
                  break;
               case 2:
               case 3:
                  _loc2_.playRCSpend();
                  if(_loc4_)
                  {
                  }
            }
            _loc2_ = null;
            return;
         }
         §§goto(addr010c);
      }
   }
}

