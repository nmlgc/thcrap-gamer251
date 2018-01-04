#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W�P�@VS�얲
#	�ꏊ�F�_��
#	�X�e�[�W�^�C�g��
#	   �u������߂�͏o���Ȃ��v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,reimu,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 1P�ォ��o��
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
"Reimu, long time no see.\",a11x2,0,0
,ImageDef,marisa,������_��3,0,0
Although I see you have some sort of dark aura\ninside you and that's kinda unsettling.\,a15x3,0,0
,ClearBalloon,marisa


,SetFocus,reimu		,#�������L�������w��
,ImageDef,reimu,�얲_��1,0,0
,th145_Show,reimu,-1280	,#�얲�t�F�C�X�\���J�n
"That mysterious aura you say is\n actually an ""urban legend"" inside of me\",a15x3,0,0
,ImageDef,reimu,�얲_�G2,0,0
"Besides that, where were you all this time?\",a15x3,0,0
,ClearBalloon,reimu


#�Љ�J�b�g�\���@�얲�́u�얲_�G2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# ********************************************
# ********************************************

,SetFocus,marisa,
,ImageDef,marisa,������_��1,0,0
"Well, I was training myself\n secretly.\",a11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu,
,ImageDef,reimu,�얲_�f1,0,0
"I see...\",c11x2,0,0
,ImageDef,reimu,�얲_��2,0,0
"You do know that everybody \nforgot who you are, do you?\",a11x2,0,0
,ImageDef,reimu,�얲_�f1,0,0
"I wonder if you're aware of all the stuff that\nhappened while you were gone.\",a15x3,0,0
,ClearBalloon,reimu

,SetFocus,marisa,
,ImageDef,marisa,������_��1,0,0
"Yes I do. I was watching you all this\ntime from the shadows.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,reimu,
,ImageDef,reimu,�얲_�{1,0,0
"Woah, you sound like a stalker.\",a11x2,0,0
,ClearBalloon,reimu

,SetFocus,marisa,
,ImageDef,marisa,������_��2,0,0
"Easy there, no need to be upset.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,reimu,
,ImageDef,reimu,�얲_��1,0,0
"Do you want to behold the power I have\nobtained thanks to the occult orbs?\",a15x3,0,0
,ClearBalloon,reimu

,SetFocus,marisa,
,ImageDef,marisa,������_��1,0,0
"You bet! I'll also show you my\nnewly enhanced powers!\",a15x3,0,0
,ClearBalloon,marisa


,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End

# -----------------
# �퓬���ɉ�b������܂��i�X�y���J�[�h��g�����キ�炢���ȁj
#
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_��1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,#�������L�������w��
"Come on, Reimu I know you can do better.\",a15x3,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
"Now, I'll show my urban legend.\",a15x3,0,0
,ClearBalloon,reimu


#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,reimu,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::�΍ĊJ����

,End


# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
"I thought you could\nwithstand my Urban Legend.\",a11x2,0,0
,ClearBalloon,reimu



,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
"Well, It seems to me you're too dependant on the\nUrban Legend. Maybe you should train...\",a15x3,0,0
,ImageDef,marisa,������_��2,0,0
your own combat skills.\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
"You see, nowadays it's very common to \nrely on the Urban Legnds...\",a15x3,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
"Well, it's time for me to\ngo to another place.\",a15x3,0,0
,ClearBalloon,marisa


,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"



,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return