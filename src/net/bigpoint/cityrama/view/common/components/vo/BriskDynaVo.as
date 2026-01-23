package net.bigpoint.cityrama.view.common.components.vo
{
   public class BriskDynaVo
   {
      
      public static const LIB_QUEST:String = "gui_popups_questPopup";
      
      public static const LIB_RESIDENTIAL_NEW:String = "gui_popups_residentialPopupNEW";
      
      public static const LIB_MINILAYER:String = "gui_popups_miniLayer";
      
      public static const LIB_FIELD_INFOLAYER:String = "gui_infield_gui_infolayer";
      
      public static const LIB_SMALL_GOOD_ICONS:String = "gui_popups_smallGoodIcons";
      
      private var _dynaSwfName:String;
      
      private var _dynaLibName:String;
      
      private var _dynaBmpName:String;
      
      public function BriskDynaVo(param1:String, param2:String, param3:String = "")
      {
         super();
         this._dynaSwfName = param3;
         this._dynaLibName = param1;
         this._dynaBmpName = param2;
      }
      
      public function get dynaBmpName() : String
      {
         return this._dynaBmpName;
      }
      
      public function set dynaBmpName(param1:String) : void
      {
         this._dynaBmpName = param1;
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         this._dynaLibName = param1;
      }
      
      public function get dynaSwfName() : String
      {
         if(this._dynaSwfName == "")
         {
            return this._dynaLibName;
         }
         return this._dynaSwfName;
      }
      
      public function set dynaSwfName(param1:String) : void
      {
         this._dynaSwfName = param1;
      }
   }
}

