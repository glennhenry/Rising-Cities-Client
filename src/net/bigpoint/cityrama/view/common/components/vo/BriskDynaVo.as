package net.bigpoint.cityrama.view.common.components.vo
{
   public class BriskDynaVo
   {
      
      public static const LIB_QUEST:String = "gui_popups_questPopup";
      
      public static const LIB_RESIDENTIAL_NEW:String = "gui_popups_residentialPopupNEW";
      
      public static const LIB_MINILAYER:String = "gui_popups_miniLayer";
      
      public static const LIB_FIELD_INFOLAYER:String = "gui_infield_gui_infolayer";
      
      public static const LIB_SMALL_GOOD_ICONS:String = "gui_popups_smallGoodIcons";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && BriskDynaVo))
      {
         LIB_QUEST = "gui_popups_questPopup";
         if(!_loc2_)
         {
            LIB_RESIDENTIAL_NEW = "gui_popups_residentialPopupNEW";
            if(!(_loc2_ && _loc2_))
            {
               LIB_MINILAYER = "gui_popups_miniLayer";
               if(!(_loc2_ && _loc2_))
               {
                  addr006d:
                  LIB_FIELD_INFOLAYER = "gui_infield_gui_infolayer";
                  if(_loc1_)
                  {
                     addr007b:
                     LIB_SMALL_GOOD_ICONS = "gui_popups_smallGoodIcons";
                  }
                  §§goto(addr0084);
               }
               §§goto(addr007b);
            }
            addr0084:
            return;
         }
         §§goto(addr006d);
      }
      §§goto(addr007b);
      
      private var _dynaSwfName:String;
      
      private var _dynaLibName:String;
      
      private var _dynaBmpName:String;
      
      public function BriskDynaVo(param1:String, param2:String, param3:String = "")
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param3))
         {
            super();
            if(_loc5_)
            {
               this._dynaSwfName = param3;
               if(_loc5_)
               {
                  this._dynaLibName = param1;
                  if(_loc5_ || Boolean(param3))
                  {
                     addr0057:
                     this._dynaBmpName = param2;
                  }
                  return;
               }
            }
         }
         §§goto(addr0057);
      }
      
      public function get dynaBmpName() : String
      {
         return this._dynaBmpName;
      }
      
      public function set dynaBmpName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._dynaBmpName = param1;
         }
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._dynaLibName = param1;
         }
      }
      
      public function get dynaSwfName() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this._dynaSwfName);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == "")
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr004c:
                     §§push(this._dynaLibName);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0056:
                     §§push(this._dynaSwfName);
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0056);
            }
            addr005a:
            return §§pop();
         }
         §§goto(addr004c);
      }
      
      public function set dynaSwfName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._dynaSwfName = param1;
         }
      }
   }
}

